#include "handlers.s"

.text
.code64
.intel_syntax noprefix

.macro generate_reloc_code fn_name
    \fn_name\(_reloc):
        .rept 16
        nop
        .endr
.endm

.macro call_with_return fn_name
    push rax
    call \fn_name
    test eax, eax
    jnz _direct_ret
    pop rax
.endm


.macro call_with_param1_override fn_name
    mov rdi, rax
    pop rax
.endm


.macro jmp_back offset
    jmpq [rip + hypercall_info + \offset]
.endm


/* simple trampoline: calls the C function; executes the original instr and jumps back */
.macro __def_tramp fn_name call_fn offset
    .align 8
    \fn_name\(_trampoline):
        call \call_fn
        generate_reloc_code \fn_name
        jmp_back \offset
.endm

.macro __def_tramp_pre_callback pre_callback fn_name call_fn offset
    .align 8
    \fn_name\(_trampoline):
        call \pre_callback
        call \call_fn
        generate_reloc_code \fn_name
        jmp_back \offset
.endm

.macro def_tramp fn_name offset
    __def_tramp \fn_name \fn_name \offset
.endm

.macro def_tramp_pre_callback pre_callback fn_name offset
    __def_tramp_pre_callback \pre_callback \fn_name \fn_name \offset
.endm


/*
 * when two functions with different names have the same implementation
 * we need 2 trampolines, but both call the same C function
 */
.macro def_tramp_fn fn_name call_fn offset
    __def_tramp \fn_name \call_fn \offset
.endm

.macro def_tramp_fn_pre_callback pre_callback fn_name call_fn offset
    __def_tramp_pre_callback \pre_callback \fn_name \call_fn \offset
.endm

.macro def_tramp_fn_hijack fn_name hijack_fn_name call_fn offset
    __def_tramp \fn_name\(_)\hijack_fn_name \call_fn \offset
.endm

/* expects hvmi to tell it to just return */
.macro __def_tramp_skip fn_name call_fn offset
    .align 8
    \fn_name\(_trampoline):
        call_with_return \call_fn
        generate_reloc_code \fn_name
        jmp_back \offset
.endm


.macro def_tramp_skip fn_name offset
    __def_tramp_skip \fn_name \fn_name \offset
.endm


.macro def_tramp_skip_fn fn_name call_fn offset
    __def_tramp_skip \fn_name \call_fn \offset
.endm


/* `reg` will be replaced with whatever the introcore returns */
.macro def_tramp_param_override reg fn_name offset
    .align 8
    \fn_name\(_trampoline):
        push rax
        call \fn_name
        mov \reg, rax
        pop rax
        generate_reloc_code \fn_name
        jmp_back \offset
.endm


.macro __def_tramp_ret fn_name call_fn saved_param_count offset
    .align 8
    \fn_name\(_trampoline):
        .rept \saved_param_count + 1
        push rsp
        subq [rsp], 0x08
        .endr

        call \(pre_)\call_fn

        cmpq [rsp], 0
        jg \fn_name\(_skip)

        push rax
        push rax
        lea rax, [rip + \fn_name\(_return)]
        mov [rsp + 8], rax
        pop rax

        jmp \fn_name\(_asm_jmp)

        \fn_name\(_skip):
            add rsp, (\saved_param_count + 1) * 8

        \fn_name\(_asm_jmp):
            generate_reloc_code \fn_name
            jmp_back \offset

    \fn_name\(_return):
        call \call_fn
        add rsp, (\saved_param_count + 1) * 8
        ret
.endm


.macro def_tramp_ret fn_name saved_param_count offset
    __def_tramp_ret \fn_name \fn_name \saved_param_count \offset
.endm


.macro def_tramp_ret_fn fn_name call_fn saved_param_count offset
    __def_tramp_ret \fn_name \call_fn \saved_param_count \offset
.endm


_direct_ret:
    add rsp, 8
    ret

def_tramp                   commit_creds                            commit_creds_jmp

def_tramp                   arch_jump_label_transform               arch_jump_label_transform_jmp

def_tramp                   module_param_sysfs_setup                module_param_sysfs_setup_jmp
def_tramp                   module_param_sysfs_remove               module_param_sysfs_remove_jmp

def_tramp                   wake_up_new_task                        wake_up_new_task_jmp
def_tramp_skip              flush_old_exec                          flush_old_exec_jmp
def_tramp_skip              begin_new_exec                          begin_new_exec_jmp
def_tramp                   do_exit                                 do_exit_jmp

def_tramp_skip              arch_ptrace                             arch_ptrace_jmp
def_tramp_skip_fn           compat_arch_ptrace      arch_ptrace     compat_arch_ptrace_jmp
def_tramp_skip              process_vm_rw_core                      process_vm_rw_core_jmp

def_tramp                   __vma_link_rb                           __vma_link_rb_jmp
def_tramp                   change_protection                       change_protection_jmp

def_tramp_ret               vma_adjust                          3   vma_adjust_jmp
def_tramp_ret_fn            __vma_adjust            vma_adjust  3   __vma_adjust_jmp

def_tramp                   vma_rb_erase                            vma_rb_erase_jmp
def_tramp_fn                __vma_rb_erase          vma_rb_erase    __vma_rb_erase_jmp

def_tramp                   expand_downwards                        expand_downwards_jmp

def_tramp                   text_poke                               text_poke_jmp
def_tramp_fn                __text_poke             text_poke       __text_poke_jmp

def_tramp                   ftrace_write                            ftrace_write_jmp

def_tramp_pre_callback      store_regs              panic                                           panic_jmp
def_tramp_fn_pre_callback   store_regs              crash_kexec     panic                           crash_kexec_jmp

def_tramp                   __access_remote_vm                      __access_remote_vm_jmp

def_tramp_param_override    rdi complete_signal complete_signal_jmp

def_tramp_fn_hijack mprotect_fixup  vma_wants_writenotify   mprotect_fixup_vma_wants_writenotify    mprotect_fixup_vma_wants_writenotify_jmp
def_tramp_fn_hijack do_munmap       rb_erase                do_munmap_rb_erase                      do_munmap_rb_erase_jmp
def_tramp_fn_hijack vma_adjust      rb_erase                vma_adjust_rb_erase                     vma_adjust_rb_erase_jmp

def_tramp_ret               do_rmdir                            1   do_rmdir_jmp
def_tramp_ret               sys_sysfs                           3   sys_sysfs_jmp
def_tramp_ret               sys_read                            3   sys_read_jmp
def_tramp_ret               sys_getppid                         0   sys_getppid_jmp
def_tramp_ret               sys_getsid                          1   sys_getsid_jmp
def_tramp_ret               sys_getuid                          0   sys_getuid_jmp
def_tramp_ret               sys_geteuid                         0   sys_geteuid_jmp
def_tramp_ret               sys_shutdown                        2   sys_shutdown_jmp
def_tramp_ret               do_sysinfo                          1   do_sysinfo_jmp
def_tramp_ret               sys_capget                          2   sys_capget_jmp
def_tramp_ret               sys_capset                          2   sys_capset_jmp
def_tramp_ret               sys_statfs                          2   sys_statfs_jmp
def_tramp_ret               sys_fstatfs                         2   sys_fstatfs_jmp
def_tramp_ret               sys_setsid                          0   sys_setsid_jmp
def_tramp_ret               sys_seccomp                         3   sys_seccomp_jmp
def_tramp_ret               sys_tgkill                          3   sys_tgkill_jmp
def_tramp_ret               sys_tkill                           2   sys_tkill_jmp
def_tramp_ret               sys_ustat                           2   sys_ustat_jmp
def_tramp_ret               sys_poll                            3   sys_poll_jmp
def_tramp_ret               sys_sigprocmask                     3   sys_sigprocmask_jmp
def_tramp_ret               sys_getrlimit                       3   sys_getrlimit_jmp
def_tramp_ret               sys_umask                           1   sys_umask_jmp
def_tramp_ret               sys_ioctl                           3   sys_ioctl_jmp
def_tramp_ret               sys_brk                             1   sys_brk_jmp
def_tramp_ret               sys_gettimeofday                    2   sys_gettimeofday_jmp
def_tramp_ret               sys_setresuid                       3   sys_setresuid_jmp
def_tramp_ret               sys_chdir                           1   sys_chdir_jmp
def_tramp_ret               sys_alarm                           1   sys_alarm_jmp
def_tramp_ret               sys_ptrace                          4   sys_ptrace_jmp
def_tramp_ret               sys_time                            1   sys_time_jmp
def_tramp_ret               sys_chroot                          1   sys_chroot_jmp
def_tramp_ret               sys_kill                            2   sys_kill_jmp
def_tramp_ret               sys_fchdir                          1   sys_fchdir_jmp
def_tramp_ret               sys_chmod                           2   sys_chmod_jmp
def_tramp_ret               sys_chown                           3   sys_chown_jmp
def_tramp_ret               sys_fchmodat                        3   sys_fchmodat_jmp
def_tramp_ret               sys_fchmod                          2   sys_fchmod_jmp
def_tramp_ret               sys_fchown                          3   sys_fchown_jmp
def_tramp_ret               sys_fchownat                        5   sys_fchownat_jmp
def_tramp_ret               sys_rename                          2   sys_rename_jmp
def_tramp_ret               sys_renameat2                       5   sys_renameat2_jmp
def_tramp_ret               sys_renameat                        4   sys_renameat_jmp
def_tramp_ret               sys_mkdir                           2   sys_mkdir_jmp
def_tramp_ret               sys_creat                           2   sys_creat_jmp
def_tramp_ret               sys_openat                          4   sys_openat_jmp
def_tramp_ret               sys_link                            2   sys_link_jmp
def_tramp_ret               sys_unlink                          1   sys_unlink_jmp
def_tramp_ret               sys_unlinkat                        3   sys_unlinkat_jmp
def_tramp_ret               sys_linkat                          5   sys_linkat_jmp
def_tramp_ret               sys_symlink                         2   sys_symlink_jmp
def_tramp_ret               sys_symlinkat                       3   sys_symlinkat_jmp
def_tramp_ret               sys_access                          2   sys_access_jmp
def_tramp_ret               sys_newfstat                           2   sys_newfstat_jmp
def_tramp_ret               sys_newstat                            2   sys_newstat_jmp
def_tramp_ret               sys_newlstat                           2   sys_newlstat_jmp
def_tramp_ret               sys_newfstatat                      4   sys_newfstatat_jmp
def_tramp_ret               sys_pwrite64                        4   sys_pwrite64_jmp
def_tramp_ret               sys_pread64                         4   sys_pread64_jmp
def_tramp_ret               sys_mmap_pgoff                      6   sys_mmap_pgoff_jmp
def_tramp_ret               sys_prctl                           5   sys_prctl_jmp
def_tramp_ret               do_sigaction                        3   do_sigaction_jmp
def_tramp_ret               sys_select                          5   sys_select_jmp
def_tramp_ret               sys_clock_gettime                   2   sys_clock_gettime_jmp
def_tramp_ret               sys_perf_event_open                 5   sys_perf_event_open_jmp
def_tramp_ret               sys_newuname                        1   sys_newuname_jmp
def_tramp_ret               sys_reboot                          4   sys_reboot_jmp
def_tramp_ret               sys_init_module                     3   sys_init_module_jmp
def_tramp_ret               sys_finit_module                    3   sys_finit_module_jmp
def_tramp_ret               sys_delete_module                   2   sys_delete_module_jmp
def_tramp_ret               sys_write                           3   sys_write_jmp
def_tramp_ret               do_sys_open                         3   do_sys_open_jmp
def_tramp_ret               sys_accept                          3   sys_accept_jmp
def_tramp_ret               sys_accept4                         4   sys_accept4_jmp
def_tramp_ret               sys_bind                            3   sys_bind_jmp
def_tramp_ret               sys_connect                         3   sys_connect_jmp
def_tramp_ret               sys_sendto                          6   sys_sendto_jmp
def_tramp_ret               sys_sendmsg                         3   sys_sendmsg_jmp
def_tramp_ret               sys_recvfrom                        6   sys_recvfrom_jmp
def_tramp_ret               sys_recvmsg                         3   sys_recvmsg_jmp
def_tramp_ret               sys_close                           1   sys_close_jmp
def_tramp_ret               sys_dup                             1   sys_dup_jmp
def_tramp_ret               sys_dup2                            2   sys_dup2_jmp
def_tramp_ret               sys_wait4                           4   sys_wait4_jmp
def_tramp_ret               sys_waitid                          5   sys_waitid_jmp
def_tramp_ret               sys_sched_rr_get_interval           2   sys_sched_rr_get_interval_jmp
def_tramp_ret               sys_execve                          3   sys_execve_jmp
def_tramp_ret               sys_execveat                        5   sys_execveat_jmp
def_tramp_ret               sys_setuid16                        1   sys_setuid16_jmp
def_tramp_ret               sys_sched_yield                     0   sys_sched_yield_jmp
def_tramp_ret               sys_sendmmsg                        4   sys_sendmmsg_jmp
def_tramp_ret               sys_getpid                          0   sys_getpid_jmp
def_tramp_ret               sys_gettid                          0   sys_gettid_jmp
def_tramp_ret               sys_oldumount                       1   sys_oldumount_jmp
def_tramp_ret               sys_setgid16                        1   sys_setgid16_jmp
def_tramp_ret               sys_getcwd                          2   sys_getcwd_jmp
def_tramp_ret               sys_nanosleep                       2   sys_nanosleep_jmp
def_tramp_ret               sys_clock_nanosleep                 4   sys_clock_nanosleep_jmp
