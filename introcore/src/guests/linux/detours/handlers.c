/*
 * Copyright (c) 2020 Bitdefender
 * SPDX-License-Identifier: Apache-2.0
 */
#include "handlers.h"
#include "defs.h"
#include "common.h"

#include "hvmi.h"

struct inactive_task_frame {
    unsigned long r15;
    unsigned long r14;
    unsigned long r13;
    unsigned long r12;
    unsigned long bx;

    unsigned long bp;
    unsigned long ret_addr;
};


def_detour_vars(commit_creds);
def_detour_vars(arch_jump_label_transform);
def_detour_vars(module_param_sysfs_setup);
def_detour_vars(module_param_sysfs_remove);
def_detour_vars(wake_up_new_task);
def_detour_vars(flush_old_exec);
def_detour_vars(begin_new_exec);
def_detour_vars(do_exit);

def_detour_vars(do_rmdir);
def_detour_vars(sys_sysfs);
def_detour_vars(sys_read);
def_detour_vars(sys_getppid);
def_detour_vars(sys_getsid);
def_detour_vars(sys_getuid);
def_detour_vars(sys_geteuid);
def_detour_vars(sys_shutdown);
def_detour_vars(do_sysinfo);
def_detour_vars(sys_capget);
def_detour_vars(sys_capset);
def_detour_vars(sys_statfs);
def_detour_vars(sys_fstatfs);
def_detour_vars(sys_setsid);
def_detour_vars(sys_seccomp);
def_detour_vars(sys_tgkill);
def_detour_vars(sys_tkill);
def_detour_vars(sys_ustat);
def_detour_vars(sys_poll);
def_detour_vars(sys_sigprocmask);
def_detour_vars(sys_getrlimit);
def_detour_vars(sys_umask);
def_detour_vars(sys_ioctl);
def_detour_vars(sys_brk);
def_detour_vars(sys_gettimeofday);
def_detour_vars(sys_setresuid);
def_detour_vars(sys_chdir);
def_detour_vars(sys_alarm);
def_detour_vars(sys_ptrace);
def_detour_vars(sys_time);
def_detour_vars(sys_chroot);
def_detour_vars(sys_kill);
def_detour_vars(sys_fchdir);
def_detour_vars(sys_chmod);
def_detour_vars(sys_chown);
def_detour_vars(sys_fchmodat);
def_detour_vars(sys_fchmod);
def_detour_vars(sys_fchown);
def_detour_vars(sys_fchownat);
def_detour_vars(sys_rename);
def_detour_vars(sys_renameat2);
def_detour_vars(sys_renameat);
def_detour_vars(sys_mkdir);
def_detour_vars(sys_creat);
def_detour_vars(sys_openat);
def_detour_vars(sys_link);
def_detour_vars(sys_unlink);
def_detour_vars(sys_unlinkat);
def_detour_vars(sys_linkat);
def_detour_vars(sys_symlink);
def_detour_vars(sys_symlinkat);
def_detour_vars(sys_access);
def_detour_vars(sys_fstat);
def_detour_vars(sys_newstat);
def_detour_vars(sys_lstat);
def_detour_vars(sys_newfstatat);
def_detour_vars(sys_pwrite64);
def_detour_vars(sys_pread64);
def_detour_vars(sys_mmap_pgoff);
def_detour_vars(sys_prctl);
def_detour_vars(do_sigaction);
def_detour_vars(sys_select);
def_detour_vars(sys_clock_gettime);
def_detour_vars(sys_perf_event_open);
def_detour_vars(sys_newuname);
def_detour_vars(sys_reboot);
def_detour_vars(sys_init_module);
def_detour_vars(sys_delete_module);
def_detour_vars(sys_finit_module);
def_detour_vars(sys_write);
def_detour_vars(do_sys_open);
def_detour_vars(sys_accept);
def_detour_vars(sys_accept4);
def_detour_vars(sys_bind);
def_detour_vars(sys_connect);
def_detour_vars(sys_sendto);
def_detour_vars(sys_sendmsg);
def_detour_vars(sys_recvmsg);
def_detour_vars(sys_recvfrom);
def_detour_vars(sys_close);
def_detour_vars(sys_dup);
def_detour_vars(sys_dup2);
// def_detour_vars(sys_dup3);
def_detour_vars(sys_waitid);
def_detour_vars(sys_wait4);
def_detour_vars(sys_sched_rr_get_interval);
def_detour_vars(sys_execve);
def_detour_vars(sys_execveat);
def_detour_vars(sys_setuid16);
def_detour_vars(sys_sched_yield);
def_detour_vars(sys_sendmmsg);
def_detour_vars(sys_getpid);
def_detour_vars(sys_gettid);
def_detour_vars(sys_oldumount);
def_detour_vars(sys_setgid16);
def_detour_vars(sys_getcwd);
// def_detour_vars(sys_getgid16);
// def_detour_vars(sys_times);
// def_detour_vars(sys_mount);
// def_detour_vars(sys_getcwd);
// def_detour_vars(sys_faccessat);
// def_detour_vars(sys_flistxattr);
// def_detour_vars(sys_readlinkat);
// def_detour_vars(sys_getpgid);
// def_detour_vars(sys_flock);
// def_detour_vars(sys_readv);
// def_detour_vars(sys_writev);
// def_detour_vars(sys_readlink);
// def_detour_vars(sys_getpeername);
// def_detour_vars(sys_recv);
// def_detour_vars(sys_utime);
// def_detour_vars(sys_lseek);
// def_detour_vars(sys_listen);
// def_detour_vars(sys_socket);
// def_detour_vars(sys_vfork);
// def_detour_vars(sys_send);
// def_detour_vars(sys_setpgid);
// def_detour_vars(sys_setgroups16);
// def_detour_vars(sys_nanosleep);
// def_detour_vars(sys_semctl);
// def_detour_vars(sys_mlockall);
// def_detour_vars(sys_inotify_init);
// def_detour_vars(sys_fallocate);
// def_detour_vars(sys_unshare);
// def_detour_vars(sys_msync);
// def_detour_vars(sys_getresuid16);
// def_detour_vars(sys_add_key);
// def_detour_vars(sys_lsetxattr);
// def_detour_vars(sys_setreuid16);
// def_detour_vars(sys_getpgrp);
// def_detour_vars(sys_sched_get_priority_max);
// def_detour_vars(sys_pselect6);
// def_detour_vars(sys_setresgid16);
// def_detour_vars(sys_signalfd);
// def_detour_vars(sys_mprotect);
// def_detour_vars(sys_sched_getscheduler);
// def_detour_vars(sys_fcntl);
// def_detour_vars(sys_sigaltstack);
// def_detour_vars(sys_semop);
// def_detour_vars(sys_llistxattr);
// def_detour_vars(sys_epoll_pwait);
// def_detour_vars(sys_mlock);
// def_detour_vars(sys_pipe2);
// def_detour_vars(sys_semget);
// def_detour_vars(sys_epoll_wait);
// def_detour_vars(sys_keyctl);
// def_detour_vars(sys_getrandom);
// def_detour_vars(sys_open_by_handle_at);
// def_detour_vars(sys_munmap);
// def_detour_vars(sys_set_robust_list);
// def_detour_vars(sys_setpriority);
// def_detour_vars(sys_lgetxattr);
// def_detour_vars(sys_name_to_handle_at);
// def_detour_vars(sys_getsockname);
// def_detour_vars(sys_getrusage);
// def_detour_vars(sys_getgroups16);
// def_detour_vars(sys_prlimit64);
// def_detour_vars(sys_memfd_create);
// def_detour_vars(sys_signalfd4);
// def_detour_vars(sys_adjtimex);
// def_detour_vars(sys_getsockopt);
// def_detour_vars(sys_personality);
// def_detour_vars(sys_sched_setscheduler);
// def_detour_vars(sys_sched_getparam);
// def_detour_vars(sys_clock_nanosleep);
// def_detour_vars(sys_sched_get_priority_min);
// def_detour_vars(sys_sched_setaffinity);
// def_detour_vars(sys_remap_file_pages);
// def_detour_vars(sys_removexattr);
// def_detour_vars(sys_getresgid16);
// def_detour_vars(sys_setsockopt);
// def_detour_vars(sys_getdents);
// def_detour_vars(sys_io_destroy);
// def_detour_vars(sys_clock_getres);
// def_detour_vars(sys_shmctl);
// def_detour_vars(sys_setregid16);
// def_detour_vars(sys_setitimer);
// def_detour_vars(sys_utimensat);
// def_detour_vars(sys_inotify_add_watch);
// def_detour_vars(sys_msgrcv);
// def_detour_vars(sys_epoll_create);
// def_detour_vars(sys_getegid16);
// def_detour_vars(sys_socketpair);
// def_detour_vars(sys_rt_sigaction);
// def_detour_vars(sys_epoll_create1);
// def_detour_vars(sys_fsetxattr);
// def_detour_vars(sys_ppoll);
// def_detour_vars(sys_get_mempolicy);
// def_detour_vars(sys_rt_sigsuspend);
// def_detour_vars(sys_llseek);
// def_detour_vars(sys_old_readdir);
// def_detour_vars(sys_shmget);
// def_detour_vars(sys_mremap);
// def_detour_vars(sys_inotify_rm_watch);
// def_detour_vars(sys_madvise);
// def_detour_vars(sys_msgget);
// def_detour_vars(sys_epoll_ctl);
// def_detour_vars(sys_fgetxattr);
// def_detour_vars(sys_mknod);
// def_detour_vars(sys_shmat);
// def_detour_vars(sys_eventfd2);
// def_detour_vars(sys_getpriority);
// def_detour_vars(sys_inotify_init1);
// def_detour_vars(sys_io_setup);
// def_detour_vars(sys_ioprio_get);

def_detour_vars(arch_ptrace);
def_detour_vars(compat_arch_ptrace);
def_detour_vars(process_vm_rw_core);
def_detour_vars(__vma_link_rb);
def_detour_vars(change_protection);
def_detour_vars(vma_adjust);
def_detour_vars(__vma_adjust);
def_detour_vars(vma_rb_erase);
def_detour_vars(__vma_rb_erase);
def_detour_vars(expand_downwards);
def_detour_vars(complete_signal);
def_detour_vars(text_poke);
def_detour_vars(__text_poke);
def_detour_vars(ftrace_write);
def_detour_vars(panic);
def_detour_vars(crash_kexec);
def_detour_vars(__access_remote_vm);
def_detour_hijack_vars(mprotect_fixup, vma_wants_writenotify);
def_detour_hijack_vars(do_munmap, rb_erase);
def_detour_hijack_vars(vma_adjust, rb_erase);


LIX_HYPERCALL_PAGE hypercall_info __section(".detours") = {
    .DetoursCount = det_max_id,
    .Detours = {
        init_detour_field(commit_creds),
        init_detour_field(arch_jump_label_transform),
        init_detour_field(module_param_sysfs_setup),
        init_detour_field(module_param_sysfs_remove),
        init_detour_field(wake_up_new_task),
        init_detour_field(flush_old_exec),
        init_detour_field(begin_new_exec),
        init_detour_field(do_exit),
        init_detour_field(arch_ptrace),
        init_detour_field(compat_arch_ptrace),
        init_detour_field(process_vm_rw_core),
        init_detour_field(__vma_link_rb),
        init_detour_field(change_protection),
        init_detour_field(vma_adjust),
        init_detour_field(__vma_adjust),
        init_detour_field(vma_rb_erase),
        init_detour_field(__vma_rb_erase),
        init_detour_field(expand_downwards),
        init_detour_field(complete_signal),
        init_detour_field(text_poke),
        init_detour_field(__text_poke),
        init_detour_field(ftrace_write),
        init_detour_field(panic),
        init_detour_field(crash_kexec),
        init_detour_field(__access_remote_vm),
        init_detour_hijack_field(mprotect_fixup, vma_wants_writenotify),
        init_detour_hijack_field(do_munmap, rb_erase),
        init_detour_hijack_field(vma_adjust, rb_erase),

        init_detour_field(do_rmdir),
        init_detour_field(sys_sysfs),
        init_detour_field(sys_read),
        init_detour_field(sys_getppid),
        init_detour_field(sys_getsid),
        init_detour_field(sys_getuid),
        init_detour_field(sys_geteuid),
        init_detour_field(sys_shutdown),
        init_detour_field(do_sysinfo),
        init_detour_field(sys_capget),
        init_detour_field(sys_capset),
        init_detour_field(sys_statfs),
        init_detour_field(sys_fstatfs),
        init_detour_field(sys_setsid),
        init_detour_field(sys_seccomp),
        init_detour_field(sys_tgkill),
        init_detour_field(sys_tkill),
        init_detour_field(sys_ustat),
        init_detour_field(sys_poll),
        init_detour_field(sys_sigprocmask),
        init_detour_field(sys_getrlimit),
        init_detour_field(sys_umask),
        init_detour_field(sys_ioctl),
        init_detour_field(sys_brk),
        init_detour_field(sys_gettimeofday),
        init_detour_field(sys_setresuid),
        init_detour_field(sys_chdir),
        init_detour_field(sys_alarm),
        init_detour_field(sys_ptrace),
        init_detour_field(sys_time),
        init_detour_field(sys_chroot),
        init_detour_field(sys_kill),
        init_detour_field(sys_fchdir),
        init_detour_field(sys_chmod),
        init_detour_field(sys_chown),
        init_detour_field(sys_fchmodat),
        init_detour_field(sys_fchmod),
        init_detour_field(sys_fchown),
        init_detour_field(sys_fchownat),
        init_detour_field(sys_rename),
        init_detour_field(sys_renameat2),
        init_detour_field(sys_renameat),
        init_detour_field(sys_mkdir),
        init_detour_field(sys_creat),
        init_detour_field(sys_openat),
        init_detour_field(sys_link),
        init_detour_field(sys_unlink),
        init_detour_field(sys_unlinkat),
        init_detour_field(sys_linkat),
        init_detour_field(sys_symlink),
        init_detour_field(sys_symlinkat),
        init_detour_field(sys_access),
        init_detour_field(sys_fstat),
        init_detour_field(sys_newstat),
        init_detour_field(sys_lstat),
        init_detour_field(sys_newfstatat),
        init_detour_field(sys_pwrite64),
        init_detour_field(sys_pread64),
        init_detour_field(sys_mmap_pgoff),
        init_detour_field(sys_prctl),
        init_detour_field(do_sigaction),
        init_detour_field(sys_select),
        init_detour_field(sys_clock_gettime),
        init_detour_field(sys_perf_event_open),
        init_detour_field(sys_newuname),
        init_detour_field(sys_reboot),
        init_detour_field(sys_init_module),
        init_detour_field(sys_finit_module),
        init_detour_field(sys_delete_module),
        init_detour_field(sys_write),
        init_detour_field(do_sys_open),
        init_detour_field(sys_accept),
        init_detour_field(sys_accept4),
        init_detour_field(sys_bind),
        init_detour_field(sys_connect),
        init_detour_field(sys_sendto),
        init_detour_field(sys_sendmsg),
        init_detour_field(sys_recvfrom),
        init_detour_field(sys_recvmsg),
        init_detour_field(sys_close),
        init_detour_field(sys_dup),
        init_detour_field(sys_dup2),
        // init_detour_field(sys_dup3),
        init_detour_field(sys_wait4),
        init_detour_field(sys_waitid),
        init_detour_field(sys_sched_rr_get_interval),
        init_detour_field(sys_execve),
        init_detour_field(sys_execveat),
        init_detour_field(sys_setuid16),
        init_detour_field(sys_sched_yield),
        init_detour_field(sys_sendmmsg),
        init_detour_field(sys_getpid),
        init_detour_field(sys_gettid),
        init_detour_field(sys_oldumount),
        init_detour_field(sys_setgid16),
        init_detour_field(sys_getcwd),
        // init_detour_field(sys_getgid16),
        // init_detour_field(sys_times),
        // init_detour_field(sys_mount),
        // init_detour_field(sys_getcwd),
        // init_detour_field(sys_faccessat),
        // init_detour_field(sys_flistxattr),
        // init_detour_field(sys_readlinkat),
        // init_detour_field(sys_getpgid),
        // init_detour_field(sys_flock),
        // init_detour_field(sys_readv),
        // init_detour_field(sys_writev),
        // init_detour_field(sys_readlink),
        // init_detour_field(sys_getpeername),
        // init_detour_field(sys_recv),
        // init_detour_field(sys_utime),
        // init_detour_field(sys_lseek),
        // init_detour_field(sys_listen),
        // init_detour_field(sys_socket),
        // init_detour_field(sys_vfork),
        // init_detour_field(sys_send),
        // init_detour_field(sys_setpgid),
        // init_detour_field(sys_setgroups16),
        // init_detour_field(sys_nanosleep),
        // init_detour_field(sys_semctl),
        // init_detour_field(sys_mlockall),
        // init_detour_field(sys_inotify_init),
        // init_detour_field(sys_fallocate),
        // init_detour_field(sys_unshare),
        // init_detour_field(sys_msync),
        // init_detour_field(sys_getresuid16),
        // init_detour_field(sys_add_key),
        // init_detour_field(sys_lsetxattr),
        // init_detour_field(sys_setreuid16),
        // init_detour_field(sys_getpgrp),
        // init_detour_field(sys_sched_get_priority_max),
        // init_detour_field(sys_pselect6),
        // init_detour_field(sys_setresgid16),
        // init_detour_field(sys_signalfd),
        // init_detour_field(sys_mprotect),
        // init_detour_field(sys_sched_getscheduler),
        // init_detour_field(sys_fcntl),
        // init_detour_field(sys_sigaltstack),
        // init_detour_field(sys_semop),
        // init_detour_field(sys_llistxattr),
        // init_detour_field(sys_epoll_pwait),
        // init_detour_field(sys_mlock),
        // init_detour_field(sys_pipe2),
        // init_detour_field(sys_semget),
        // init_detour_field(sys_epoll_wait),
        // init_detour_field(sys_keyctl),
        // init_detour_field(sys_getrandom),
        // init_detour_field(sys_open_by_handle_at),
        // init_detour_field(sys_munmap),
        // init_detour_field(sys_set_robust_list),
        // init_detour_field(sys_setpriority),
        // init_detour_field(sys_lgetxattr),
        // init_detour_field(sys_name_to_handle_at),
        // init_detour_field(sys_getsockname),
        // init_detour_field(sys_getrusage),
        // init_detour_field(sys_getgroups16),
        // init_detour_field(sys_prlimit64),
        // init_detour_field(sys_memfd_create),
        // init_detour_field(sys_signalfd4),
        // init_detour_field(sys_adjtimex),
        // init_detour_field(sys_getsockopt),
        // init_detour_field(sys_personality),
        // init_detour_field(sys_sched_setscheduler),
        // init_detour_field(sys_sched_getparam),
        // init_detour_field(sys_clock_nanosleep),
        // init_detour_field(sys_sched_get_priority_min),
        // init_detour_field(sys_sched_setaffinity),
        // init_detour_field(sys_remap_file_pages),
        // init_detour_field(sys_removexattr),
        // init_detour_field(sys_getresgid16),
        // init_detour_field(sys_setsockopt),
        // init_detour_field(sys_getdents),
        // init_detour_field(sys_io_destroy),
        // init_detour_field(sys_clock_getres),
        // init_detour_field(sys_shmctl),
        // init_detour_field(sys_setregid16),
        // init_detour_field(sys_setitimer),
        // init_detour_field(sys_utimensat),
        // init_detour_field(sys_inotify_add_watch),
        // init_detour_field(sys_msgrcv),
        // init_detour_field(sys_epoll_create),
        // init_detour_field(sys_getegid16),
        // init_detour_field(sys_socketpair),
        // init_detour_field(sys_rt_sigaction),
        // init_detour_field(sys_epoll_create1),
        // init_detour_field(sys_fsetxattr),
        // init_detour_field(sys_ppoll),
        // init_detour_field(sys_get_mempolicy),
        // init_detour_field(sys_rt_sigsuspend),
        // init_detour_field(sys_llseek),
        // init_detour_field(sys_old_readdir),
        // init_detour_field(sys_shmget),
        // init_detour_field(sys_mremap),
        // init_detour_field(sys_inotify_rm_watch),
        // init_detour_field(sys_madvise),
        // init_detour_field(sys_msgget),
        // init_detour_field(sys_epoll_ctl),
        // init_detour_field(sys_fgetxattr),
        // init_detour_field(sys_mknod),
        // init_detour_field(sys_shmat),
        // init_detour_field(sys_eventfd2),
        // init_detour_field(sys_getpriority),
        // init_detour_field(sys_inotify_init1),
        // init_detour_field(sys_io_setup),
        // init_detour_field(sys_ioprio_get),
    },
};

//
// Helper functions
//


#define current_task \
({                                                                                                              \
    void *ret;                                                                                                  \
    asm volatile("mov %[ret], gs:[%[value]]"                                                                    \
                 : [ret] "=r" (ret)                                                                             \
                 : [value] "rm" ((unsigned long long)hypercall_info.OsSpecificFields.CurrentTaskOffset) : );    \
    (void *)ret;                                                                                                \
})


#define current_cpu \
({                                                                                                              \
    uint32_t ret;                                                                                               \
    asm volatile("mov %[ret], gs:[%[value]]"                                                                    \
                 : [ret] "=r" (ret)                                                                             \
                 : [value] "rm" ((unsigned long long)hypercall_info.OsSpecificFields.CurrentCpuOffset) : );     \
    ret;                                                                                                        \
})


__default_fn_attr
static bool is_detour_enabled(DETOUR_ID id)
{
    return  (hypercall_info.Detours[id].EnableOptions == -1ULL)
        || ((hypercall_info.Detours[id].EnableOptions & hypercall_info.ProtectionOptions) != 0);
}


__default_fn_attr
static size_t vmcall(DETOUR_ID id)
{
    if (!is_detour_enabled(id)) {
        return 0;
    }

    size_t _out_value = 34, _out_param = 0;

    asm volatile("vmcall" : "+S" (_out_param), "+a"(_out_value) : "D"(24), "b"(id): );

    // Used to clean the stack of the interrupted task
    volatile struct inactive_task_frame _reserved = { 0 };
    (void)(_reserved);

    return _out_param;
}


__default_fn_attr
char *d_path(void *path_struct)
{
    void *path = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));

    return hypercall_info.OsSpecificFields.DPathFnPtr(path_struct, path, PAGE_SIZE);
}


__default_fn_attr
void *_memcpy (void *dest, const void *src, size_t len)
{
    char *d = dest;
    const char *s = src;

    while (len--)
    {
        *d++ = *s++;
    }

    return dest;
}


__default_fn_attr
void store_regs(void)
{
    IG_ARCH_REGS regs;

    regs.Rax = __read_reg("rax");
    regs.Rcx = __read_reg("rcx");
    regs.Rdx = __read_reg("rdx");
    regs.Rbx = __read_reg("rbx");
    regs.Rsp = __read_reg("rsp");
    regs.Rbp = __read_reg("rbp");
    regs.Rsi = __read_reg("rsi");
    regs.Rdi = __read_reg("rdi");
    regs.R8 = __read_reg("r8");
    regs.R9 = __read_reg("r9");
    regs.R10 = __read_reg("r10");
    regs.R11 = __read_reg("r11");
    regs.R12 = __read_reg("r12");
    regs.R13 = __read_reg("r13");
    regs.R14 = __read_reg("r14");
    regs.R15 = __read_reg("r15");

    void *dst = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
    _memcpy(dst, &regs, sizeof(regs));
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void commit_creds (long *creds)
{
    void *current = current_task;

    if (!hypercall_info.OsSpecificFields.Info.CredAltered) {
        uint32_t *in_execve = (uint32_t *)((unsigned long)(current) + hypercall_info.OsSpecificFields.Task.InExecve);

        if ((*in_execve & BIT(hypercall_info.OsSpecificFields.Task.InExecveBit))) {
            return;
        }
    }

    vmcall_2(det_commit_creds, current, creds);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void module_param_sysfs_setup(void *module)
{
    vmcall_1(det_module_param_sysfs_setup, module);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void module_param_sysfs_remove(void *module)
{
    vmcall_1(det_module_param_sysfs_remove, module);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void wake_up_new_task(long task)
{
    vmcall_2(det_wake_up_new_task, current_task, task);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
int flush_old_exec(long binprm)
{
    unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
    unsigned long path_struct = 0;

    if (!file) {
        goto _vmcall;
    }

    path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;

_vmcall:
    return vmcall_3(det_flush_old_exec, current_task, binprm, d_path((void *)path_struct));
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
int begin_new_exec(long binprm)
{
    unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
    unsigned long path_struct = 0;

    if (!file) {
        goto _vmcall;
    }

    path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;

_vmcall:
    return vmcall_3(det_begin_new_exec, current_task, binprm, d_path((void *)path_struct));
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void do_exit(long code)
{
    vmcall_2(det_do_exit, current_task, code);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
long arch_ptrace(long child, long request)
{
    if (request == PTRACE_POKEDATA
        || request == PTRACE_POKETEXT
        || request == PTRACE_SETFPREGS
        || request == PTRACE_SETFPXREGS
        || request == PTRACE_SETREGS)
    {
        return vmcall_2(det_arch_ptrace, child, request);
    }

    return 0;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
size_t process_vm_rw_core(int pid, void *iter, void *rvec, unsigned long riovcnt,
    unsigned long flags, int vm_write)
{
    if (!vm_write) {
        return 0;
    }

    return vmcall_2(det_process_vm_rw_core, current_task, pid);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void __vma_link_rb(void *mm, void *vma, void **rb_link, void *rb_parent)
{
    long mm_flags = *(long *)((long)(mm) + hypercall_info.OsSpecificFields.Mm.FlagsOffset);

    if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
        return;
    }

    long file = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FileOffset);
    if (file) {
        return;
    }

    long vm_flags = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
    if (!(vm_flags & VM_EXEC)) {
        return;
    }

    vmcall_2(det___vma_link_rb, vma, mm);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void change_protection(long vma, unsigned long start, unsigned long end,
    unsigned long newprot, int dirty_accountable, int prot_numa)
{
    long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
    if (file) {
        return;
    }

    long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
    long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);

    if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
        return;
    }

    long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);

    if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
        || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {

        // Either we protected it and now the X bit will be removed, or we didn't and now the X bit will be set
        vmcall_2(det_change_protection, vma, mm);
    }
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_vma_adjust(long vma, unsigned long start, unsigned long end,
    unsigned long pgoff, void *insert, void *expand,
    long *skip_call, long *saved_vma, long *next, long *prev)
{
    *skip_call = 1;

    long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
    if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
        return;
    }

    *saved_vma = vma;
    *next = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmNextOffset);
    *prev = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmPrevOffset);
    *skip_call = 0;

    return;
}


__default_fn_attr
void vma_adjust(long _vma, unsigned long _start, unsigned long _end,
    unsigned long _pgoff, void *_insert, void *_expand,
    long *_skip_call, long saved_vma, long next, long prev)
{
    long svma = saved_vma;
    long mm = *(long *)(saved_vma + hypercall_info.OsSpecificFields.Vma.MmOffset);

    vmcall_4(det_vma_adjust, svma, mm, next, prev);
    vmcall_4(det___vma_adjust, svma, mm, next, prev);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void vma_rb_erase(long vma, void *root)
{
    long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
    if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
        return;
    }

    vmcall_2(det_vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
    vmcall_2(det___vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void expand_downwards(long vma, unsigned long address)
{
    long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
    if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
        return;
    }

    vmcall_3(det_expand_downwards, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset), address);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
int complete_signal(int sig, void *task, enum pid_type type)
{
    if (sig != SIGQUIT
        && sig != SIGILL
        && sig != SIGIOT
        && sig != SIGBUS
        && sig != SIGFPE
        && sig != SIGSEGV) {

        return sig;
    }

    int new_sig = vmcall_3(det_complete_signal, task, sig, type);
    return new_sig ? new_sig : sig;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void text_poke(void *addr, const void *opcode, size_t len)
{
    vmcall_3(det_text_poke, addr, opcode, len);
    vmcall_3(det___text_poke, addr, opcode, len);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void ftrace_write(unsigned long ip, const char *val, int size)
{
    vmcall_3(det_ftrace_write, ip, val, size);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void panic(const char *fmt)
{
    vmcall(det_panic);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void arch_jump_label_transform(void *entry, enum jump_label_type type)
{
    vmcall_2(det_arch_jump_label_transform, entry, type);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void __access_remote_vm(void *task, void *mm, unsigned long addr,
    void *buf, int len, unsigned int gup_flags)
{
    if ((gup_flags & 1) == 0) {
        return;
    }

    vmcall_5(det___access_remote_vm, mm, addr, buf, len, gup_flags);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void do_munmap_rb_erase(unsigned long vma_vm_rb, unsigned long mm_mm_rb)
{
    unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
    unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
    long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);

    if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
        return;
    }

    vmcall_2(det_do_munmap_rb_erase, vma, mm);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void vma_adjust_rb_erase(unsigned long vma_vm_rb, unsigned long mm_mm_rb)
{
    unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
    unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
    long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);

    if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
        return;
    }

    vmcall_2(det_vma_adjust_rb_erase, vma, mm);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void mprotect_fixup_vma_wants_writenotify(unsigned long vma)
{
    long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
    if (file) {
        return;
    }

    long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
    long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);

    if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
        return;
    }

    long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);

    if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
        || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {

        // Either we protected it and now the X bit will be removed, or we didn't and now the X bit will be set
        vmcall_2(det_mprotect_fixup_vma_wants_writenotify, vma, mm);
    }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_do_rmdir(int dfd, char *pathname,int a,int b,int c,int d,long *skip_call,char** save_pathname)
{
    *skip_call=0;
    *save_pathname=pathname;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void do_rmdir(int dfd, char *pathname,int a,int b,int c,int d,long *skip_call,char* save_pathname)
{
    long save_rax = __read_reg("rax");
    vmcall_3(det_do_rmdir, current_task, save_pathname,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_sysfs(int option,unsigned long arg1, unsigned long arg2,int a,int b,int c,long *skip_call,char *save_option,long *save_arg1,long *save_arg2)
{
    *skip_call=0;
    *save_option=option;
    *save_arg1=arg1;
    *save_arg2=arg2;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_sysfs(int option,unsigned long arg1, unsigned long arg2,int a,int b,int c,long *skip_call,char *save_option,long *save_arg1,long *save_arg2)
{
    long x = __read_reg("rax");
	vmcall_5(det_sys_sysfs,current_task,save_option,save_arg1,save_arg2,x);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_read(unsigned int fd, char * buf, int count,int a,int b,int c,long *skip_call,unsigned int save_fd, char * save_buf, int save_count)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_read,current_task,save_fd, save_buf, save_count,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_read(unsigned int fd, char * buf, int count,int a,int b,int c,long *skip_call,unsigned int* save_fd, char ** save_buf, int* save_count)
{
    *skip_call=0;
    *save_fd=fd;
    *save_buf=buf;
    *save_count=count;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_getppid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_2(det_sys_getppid,current_task,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_getppid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    *skip_call=0;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_getsid(int pid,int b,int c,int d,int e,int f,long *skip_call,int save_pid)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_getsid,current_task,save_pid,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_getsid(int pid,int b,int c,int d,int e,int f,long *skip_call,int *save_pid)
{
    *skip_call=0;
    *save_pid=pid;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_getuid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_2(det_sys_getuid,current_task,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_getuid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    *skip_call=0;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_geteuid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_2(det_sys_geteuid,current_task,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_geteuid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    *skip_call=0;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_shutdown(int a,int b,int c,int d,int e,int f,long *skip_call,int save_a,int save_b)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_shutdown,current_task,save_a,save_b,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_shutdown(int a,int b,int c,int d,int e,int f,long *skip_call,int *save_a,int *save_b)
{
    *skip_call=0;
    *save_a=a;
    *save_b=b;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void do_sysinfo(long *a,int b,int c,int d,int e,int f,long *skip_call,int *save_a)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_do_sysinfo,current_task,save_a,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_do_sysinfo(long *a,int b,int c,int d,int e,int f,long *skip_call,int **save_a)
{
    *skip_call=0;
    *save_a=a;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_capget(long *header,long *dataptr,int c,int d,int e,int f,long *skip_call,long *save_header,long *save_dataptr)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_capget,current_task,save_header,save_dataptr,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_capget(long *header,long *dataptr,int c,int d,int e,int f,long *skip_call,long **save_header,long **save_dataptr)
{
    *skip_call=0;
    *save_header=header;
    *save_dataptr=dataptr;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_capset(long *header,long *data,int c,int d,int e,int f,long *skip_call,long *save_header,long *save_data)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_capset,current_task,save_header,save_data,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_capset(long *header,long *data,int c,int d,int e,int f,long *skip_call,long **save_header,long **save_data)
{
    *skip_call=0;
    *save_header=header;
    *save_data=data;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_statfs(char* path,long *buf,int c,int d,int e,int f,long *skip_call,long *save_path,long *save_buf)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_statfs,current_task,save_path,save_buf,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_statfs(char* path,long *buf,int c,int d,int e,int f,long *skip_call,long **save_path,long **save_buf)
{
    *skip_call=0;
    *save_path=path;
    *save_buf=buf;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_fstatfs(unsigned int fd,long *buf,int c,int d,int e,int f,long *skip_call,unsigned int save_fd,long *save_buf)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_fstatfs,current_task,save_fd,save_buf,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_fstatfs(unsigned int fd,long *buf,int c,int d,int e,int f,long *skip_call,unsigned int *save_fd,long **save_buf)
{
    *skip_call=0;
    *save_fd=fd;
    *save_buf=buf;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_setsid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_2(det_sys_setsid,current_task,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_setsid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    *skip_call=0;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_seccomp(unsigned int op, unsigned int flags,long *uargs,int d,int e,int f,long *skip_call,unsigned int save_op, unsigned int save_flags,void *save_uargs)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_seccomp,current_task,save_op,save_flags,save_uargs,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_seccomp(unsigned int op, unsigned int flags,long *uargs,int d,int e,int f,long *skip_call,unsigned int *save_op, unsigned int *save_flags,void **save_uargs)
{
    *skip_call=0;
    *save_op=op;
    *save_flags=flags;
    *save_uargs=uargs;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_tgkill(int tgid, int pid, int sig,int d,int e,int f,long *skip_call,int save_tgid, int save_pid, int save_sig)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_tgkill,current_task,save_tgid,save_pid,save_sig,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_tgkill(int tgid, int pid, int sig,int d,int e,int f,long *skip_call,int *save_tgid, int *save_pid, int *save_sig)
{
    *skip_call=0;
    *save_tgid=tgid;
    *save_pid=pid;
    *save_sig=sig;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_tkill(int pid, int sig,int c,int d,int e,int f,long *skip_call, int save_pid, int save_sig)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_tkill,current_task,save_pid,save_sig,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_tkill(int pid, int sig,int c,int d,int e,int f,long *skip_call,int *save_pid, int *save_sig)
{
    *skip_call=0;
    *save_pid=pid;
    *save_sig=sig;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_ustat(unsigned int dev,long *ubuf,int c,int d,int e,int f,long *skip_call,unsigned int save_dev, long *save_ubuf)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_ustat,current_task,save_dev,save_ubuf,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_ustat(unsigned int dev,long *ubuf,int c,int d,int e,int f,long *skip_call,unsigned int *save_dev, long **save_ubuf)
{
    *skip_call=0;
    *save_dev=dev;
    *save_ubuf=ubuf;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_poll(long *ufds, unsigned int nfds,int timeout,int d,int e,int f,long *skip_call,long *save_ufds, unsigned int save_nfds,int save_timeout)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_poll,current_task,save_ufds,save_nfds,save_timeout,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_poll(long *ufds, unsigned int nfds,int timeout,int d,int e,int f,long *skip_call,long **save_ufds, unsigned int *save_nfds,int *save_timeout)
{
    *skip_call=0;
    *save_ufds=ufds;
    *save_nfds=nfds;
    *save_nfds=timeout;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_sigprocmask(int how, long *set,long *oset,int d,int e,int f,long *skip_call,long *save_how, unsigned int save_set,int save_oset)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_sigprocmask,current_task,save_how,save_set,save_oset,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_sigprocmask(int how,long *set,long *oset,int d,int e,int f,long *skip_call,long **save_how, unsigned int *save_set,int *save_oset)
{
    *skip_call=0;
    *save_how=how;
    *save_set=set;
    *save_oset=oset;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_getrlimit(unsigned int resource,long *rlim,int c,int d,int e,int f,long *skip_call,unsigned int save_resource,long *save_rlim)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_getrlimit,current_task,save_resource,save_rlim,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_getrlimit(unsigned int resource,long *rlim,int c,int d,int e,int f,long *skip_call,unsigned int *save_resource,long **save_rlim)
{
    *skip_call=0;
    *save_resource=resource;
    *save_rlim=rlim;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_umask(int mask,int b,int c,int d,int e,int f,long *skip_call,int save_mask)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_getrlimit,current_task,save_mask,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_umask(int mask,int b,int c,int d,int e,int f,long *skip_call,int *save_mask)
{
    *skip_call=0;
    *save_mask=mask;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_ioctl(unsigned int fd, unsigned int cmd,unsigned long arg,int d,int e,int f,long *skip_call,unsigned int save_fd, unsigned int save_cmd,unsigned long save_arg)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_ioctl,current_task,save_fd,save_cmd,save_arg,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_ioctl(unsigned int fd, unsigned int cmd,unsigned long arg,int d,int e,int f,long *skip_call,unsigned int *save_fd, unsigned int *save_cmd,unsigned long *save_arg)
{
    *skip_call=0;
    *save_fd=fd;
    *save_cmd=cmd;
    *save_arg=arg;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_brk(unsigned long brk,int b,int c,int d,int e,int f,long *skip_call,unsigned long save_brk)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_brk,current_task,save_brk,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_brk(unsigned long brk,int b,int c,int d,int e,int f,long *skip_call,unsigned long *save_brk)
{
    *skip_call=0;
    *save_brk=brk;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_gettimeofday(long *tv,long *tz,int c,int d,int e,int f,long *skip_call,long *save_tv,long *save_tz)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_gettimeofday,current_task,save_tv,save_tz,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_gettimeofday(long *tv,long *tz,int c,int d,int e,int f,long *skip_call,long **save_tv,long **save_tz)
{
    *skip_call=0;
    *save_tv=tv;
    *save_tz=tz;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_setresuid(unsigned int ruid, unsigned int euid,unsigned int suid,int d,int e,int f,long *skip_call,unsigned int save_ruid, unsigned int save_euid,unsigned int save_suid)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_setresuid,current_task,save_ruid,save_euid,save_suid,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_setresuid(unsigned int ruid, unsigned int euid,unsigned int suid,int d,int e,int f,long *skip_call,unsigned int *save_ruid, unsigned int *save_euid,unsigned int *save_suid)
{
    *skip_call=0;
    *save_ruid=ruid;
    *save_euid=euid;
    *save_suid=suid;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_chdir(char *filename,int b,int c,int d,int e,int f,long *skip_call,char *save_filename)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_chdir,current_task,save_filename,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_chdir(char *filename,int b,int c,int d,int e,int f,long *skip_call,char **save_filename)
{
    *skip_call=0;
    *save_filename=filename;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_alarm(unsigned int seconds,int b,int c,int d,int e,int f,long *skip_call,unsigned int save_seconds)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_alarm,current_task,save_seconds,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_alarm(unsigned int seconds,int b,int c,int d,int e,int f,long *skip_call,unsigned int *save_seconds)
{
    *skip_call=0;
    *save_seconds=seconds;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_ptrace(long request, long pid, unsigned long addr,unsigned long data,int e,int f,long *skip_call,long save_request, long save_pid, unsigned long save_addr,unsigned long save_data)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_6(det_sys_ptrace,current_task,save_request,save_pid,save_addr,save_data,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_ptrace(long request, long pid, unsigned long addr,unsigned long data,int e,int f,long *skip_call,long *save_request, long *save_pid, unsigned long *save_addr,unsigned long *save_data)
{
    *skip_call=0;
    *save_request=request;
    *save_pid=pid;
    *save_addr=addr;
    *save_data=data;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_time(long *tloc,int b,int c,int d,int e,int f,long *skip_call,long *save_tloc)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_time,current_task,save_tloc,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_time(long *tloc,int b,int c,int d,int e,int f,long *skip_call,long **save_tloc)
{
    *skip_call=0;
    *save_tloc=tloc;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_chroot(char *filename,int b,int c,int d,int e,int f,long *skip_call,char *save_filename)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_chroot,current_task,save_filename,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_chroot(char *filename,int b,int c,int d,int e,int f,long *skip_call,char **save_filename)
{
    *skip_call=0;
    *save_filename=filename;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_kill(long pid, int sig,int c,int d,int e,int f,long *skip_call,long save_pid, int save_sig)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_kill,current_task,save_pid,save_sig,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_kill(long pid, int sig,int c,int d,int e,int f,long *skip_call,long *save_pid, int *save_sig)
{
    *skip_call=0;
    *save_pid=pid;
    *save_sig=sig;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_fchdir(unsigned int fd, int b,int c,int d,int e,int f,long *skip_call,unsigned int save_fd)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_fchdir,current_task,save_fd,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_fchdir(unsigned int fd, int b,int c,int d,int e,int f,long *skip_call,unsigned int *save_fd)
{
    *skip_call=0;
    *save_fd=fd;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_chmod(char *filename,long mode,int c,int d,int e,int f,long *skip_call,char *save_filename,long save_mode)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_chmod,current_task,save_filename,save_mode,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_chmod(char *filename,long mode,int c,int d,int e,int f,long *skip_call,char **save_filename,long *save_mode)
{
    *skip_call=0;
    *save_filename=filename;
    *save_mode=mode;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_chown(char *filename,unsigned int user,unsigned int group,int d,int e,int f,long *skip_call,char *save_filename,unsigned int save_user,unsigned int save_group)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_chown,current_task,save_filename,save_user,save_group,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_chown(char *filename,unsigned int user,unsigned int group,int d,int e,int f,long *skip_call,char **save_filename,unsigned int *save_user,unsigned int *save_group)
{
    *skip_call=0;
    *save_filename=filename;
    *save_user=user;
    *save_group=group;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_fchmodat(int dfd,char * filename,long mode,int d,int e,int f,long *skip_call,int save_dfd,char *save_filename,long save_mode)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_fchmodat,current_task,save_dfd,save_filename,save_mode,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_fchmodat(int dfd,char * filename,long mode,int d,int e,int f,long *skip_call,int *save_dfd,char **save_filename,long *save_mode)
{
    *skip_call=0;
    *save_dfd=dfd;
    *save_filename=filename;
    *save_mode=mode;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_fchmod(unsigned int fd,long mode,int c,int d,int e,int f,long *skip_call,unsigned int save_fd,long save_mode)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_fchmod,current_task,save_fd,save_mode,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_fchmod(unsigned int fd,long mode,int c,int d,int e,int f,long *skip_call,unsigned int *save_fd,long *save_mode)
{
    *skip_call=0;
    *save_fd=fd;
    *save_mode=mode;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_fchown(unsigned int fd,unsigned int user,unsigned int group,int d,int e,int f,long *skip_call,unsigned int save_fd,unsigned int save_user,unsigned int save_group)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_fchown,current_task,save_fd,save_user,save_group,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_fchown(unsigned int fd,unsigned int user,unsigned int group,int d,int e,int f,long *skip_call,unsigned int *save_fd,unsigned int *save_user,unsigned int *save_group)
{
    *skip_call=0;
    *save_fd=fd;
    *save_user=user;
    *save_group=group;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_fchownat(int dfd,char *filename,unsigned int user,unsigned int group, int flag,int f,long *skip_call,int save_dfd,char *save_filename,unsigned int save_user,unsigned int save_group, int save_flag)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_7(det_sys_fchownat,current_task,save_dfd,save_filename,save_user,save_group,save_flag,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_fchownat(int dfd,char *filename,unsigned int user,unsigned int group, int flag,int f,long *skip_call,int *save_dfd,char **save_filename,unsigned int *save_user,unsigned int *save_group, int *save_flag)
{
    *skip_call=0;
    *save_dfd=dfd;
    *save_filename=filename;
    *save_user=user;
    *save_group=group;
    *save_flag=flag;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_rename(char *oldname,char *newname,int c,int d,int e,int f,long *skip_call,char *save_oldname,char *save_newname)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_rename,current_task,save_oldname,save_newname,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_rename(char *oldname,char *newname,int c,int d,int e,int f,long *skip_call,char **save_oldname,char **save_newname)
{
    *skip_call=0;
    *save_oldname=oldname;
    *save_newname=newname;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_renameat2(int olddfd,char *oldname,int newdfd,char *newname,unsigned int flags,int f,long skip_call,int save_olddfd,char *save_oldname,int save_newdfd,char *save_newname,unsigned int save_flags)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_7(det_sys_renameat2,current_task,save_olddfd,save_oldname,save_newdfd,save_newname,save_flags,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_renameat2(int olddfd,char *oldname,int newdfd,char *newname,unsigned int flags,int f,long *skip_call,int *save_olddfd,char **save_oldname,int *save_newdfd,char **save_newname,unsigned int *save_flags)
{
    *skip_call=0;
    *save_olddfd=olddfd;
    *save_oldname=oldname;
    *save_newdfd=newdfd;
    *save_newname=newname;
    *save_flags=flags;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_renameat(int olddfd,char *oldname,int newdfd,char *newname,int e,int f,long skip_call,int save_olddfd,char *save_oldname,int save_newdfd,char *save_newname)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_6(det_sys_renameat,current_task,save_olddfd,save_oldname,save_newdfd,save_newname,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_renameat(int olddfd,char *oldname,int newdfd,char *newname,int e,int f,long *skip_call,int *save_olddfd,char **save_oldname,int *save_newdfd,char **save_newname)
{
    *skip_call=0;
    *save_olddfd=olddfd;
    *save_oldname=oldname;
    *save_newdfd=newdfd;
    *save_newname=newname;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_mkdir(char *pathname,long mode,int c,int d,int e,int f,long skip_call,char *save_pathname,long save_mode)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_mkdir,current_task,save_pathname,save_mode,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_mkdir(char *pathname,long mode,int c,int d,int e,int f,long *skip_call,char **save_pathname,long *save_mode)
{
    *skip_call=0;
    *save_pathname=pathname;
    *save_mode=mode;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_creat(char *pathname,long mode,int c,int d,int e,int f,long skip_call,char *save_pathname,long save_mode)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_creat,current_task,save_pathname,save_mode,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_creat(char *pathname,long mode,int c,int d,int e,int f,long *skip_call,char **save_pathname,long *save_mode)
{
    *skip_call=0;
    *save_pathname=pathname;
    *save_mode=mode;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_openat(int dfd,char *filename,int flags,long mode,int e,int f,long skip_call,int save_dfd,char *save_filename,int save_flags,long save_mode)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_6(det_sys_openat,current_task,save_dfd,save_filename,save_flags,save_mode,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_openat(int dfd,char *filename,int flags,long mode,int e,int f,long *skip_call,int *save_dfd,char **save_filename,int *save_flags,long *save_mode)
{
    *skip_call=0;
    *save_dfd=dfd;
    *save_filename=filename;
    *save_flags=flags;
    *save_mode=mode;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_link(char *oldname,char *newname,int c,int d,int e,int f,long skip_call,char *save_oldname,char *save_newname)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_link,current_task,save_oldname,save_newname,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_link(char *oldname,char *newname,int c,int d,int e,int f,long *skip_call,char **save_oldname,char **save_newname)
{
    *skip_call=0;
    *save_oldname=oldname;
    *save_newname=newname;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_unlink(char *pathname,int b,int c,int d,int e,int f,long skip_call,char *save_pathname)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_unlink,current_task,save_pathname,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_unlink(char *pathname,int b,int c,int d,int e,int f,long *skip_call,char **save_pathname)
{
    *skip_call=0;
    *save_pathname=pathname;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_unlinkat(int dfd,char *pathname,int flag,int d,int e,int f,long skip_call,int save_dfd,char *save_pathname,int save_flag)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_unlinkat,current_task,save_dfd,save_pathname,save_flag,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_unlinkat(int dfd,char *pathname,int flag,int d,int e,int f,long *skip_call,int *save_dfd,char **save_pathname,int *save_flag)
{
    *skip_call=0;
    *save_dfd=dfd;
    *save_pathname=pathname;
    *save_flag=flag;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_linkat(int olddfd,char *oldname,int newdfd,char *newname,unsigned int flags,int f,long skip_call,int save_olddfd,char *save_oldname,int save_newdfd,char *save_newname,unsigned int save_flags)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_7(det_sys_linkat,current_task,save_olddfd,save_oldname,save_newdfd,save_newname,save_flags,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_linkat(int olddfd,char *oldname,int newdfd,char *newname,unsigned int flags,int f,long *skip_call,int *save_olddfd,char **save_oldname,int *save_newdfd,char **save_newname,unsigned int *save_flags)
{
    *skip_call=0;
    *save_olddfd=olddfd;
    *save_oldname=oldname;
    *save_newdfd=newdfd;
    *save_newname=newname;
    *save_flags=flags;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_symlinkat(char *oldname,int newdfd,char *newname,int d,int e,int f,long skip_call,char *save_oldname,int save_newdfd,char *save_newname)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_symlinkat,current_task,save_oldname,save_newdfd,save_newname,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_symlinkat(char *oldname,int newdfd,char *newname,int d,int e,int f,long *skip_call,char **save_oldname,int *save_newdfd,char **save_newname)
{
    *skip_call=0;
    *save_oldname=oldname;
    *save_newdfd=newdfd;
    *save_newname=newname;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_symlink(char *old,char *new,int c,int d,int e,int f,long skip_call,char *save_old,char *save_new)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_symlink,current_task,save_old,save_new,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_symlink(char *old,char *new,int c,int d,int e,int f,long *skip_call,char **save_old,char **save_new)
{
    *skip_call=0;
    *save_old=old;
    *save_new=new;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_access(char *filename,long mode,int c,int d,int e,int f,long skip_call,char *save_filename,long save_mode)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_access,current_task,save_filename,save_mode,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_access(char *filename,long mode,int c,int d,int e,int f,long *skip_call,char **save_filename,long *save_mode)
{
    *skip_call=0;
    *save_filename=filename;
    *save_mode=mode;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_fstat(unsigned int fd,long *statbuf,int c,int d,int e,int f,long skip_call,unsigned int save_fd,long *save_statbuf)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_fstat,current_task,save_fd,save_statbuf,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_fstat(unsigned int fd,long *statbuf,int c,int d,int e,int f,long *skip_call,unsigned int *save_fd,long **save_statbuf)
{
    *skip_call=0;
    *save_fd=fd;
    *save_statbuf=statbuf;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_newstat(char *filename,long *statbuf,int c,int d,int e,int f,long skip_call,char *save_filename,long *save_statbuf)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_newstat,current_task,save_filename,save_statbuf,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_newstat(char *filename,long *statbuf,int c,int d,int e,int f,long *skip_call,char **save_filename,long **save_statbuf)
{
    *skip_call=0;
    *save_filename=filename;
    *save_statbuf=statbuf;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_lstat(char *filename,long *statbuf,int c,int d,int e,int f,long skip_call,char *save_filename,long *save_statbuf)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_lstat,current_task,save_filename,save_statbuf,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_lstat(char *filename,long *statbuf,int c,int d,int e,int f,long *skip_call,char **save_filename,long **save_statbuf)
{
    *skip_call=0;
    *save_filename=filename;
    *save_statbuf=statbuf;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_newfstatat(int dfd,char *filename,long *statbuf,int flag,int e,int f,
            long skip_call,int save_dfd,char *save_filename,long *save_statbuf,int save_flag)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_6(det_sys_newfstatat,current_task,save_dfd,save_filename,save_statbuf,save_flag,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_newfstatat(int dfd,char *filename,long *statbuf,int flag,int e,int f,
            long *skip_call,int *save_dfd,char **save_filename,long **save_statbuf,int *save_flag)
{
    *skip_call=0;
    *save_dfd=dfd;
    *save_filename=filename;
    *save_statbuf=statbuf;
    *save_flag=flag;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_pwrite64(unsigned int fd,char *buf,unsigned int count,long long pos,int e,int f,
            long skip_call,unsigned int save_fd,char *save_buf,unsigned int save_count,long long save_pos)
{
    
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_6(det_sys_pwrite64,current_task,save_fd,save_buf,save_count,save_pos,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_pwrite64(unsigned int fd,char *buf,unsigned int count,long long pos,int e,int f,
            long *skip_call,unsigned int *save_fd,char **save_buf,unsigned int *save_count,long long *save_pos)
{
    *skip_call=0;
    *save_fd=fd;
    *save_buf=buf;
    *save_count=count;
    *save_pos=pos;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_pread64(unsigned int fd,char *buf,unsigned int count,long long pos,int e,int f,
            long skip_call,unsigned int save_fd,char *save_buf,unsigned int save_count,long long save_pos)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_6(det_sys_pread64,current_task,save_fd,save_buf,save_count,save_pos,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_pread64(unsigned int fd,char *buf,unsigned int count,long long pos,int e,int f,
            long *skip_call,unsigned int *save_fd,char **save_buf,unsigned int *save_count,long long *save_pos)
{
    *skip_call=0;
    *save_fd=fd;
    *save_buf=buf;
    *save_count=count;
    *save_pos=pos;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_mmap_pgoff(unsigned long addr, unsigned long len,unsigned long prot, unsigned long flags,unsigned long fd, unsigned long pgoff,
                long skip_call,unsigned long save_addr, unsigned long save_len,unsigned long save_prot, unsigned long save_flags,unsigned long save_fd, unsigned long save_pgoff)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_8(det_sys_mmap_pgoff,current_task,save_addr,save_len,save_prot,save_flags,save_fd,save_pgoff,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_mmap_pgoff(unsigned long addr, unsigned long len,unsigned long prot, unsigned long flags,unsigned long fd, unsigned long pgoff,
                    long *skip_call,unsigned long *save_addr, unsigned long *save_len,unsigned long *save_prot, unsigned long *save_flags,unsigned long *save_fd, unsigned long *save_pgoff)
{
    *skip_call=0;
    *save_addr=addr;
    *save_len=len;
    *save_prot=prot;
    *save_flags=flags;
    *save_fd=fd;
    *save_pgoff=pgoff;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_prctl(int option, unsigned long arg2, unsigned long arg3,unsigned long arg4, unsigned long arg5,int f,
                long skip_call,int save_option, unsigned long save_arg2, unsigned long save_arg3,unsigned long save_arg4, unsigned long save_arg5)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_7(det_sys_prctl,current_task,save_option,save_arg2,save_arg3,save_arg4,save_arg5,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_prctl(int option, unsigned long arg2, unsigned long arg3,unsigned long arg4, unsigned long arg5,int f,
                long *skip_call,int *save_option, unsigned long *save_arg2, unsigned long *save_arg3,unsigned long *save_arg4, unsigned long *save_arg5)
{
    *skip_call=0;
    *save_option=option;
    *save_arg2=arg2;
    *save_arg3=arg3;
    *save_arg4=arg4;
    *save_arg5=arg5;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void do_sigaction(int a,long * b,long *c,int d,int e,int f,long skip_call,int save_a,long * save_b,long *save_c)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_do_sigaction,current_task,save_a,save_b,save_c,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_do_sigaction(int a,long * b,long *c,int d,int e,int f,long *skip_call,int *save_a,long ** save_b,long **save_c)
{
    *skip_call=0;
    *save_a=a;
    *save_b=b;
    *save_c=c;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_select(int n,long *inp,long *outp,long *exp,long *tvp,int f,long skip_call,int save_n,long *save_inp,long *save_outp,long *save_exp,long *save_tvp)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_7(det_sys_select,current_task,save_n,save_inp,save_outp,save_exp,save_tvp,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_select(int n,long *inp,long *outp,long *exp,long *tvp,int f,long *skip_call,int *save_n,long **save_inp,long **save_outp,long **save_exp,long **save_tvp)
{
    *skip_call=0;
    *save_n=n;
    *save_inp=inp;
    *save_outp=outp;
    *save_exp=exp;
    *save_tvp=tvp;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_clock_gettime(long which_clock,long *tp,int c,int d,int e,int f,long *skip_call,long *save_which_clock,long **save_tp)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_clock_gettime,current_task,save_which_clock,save_tp,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_clock_gettime(long which_clock,long *tp,int c,int d,int e,int f,long *skip_call,long *save_which_clock,long **save_tp)
{
    *skip_call=0;
    *save_which_clock=which_clock;
    *save_tp=tp;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_perf_event_open(long *attr,unsigned int pid,int cpu, int group_fd,unsigned long flags,int f,long *skip_call,
                long *save_attr,unsigned int save_pid,int save_cpu, int save_group_fd,unsigned long save_flags)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_7(det_sys_clock_gettime,current_task,save_attr,save_pid,save_cpu,save_group_fd,save_flags,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_perf_event_open(long *attr,unsigned int pid,int cpu, int group_fd,unsigned long flags,int f,long *skip_call,
                long **save_attr,unsigned int *save_pid,int *save_cpu, int *save_group_fd,unsigned long *save_flags)
{
    *skip_call=0;
    *save_attr=attr;
    *save_pid=pid;
    *save_cpu=cpu;
    *save_group_fd=group_fd;
    *save_flags=flags;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_newuname(long *a,int b,int c,int d,int e,int f,long *skip_call,long *save_a)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_3(det_sys_newuname,current_task,save_a,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_newuname(long *a,int b,int c,int d,int e,int f,long *skip_call,long **save_a)
{
    *skip_call=0;
    *save_a=a;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_reboot(int magic1, int magic2, unsigned int cmd,long *arg,int e,int f,long *skip_call,int save_magic1, int save_magic2, unsigned int save_cmd,long *save_arg)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_6(det_sys_reboot,current_task,save_magic1,save_magic2,save_cmd,save_arg,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_reboot(int magic1, int magic2, unsigned int cmd,long *arg,int e,int f,long *skip_call,int *save_magic1, int *save_magic2, unsigned int *save_cmd,long **save_arg)
{
    *skip_call=0;
    *save_magic1=magic1;
    *save_magic2=magic2;
    *save_cmd=cmd;
    *save_arg=arg;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_init_module(long *umod,unsigned long len,long *uargs,int d,int e,int f,long *skip_call,long *save_umod,unsigned long save_len,long *save_uargs)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_init_module,current_task,save_umod,save_len,save_uargs,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_init_module(long *umod,unsigned long len,long *uargs,int d,int e,int f,long *skip_call,long **save_umod,unsigned long *save_len,long **save_uargs)
{
    *skip_call=0;
    *save_umod=umod;
    *save_len=len;
    *save_uargs=uargs;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_delete_module(char *name_user,unsigned int flags,int c,int d,int e,int f,long *skip_call,char *save_name_user,unsigned int save_flags)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_4(det_sys_delete_module,current_task,save_name_user,save_flags,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_delete_module(char *name_user,unsigned int flags,int c,int d,int e,int f,long *skip_call,char **save_name_user,unsigned int *save_flags)
{
    *skip_call=0;
    *save_name_user=name_user;
    *save_flags=flags;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_finit_module(int fd,char *uargs,int flags,int d,int e,int f,long *skip_call,int save_fd,char *save_uargs,int save_flags)
{
    long save_rax = __read_reg("rax");
    //void *current = current_task;
    vmcall_5(det_sys_finit_module,current_task,save_fd,save_uargs,save_flags,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_finit_module(int fd,char *uargs,int flags,int d,int e,int f,long *skip_call,int *save_fd,char **save_uargs,int *save_flags)
{
    *skip_call=0;
    *save_fd=fd;
    *save_uargs=uargs;
    *save_flags=flags;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_write(unsigned int fd, char * buf, int count,int a,int b,int c,long *skip_call,unsigned int save_fd, char * save_buf, int save_count)
{
    long save_rax = __read_reg("rax");
    vmcall_5(det_sys_write,current_task,save_fd, save_buf, save_count,save_rax);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_write(unsigned int fd, char * buf, int count,int a,int b,int c,long *skip_call,unsigned int* save_fd, char ** save_buf, int* save_count)
{
    *skip_call=0;
    *save_fd=fd;
    *save_buf=buf;
    *save_count=count;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_do_sys_open(int dfd, char* filename, int flags, long mode,int a,int b,long *skip_call,char** save_filename, int* save_flags, long* save_mode)
{
    *skip_call=0;
    *save_filename=filename;
    *save_flags=flags;
    *save_mode=mode;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void do_sys_open(int dfd, char* filename, int flags, long mode,int a,int b,long *skip_call,char* save_filename, int save_flags, long save_mode)
{
    long save_rax = __read_reg("rax");
    vmcall_5(det_do_sys_open, current_task, save_filename, save_flags,save_mode,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_accept(int fd,long *upeer_sockaddr,int *upeer_addrlen,int d,int e,int f,long *skip_call,int *save_fd,long **save_upeer_sockaddr,int **save_upeer_addrlen)
{
    *skip_call=0;
    *save_fd=fd;
    *save_upeer_sockaddr=upeer_sockaddr;
    *save_upeer_addrlen=upeer_addrlen;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_accept(int fd,long *upeer_sockaddr,int *upeer_addrlen,int d,int e,int f,long *skip_call,int save_fd,long *save_upeer_sockaddr,int *save_upeer_addrlen)
{
    long save_rax = __read_reg("rax");
    vmcall_5(det_sys_accept, current_task, save_fd,save_upeer_sockaddr,save_upeer_addrlen,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_accept4(int fd,long *upeer_sockaddr,int *upeer_addrlen,int flags,int e,int f,long *skip_call,int *save_fd,long **save_upeer_sockaddr,int **save_upeer_addrlen,int *save_flags)
{
    *skip_call=0;
    *save_fd=fd;
    *save_upeer_sockaddr=upeer_sockaddr;
    *save_upeer_addrlen=upeer_addrlen;
    *save_flags=flags;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_accept4(int fd,long *upeer_sockaddr,int *upeer_addrlen,int flags,int e,int f,long *skip_call,int save_fd,long *save_upeer_sockaddr,int *save_upeer_addrlen,int save_flags)
{
    long save_rax = __read_reg("rax");
    vmcall_6(det_sys_accept4, current_task, save_fd,save_upeer_sockaddr,save_upeer_addrlen,save_flags,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_bind(int fd,long *umyaddr,int addrlen,int d,int e,int f,long *skip_call,int *save_fd,long **save_umyaddr,int *save_addrlen)
{
    *skip_call=0;
    *save_fd=fd;
    *save_umyaddr=umyaddr;
    *save_addrlen=addrlen;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_bind(int fd,long *umyaddr,int addrlen,int d,int e,int f,long *skip_call,int save_fd,long *save_umyaddr,int save_addrlen)
{
    long save_rax = __read_reg("rax");
    vmcall_5(det_sys_bind, current_task, save_fd,save_umyaddr,save_addrlen,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_connect(int fd,long *uservaddr,int addrlen,int d,int e,int f,long *skip_call,int *save_fd,long **save_uservaddr,int *save_addrlen)
{
    *skip_call=0;
    *save_fd=fd;
    *save_uservaddr=uservaddr;
    *save_addrlen=addrlen;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_connect(int fd,long *uservaddr,int addrlen,int d,int e,int f,long *skip_call,int save_fd,long *save_uservaddr,int save_addrlen)
{
    long save_rax = __read_reg("rax");
    vmcall_5(det_sys_connect, current_task, save_fd,save_uservaddr,save_addrlen,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_sendto(int fd,void *buff,unsigned long len,unsigned int flags,long *addr,
                    int addr_len,long *skip_call,int *save_fd,void **save_buff,unsigned long *save_len,unsigned int *save_flags,long **save_addr,
                    int *save_addr_len)
{
    *skip_call=0;
    *save_fd=fd;
    *save_buff=buff;
    *save_len=len;
    *save_flags=flags;
    *save_addr=addr;
    *save_addr_len=addr_len;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_sendto(int fd,void *buff,unsigned long len,unsigned int flags,long *addr,
                    int addr_len,long *skip_call,int save_fd,void *save_buff,unsigned long save_len,unsigned int save_flags,long *save_addr,
                    int save_addr_len)
{
    long save_rax = __read_reg("rax");
    vmcall_8(det_sys_sendto, current_task, save_fd,save_buff,save_len,save_flags,save_addr,save_addr_len,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_sendmsg(int fd,long *msg, unsigned flags,int d,int e,int f,long *skip_call,
                    int *save_fd,long **save_msg, unsigned *save_flags)
{
    *skip_call=0;
    *save_fd=fd;
    *save_msg=msg;
    *save_flags=flags;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_sendmsg(int fd,long *msg, unsigned flags,int d,int e,int f,long *skip_call,
                    int save_fd,long *save_msg, unsigned save_flags)
{
    long save_rax = __read_reg("rax");
    vmcall_5(det_sys_sendmsg, current_task, save_fd,save_msg,save_flags,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_recvfrom(int fd,void *ubuf,unsigned long size,unsigned int flags,long *addr,
                    int addr_len,long *skip_call,int *save_fd,void **save_ubuf,unsigned long *save_size,unsigned int *save_flags,long **save_addr,
                    int **save_addr_len)
{
    *skip_call=0;
    *save_fd=fd;
    *save_ubuf=ubuf;
    *save_size=size;
    *save_flags=flags;
    *save_addr=addr;
    *save_addr_len=addr_len;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_recvfrom(int fd,void *ubuf,unsigned long size,unsigned int flags,long *addr,
                    int addr_len,long *skip_call,int save_fd,void *save_ubuf,unsigned long save_size,unsigned int save_flags,long *save_addr,
                    int *save_addr_len)
{
    long save_rax = __read_reg("rax");
    vmcall_8(det_sys_recvfrom, current_task, save_fd,save_ubuf,save_size,save_flags,save_addr,save_addr_len,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_recvmsg(int fd,long *msg, unsigned flags,int d,int e,int f,long *skip_call,
                    int *save_fd,long **save_msg, unsigned *save_flags)
{
    *skip_call=0;
    *save_fd=fd;
    *save_msg=msg;
    *save_flags=flags;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_recvmsg(int fd,long *msg, unsigned flags,int d,int e,int f,long *skip_call,
                    int save_fd,long *save_msg, unsigned save_flags)
{
    long save_rax = __read_reg("rax");
    vmcall_5(det_sys_recvmsg, current_task, save_fd,save_msg,save_flags,save_rax);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_close(unsigned int fd,int b,int c,int d,int e,int f,long *skip_call,
                    unsigned int *save_fd)
{
    *skip_call=0;
    *save_fd=fd;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_close(unsigned int fd,int b,int c,int d,int e,int f,long *skip_call,
                    unsigned int save_fd)
{
    long save_rax = __read_reg("rax");
    vmcall_3(det_sys_close, current_task, save_fd,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_dup(unsigned int fildes,int b,int c,int d,int e,int f,long *skip_call,
                    unsigned int *save_fildes)
{
    *skip_call=0;
    *save_fildes=fildes;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_dup(unsigned int fildes,int b,int c,int d,int e,int f,long *skip_call,
                    unsigned int save_fildes)
{
    long save_rax = __read_reg("rax");
    vmcall_3(det_sys_dup, current_task, save_fildes,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_dup2(unsigned int oldfd, unsigned int newfd,int c,int d,int e,int f,long *skip_call,
                    unsigned int *save_oldfd, unsigned int *save_newfd)
{
    *skip_call=0;
    *save_oldfd=oldfd;
    *save_newfd=save_newfd;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_dup2(unsigned int oldfd, unsigned int newfd,int c,int d,int e,int f,long *skip_call,
                    unsigned int save_oldfd, unsigned int save_newfd)
{
    long save_rax = __read_reg("rax");
    vmcall_4(det_sys_dup2, current_task, save_oldfd,save_newfd,save_rax);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
// __default_fn_attr
// void pre_sys_dup3(unsigned int oldfd, unsigned int newfd,int flags,int d,int e,int f,long *skip_call,
//                     unsigned int *save_oldfd, unsigned int *save_newfd,int *save_flags)
// {
//     *skip_call=0;
//     *save_oldfd=oldfd;
//     *save_newfd=save_newfd;
//     *save_flags=flags;
// }

// /////////////////////////////////////////////////////////////////////////////////////////////////////////////
// __default_fn_attr
// void sys_dup3(unsigned int oldfd, unsigned int newfd,int c,int d,int e,int f,long *skip_call,
//                     unsigned int save_oldfd, unsigned int save_newfd,int save_flags)
// {
//     long save_rax = __read_reg("rax");
//     vmcall_5(det_sys_dup2, current_task, save_oldfd,save_newfd,save_flags,save_rax);
// }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_wait4(unsigned int pid, int *stat_addr,int options,long *ru,int e,int f,long *skip_call,
                    unsigned int *save_pid, int **save_stat_addr,int *save_options,long **save_ru)
{
    *skip_call=0;
    *save_pid=pid;
    *save_stat_addr=stat_addr;
    *save_options=options;
    *save_ru=ru;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_wait4(unsigned int pid, int *stat_addr,int options,long *ru,int e,int f,long *skip_call,
                    unsigned int save_pid, int *save_stat_addr,int save_options,long *save_ru)
{
    long save_rax = __read_reg("rax");
    vmcall_6(det_sys_dup2, current_task, save_pid,save_stat_addr,save_options,save_ru,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_waitid(int which,unsigned int pid,long *infop,int options,long *ru,int f,long *skip_call,
                    int *save_which,unsigned int *save_pid,long **save_infop,int *save_options,long **save_ru)
{
    *skip_call=0;
    *save_which=which;
    *save_pid=pid;
    *save_infop=infop;
    *save_options=options;
    *save_ru=ru;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_waitid(int which,unsigned int pid,long *infop,int options,long *ru,int f,long *skip_call,
                    int save_which,unsigned int save_pid,long *save_infop,int save_options,long *save_ru)
{
    long save_rax = __read_reg("rax");
    vmcall_7(det_sys_waitid, current_task, save_which,save_pid,save_infop,save_options,save_ru,save_rax);
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_sched_rr_get_interval(unsigned int pid,long *interval,int c,int d,int e,int f,long *skip_call,
                    unsigned int *save_pid,long **save_interval)
{
    *skip_call=0;
    *save_pid=pid;
    *save_interval=interval;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_sched_rr_get_interval(unsigned int pid,long *interval,int c,int d,int e,int f,long *skip_call,
                    unsigned int save_pid,long *save_interval)
{
    long save_rax = __read_reg("rax");
    vmcall_4(det_sys_sched_rr_get_interval, current_task, save_pid,save_interval,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_execve(char* filename,long *argv,long *envp,int d,int e,int f,long *skip_call,
                    char** save_filename,long **save_argv,long **save_envp)
{
    *skip_call=0;
    *save_filename=filename;
    *save_argv=argv;
    *save_envp=envp;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_execve(char* filename,long* argv,long* envp,int d,int e,int f,long *skip_call,
                    char* save_filename,long* save_argv,long* save_envp)
{
    long save_rax = __read_reg("rax");
    vmcall_5(det_sys_execve, current_task,save_filename,save_argv,save_envp,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_execveat(int dfd,char* filename,long *argv,long *envp,int flags,int f,long *skip_call,
                    int *save_dfd,char *save_filename,long *save_argv,long *save_envp,int *save_flags)
{
    *skip_call=0;
    *save_dfd=dfd;
    *save_filename=filename;
    *save_argv=argv;
    *save_envp=envp;
    *save_flags=flags;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_execveat(int dfd,char *filename,long *argv,long *envp,int flags,int f,long *skip_call,
                    int save_dfd,char *save_filename,long *save_argv,long *save_envp,int save_flags)
{
    long save_rax = __read_reg("rax");
    vmcall_7(det_sys_execveat, current_task,save_dfd,save_filename,save_argv,save_envp,save_flags,save_rax);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_setuid16(unsigned long uid,int b,int c,int d,int e,int f,long *skip_call,
                    int *save_uid)
{
    *skip_call=0;
    *save_uid=uid;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_setuid16(unsigned long uid,int b,int c,int d,int e,int f,long *skip_call,
                    int save_uid)
{
    long save_rax = __read_reg("rax");
    vmcall_3(det_sys_setuid16, current_task,save_uid,save_rax);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_sched_yield(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    *skip_call=0;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_sched_yield(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    long save_rax = __read_reg("rax");
    vmcall_2(det_sys_sched_yield, current_task,save_rax);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_sendmmsg(int fd,long *msg,
			     unsigned int vlen, unsigned int flags,int e,int f,long *skip_call,int *save_fd,
                 long **save_msg,unsigned int *save_vlen, unsigned int *save_flags)
{
    *skip_call=0;
    *save_fd=fd;
    *save_msg=msg;
    *save_vlen=vlen;
    *save_flags=flags;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_sendmmsg(int fd,long *msg,
			     unsigned int vlen, unsigned int flags,int e,int f,long *skip_call,int save_fd,
                 long *save_msg,unsigned int save_vlen, unsigned int save_flags)
{
    long save_rax = __read_reg("rax");
    vmcall_6(det_sys_sendmmsg, current_task,save_fd,save_msg,save_vlen,save_flags,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_getpid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    *skip_call=0;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_getpid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    long save_rax = __read_reg("rax");
    vmcall_2(det_sys_getpid, current_task,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_gettid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    *skip_call=0;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_gettid(int a,int b,int c,int d,int e,int f,long *skip_call)
{
    long save_rax = __read_reg("rax");
    vmcall_2(det_sys_gettid, current_task,save_rax);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_oldumount(char *name,int b,int c,int d,int e,int f,long *skip_call,char **save_name)
{
    *skip_call=0;
    *save_name=name;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void sys_oldumount(char *name,int b,int c,int d,int e,int f,long *skip_call,char *save_name)
{
    long save_rax = __read_reg("rax");
    vmcall_3(det_sys_oldumount, current_task,save_name,save_rax);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_setgid16(unsigned long gid,int b,int c,int d,int e,int f,long *skip_call,
                    int *save_gid)
{
    *skip_call=0;
    *save_gid=gid;
}

__default_fn_attr
void sys_setgid16(unsigned long gid,int b,int c,int d,int e,int f,long *skip_call,
                    int save_gid)
{
    long save_rax = __read_reg("rax");
    vmcall_3(det_sys_setgid16, current_task,save_gid,save_rax);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
__default_fn_attr
void pre_sys_getcwd(char *buf,long size,int c,int d,int e,int f,long *skip_call,
                    char **save_buf,long *save_size)
{
    *skip_call=0;
    *save_buf=buf;
    *save_size=size;
}

__default_fn_attr
void sys_getcwd(char *buf,long size,int c,int d,int e,int f,long *skip_call,
                    char *save_buf,long save_size)
{
    long save_rax = __read_reg("rax");
    vmcall_4(det_sys_getcwd, current_task,save_buf,save_size,save_rax);
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
// __default_fn_attr
// void sys_getgid16()
// {
//     vmcall_1(det_sys_getgid16, current_task);
// }
// __default_fn_attr
// void sys_times()
// {
//     vmcall_1(det_sys_times, current_task);
// }
// __default_fn_attr
// void sys_mount()
// {
//     vmcall_1(det_sys_mount, current_task);
// }
// __default_fn_attr
// void sys_getcwd()
// {
//     vmcall_1(det_sys_getcwd, current_task);
// }
// __default_fn_attr
// void sys_readlinkat()
// {
//     vmcall_1(det_sys_readlinkat, current_task);
// }
// __default_fn_attr
// void sys_getpgid()
// {
//     vmcall_1(det_sys_getpgid, current_task);
// }
// __default_fn_attr
// void sys_flock()
// {
//     vmcall_1(det_sys_flock, current_task);
// }
// __default_fn_attr
// void sys_readv()
// {
//     vmcall_1(det_sys_readv, current_task);
// }
// __default_fn_attr
// void sys_writev()
// {
//     vmcall_1(det_sys_writev, current_task);
// }
// __default_fn_attr
// void sys_readlink()
// {
//     vmcall_1(det_sys_readlink, current_task);
// }
// __default_fn_attr
// void sys_getpeername()
// {
//     vmcall_1(det_sys_getpeername, current_task);
// }
// __default_fn_attr
// void sys_recv()
// {
//     vmcall_1(det_sys_recv, current_task);
// }
// __default_fn_attr
// void sys_faccessat()
// {
//     vmcall_1(det_sys_faccessat, current_task);
// }
// __default_fn_attr
// void sys_flistxattr()
// {
//     vmcall_1(det_sys_flistxattr, current_task);
// }
// __default_fn_attr
// void sys_utime()
// {
//     vmcall_1(det_sys_utime, current_task);
// }
// __default_fn_attr
// void sys_lseek()
// {
//     vmcall_1(det_sys_lseek, current_task);
// }
// __default_fn_attr
// void sys_listen()
// {
//     vmcall_1(det_sys_listen, current_task);
// }
// __default_fn_attr
// void sys_socket()
// {
//     vmcall_1(det_sys_socket, current_task);
// }

// __default_fn_attr
// void sys_vfork()
// {
//     vmcall_1(det_sys_vfork, current_task);
// }
// __default_fn_attr
// void sys_send()
// {
//     vmcall_1(det_sys_send, current_task);
// }
// __default_fn_attr
// void sys_setpgid()
// {
//     vmcall_1(det_sys_setpgid, current_task);
// }
// __default_fn_attr
// void sys_setgroups16()
// {
//     vmcall_1(det_sys_setgroups16, current_task);
// }
// __default_fn_attr
// void sys_nanosleep()
// {
//     vmcall_1(det_sys_nanosleep, current_task);
// }
// __default_fn_attr
// void sys_semctl()
// {
//     vmcall_1(det_sys_semctl, current_task);
// }
// __default_fn_attr
// void sys_mlockall()
// {
//     vmcall_1(det_sys_mlockall, current_task);
// }
// __default_fn_attr
// void sys_inotify_init()
// {
//     vmcall_1(det_sys_inotify_init, current_task);
// }
// __default_fn_attr
// void sys_fallocate()
// {
//     vmcall_1(det_sys_fallocate, current_task);
// }
// __default_fn_attr
// void sys_unshare()
// {
//     vmcall_1(det_sys_unshare, current_task);
// }
// __default_fn_attr
// void sys_msync()
// {
//     vmcall_1(det_sys_msync, current_task);
// }
// __default_fn_attr
// void sys_getresuid16()
// {
//     vmcall_1(det_sys_getresuid16, current_task);
// }

// __default_fn_attr
// void sys_add_key()
// {
//     vmcall_1(det_sys_add_key, current_task);
// }
// __default_fn_attr
// void sys_lsetxattr()
// {
//     vmcall_1(det_sys_lsetxattr, current_task);
// }
// __default_fn_attr
// void sys_setreuid16()
// {
//     vmcall_1(det_sys_setreuid16, current_task);
// }
// __default_fn_attr
// void sys_getpgrp()
// {
//     vmcall_1(det_sys_getpgrp, current_task);
// }
// __default_fn_attr
// void sys_sched_get_priority_max()
// {
//     vmcall_1(det_sys_sched_get_priority_max, current_task);
// }
// __default_fn_attr
// void sys_pselect6()
// {
//     vmcall_1(det_sys_pselect6, current_task);
// }
// __default_fn_attr
// void sys_setresgid16()
// {
//     vmcall_1(det_sys_setresgid16, current_task);
// }
// __default_fn_attr
// void sys_signalfd()
// {
//     vmcall_1(det_sys_signalfd, current_task);
// }
// __default_fn_attr
// void sys_mprotect()
// {
//     vmcall_1(det_sys_mprotect, current_task);
// }
// __default_fn_attr
// void sys_sched_getscheduler()
// {
//     vmcall_1(det_sys_sched_getscheduler, current_task);
// }
// __default_fn_attr
// void sys_fcntl()
// {
//     vmcall_1(det_sys_fcntl, current_task);
// }
// __default_fn_attr
// void sys_sigaltstack()
// {
//     vmcall_1(det_sys_sigaltstack, current_task);
// }
// __default_fn_attr
// void sys_semop()
// {
//     vmcall_1(det_sys_semop, current_task);
// }
// __default_fn_attr
// void sys_llistxattr()
// {
//     vmcall_1(det_sys_llistxattr, current_task);
// }
// __default_fn_attr
// void sys_epoll_pwait()
// {
//     vmcall_1(det_sys_epoll_pwait, current_task);
// }
// __default_fn_attr
// void sys_mlock()
// {
//     vmcall_1(det_sys_mlock, current_task);
// }

// __default_fn_attr
// void sys_pipe2()
// {
//     vmcall_1(det_sys_pipe2, current_task);
// }
// __default_fn_attr
// void sys_semget()
// {
//     vmcall_1(det_sys_semget, current_task);
// }
// __default_fn_attr
// void sys_epoll_wait()
// {
//     vmcall_1(det_sys_epoll_wait, current_task);
// }
// __default_fn_attr
// void sys_keyctl()
// {
//     vmcall_1(det_sys_keyctl, current_task);
// }
// __default_fn_attr
// void sys_getrandom()
// {
//     vmcall_1(det_sys_getrandom, current_task);
// }
// __default_fn_attr
// void sys_open_by_handle_at()
// {
//     vmcall_1(det_sys_open_by_handle_at, current_task);
// }
// __default_fn_attr
// void sys_munmap()
// {
//     vmcall_1(det_sys_munmap, current_task);
// }
// __default_fn_attr
// void sys_set_robust_list()
// {
//     vmcall_1(det_sys_set_robust_list, current_task);
// }
// __default_fn_attr
// void sys_setpriority()
// {
//     vmcall_1(det_sys_setpriority, current_task);
// }
// __default_fn_attr
// void sys_lgetxattr()
// {
//     vmcall_1(det_sys_lgetxattr, current_task);
// }
// __default_fn_attr
// void sys_name_to_handle_at()
// {
//     vmcall_1(det_sys_name_to_handle_at, current_task);
// }
// __default_fn_attr
// void sys_getsockname()
// {
//     vmcall_1(det_sys_getsockname, current_task);
// }
// __default_fn_attr
// void sys_getrusage()
// {
//     vmcall_1(det_sys_getrusage, current_task);
// }
// __default_fn_attr
// void sys_getgroups16()
// {
//     vmcall_1(det_sys_getgroups16, current_task);
// }
// __default_fn_attr
// void sys_prlimit64()
// {
//     vmcall_1(det_sys_prlimit64, current_task);
// }
// __default_fn_attr
// void sys_memfd_create()
// {
//     vmcall_1(det_sys_memfd_create, current_task);
// }
// __default_fn_attr
// void sys_signalfd4()
// {
//     vmcall_1(det_sys_signalfd4, current_task);
// }
// __default_fn_attr
// void sys_adjtimex()
// {
//     vmcall_1(det_sys_adjtimex, current_task);
// }
// __default_fn_attr
// void sys_getsockopt()
// {
//     vmcall_1(det_sys_getsockopt, current_task);
// }
// __default_fn_attr
// void sys_personality()
// {
//     vmcall_1(det_sys_personality, current_task);
// }
// __default_fn_attr
// void sys_sched_setscheduler()
// {
//     vmcall_1(det_sys_sched_setscheduler, current_task);
// }
// __default_fn_attr
// void sys_sched_getparam()
// {
//     vmcall_1(det_sys_sched_getparam, current_task);
// }
// __default_fn_attr
// void sys_clock_nanosleep()
// {
//     vmcall_1(det_sys_clock_nanosleep, current_task);
// }
// __default_fn_attr
// void sys_sched_get_priority_min()
// {
//     vmcall_1(det_sys_sched_get_priority_min, current_task);
// }
// __default_fn_attr
// void sys_sched_setaffinity()
// {
//     vmcall_1(det_sys_sched_setaffinity, current_task);
// }
// __default_fn_attr
// void sys_remap_file_pages()
// {
//     vmcall_1(det_sys_remap_file_pages, current_task);
// }
// __default_fn_attr
// void sys_removexattr()
// {
//     vmcall_1(det_sys_removexattr, current_task);
// }
// __default_fn_attr
// void sys_getresgid16()
// {
//     vmcall_1(det_sys_getresgid16, current_task);
// }
// __default_fn_attr
// void sys_setsockopt()
// {
//     vmcall_1(det_sys_setsockopt, current_task);
// }
// __default_fn_attr
// void sys_getdents()
// {
//     vmcall_1(det_sys_getdents, current_task);
// }
// __default_fn_attr
// void sys_io_destroy()
// {
//     vmcall_1(det_sys_io_destroy, current_task);
// }
// __default_fn_attr
// void sys_clock_getres()
// {
//     vmcall_1(det_sys_clock_getres, current_task);
// }
// __default_fn_attr
// void sys_shmctl()
// {
//     vmcall_1(det_sys_shmctl, current_task);
// }
// __default_fn_attr
// void sys_setregid16()
// {
//     vmcall_1(det_sys_setregid16, current_task);
// }
// __default_fn_attr
// void sys_setitimer()
// {
//     vmcall_1(det_sys_setitimer, current_task);
// }
// __default_fn_attr
// void sys_utimensat()
// {
//     vmcall_1(det_sys_utimensat, current_task);
// }
// __default_fn_attr
// void sys_inotify_add_watch()
// {
//     vmcall_1(det_sys_inotify_add_watch, current_task);
// }
// __default_fn_attr
// void sys_msgrcv()
// {
//     vmcall_1(det_sys_msgrcv, current_task);
// }
// __default_fn_attr
// void sys_epoll_create()
// {
//     vmcall_1(det_sys_epoll_create, current_task);
// }
// __default_fn_attr
// void sys_getegid16()
// {
//     vmcall_1(det_sys_getegid16, current_task);
// }
// __default_fn_attr
// void sys_socketpair()
// {
//     vmcall_1(det_sys_socketpair, current_task);
// }
// __default_fn_attr
// void sys_rt_sigaction()
// {
//     vmcall_1(det_sys_rt_sigaction, current_task);
// }
// __default_fn_attr
// void sys_epoll_create1()
// {
//     vmcall_1(det_sys_epoll_create1, current_task);
// }
// __default_fn_attr
// void sys_fsetxattr()
// {
//     vmcall_1(det_sys_fsetxattr, current_task);
// }
// __default_fn_attr
// void sys_ppoll()
// {
//     vmcall_1(det_sys_ppoll, current_task);
// }
// __default_fn_attr
// void sys_get_mempolicy()
// {
//     vmcall_1(det_sys_get_mempolicy, current_task);
// }
// __default_fn_attr
// void sys_rt_sigsuspend()
// {
//     vmcall_1(det_sys_rt_sigsuspend, current_task);
// }
// __default_fn_attr
// void sys_llseek()
// {
//     vmcall_1(det_sys_llseek, current_task);
// }
// __default_fn_attr
// void sys_old_readdir()
// {
//     vmcall_1(det_sys_old_readdir, current_task);
// }
// __default_fn_attr
// void sys_shmget()
// {
//     vmcall_1(det_sys_shmget, current_task);
// }
// __default_fn_attr
// void sys_mremap()
// {
//     vmcall_1(det_sys_mremap, current_task);
// }
// __default_fn_attr
// void sys_inotify_rm_watch()
// {
//     vmcall_1(det_sys_inotify_rm_watch, current_task);
// }
// __default_fn_attr
// void sys_madvise()
// {
//     vmcall_1(det_sys_madvise, current_task);
// }
// __default_fn_attr
// void sys_msgget()
// {
//     vmcall_1(det_sys_msgget, current_task);
// }
// __default_fn_attr
// void sys_epoll_ctl()
// {
//     vmcall_1(det_sys_epoll_ctl, current_task);
// }
// __default_fn_attr
// void sys_fgetxattr()
// {
//     vmcall_1(det_sys_fgetxattr, current_task);
// }
// __default_fn_attr
// void sys_mknod()
// {
//     vmcall_1(det_sys_mknod, current_task);
// }
// __default_fn_attr
// void sys_shmat()
// {
//     vmcall_1(det_sys_shmat, current_task);
// }
// __default_fn_attr
// void sys_eventfd2()
// {
//     vmcall_1(det_sys_eventfd2, current_task);
// }
// __default_fn_attr
// void sys_getpriority()
// {
//     vmcall_1(det_sys_getpriority, current_task);
// }
// __default_fn_attr
// void sys_inotify_init1()
// {
//     vmcall_1(det_sys_inotify_init1, current_task);
// }
// __default_fn_attr
// void sys_io_setup()
// {
//     vmcall_1(det_sys_io_setup, current_task);
// }
// __default_fn_attr
// void sys_ioprio_get()
// {
//     vmcall_1(det_sys_ioprio_get, current_task);
// }

// Will be droped by the compiler, but will generate usefull #defines for asm
void __asm_defines(void)
{
    def_detour_asm_vars(commit_creds);
    def_detour_asm_vars(arch_jump_label_transform);
    def_detour_asm_vars(module_param_sysfs_setup);
    def_detour_asm_vars(module_param_sysfs_remove);
    def_detour_asm_vars(wake_up_new_task);
    def_detour_asm_vars(flush_old_exec);
    def_detour_asm_vars(begin_new_exec);
    def_detour_asm_vars(do_exit);
    def_detour_asm_vars(arch_ptrace);
    def_detour_asm_vars(compat_arch_ptrace);
    def_detour_asm_vars(process_vm_rw_core);
    def_detour_asm_vars(__vma_link_rb);
    def_detour_asm_vars(change_protection);
    def_detour_asm_vars(vma_adjust);
    def_detour_asm_vars(__vma_adjust);
    def_detour_asm_vars(vma_rb_erase);
    def_detour_asm_vars(__vma_rb_erase);
    def_detour_asm_vars(expand_downwards);
    def_detour_asm_vars(complete_signal);
    def_detour_asm_vars(text_poke);
    def_detour_asm_vars(__text_poke);
    def_detour_asm_vars(ftrace_write);
    def_detour_asm_vars(panic);
    def_detour_asm_vars(crash_kexec);
    def_detour_asm_vars(__access_remote_vm);

    def_detour_hijack_asm_vars(mprotect_fixup, vma_wants_writenotify);
    def_detour_hijack_asm_vars(do_munmap, rb_erase);
    def_detour_hijack_asm_vars(vma_adjust, rb_erase);

    def_detour_asm_vars(do_rmdir);
    def_detour_asm_vars(sys_sysfs);
    def_detour_asm_vars(sys_read);
    def_detour_asm_vars(sys_getppid);
    def_detour_asm_vars(sys_getsid);
    def_detour_asm_vars(sys_getuid);
    def_detour_asm_vars(sys_geteuid);
    def_detour_asm_vars(sys_shutdown);
    def_detour_asm_vars(do_sysinfo);
    def_detour_asm_vars(sys_capget);
    def_detour_asm_vars(sys_capset);
    def_detour_asm_vars(sys_statfs);
    def_detour_asm_vars(sys_fstatfs);
    def_detour_asm_vars(sys_setsid);
    def_detour_asm_vars(sys_seccomp);
    def_detour_asm_vars(sys_tgkill);
    def_detour_asm_vars(sys_tkill);
    def_detour_asm_vars(sys_ustat);
    def_detour_asm_vars(sys_poll);
    def_detour_asm_vars(sys_sigprocmask);
    def_detour_asm_vars(sys_getrlimit);
    def_detour_asm_vars(sys_umask);
    def_detour_asm_vars(sys_ioctl);
    def_detour_asm_vars(sys_brk);
    def_detour_asm_vars(sys_gettimeofday);
    def_detour_asm_vars(sys_setresuid);
    def_detour_asm_vars(sys_chdir);
    def_detour_asm_vars(sys_alarm);
    def_detour_asm_vars(sys_ptrace);
    def_detour_asm_vars(sys_time);
    def_detour_asm_vars(sys_chroot);
    def_detour_asm_vars(sys_kill);
    def_detour_asm_vars(sys_fchdir);
    def_detour_asm_vars(sys_chmod);
    def_detour_asm_vars(sys_chown);
    def_detour_asm_vars(sys_fchmodat);
    def_detour_asm_vars(sys_fchmod);
    def_detour_asm_vars(sys_fchown);
    def_detour_asm_vars(sys_fchownat);
    def_detour_asm_vars(sys_rename);
    def_detour_asm_vars(sys_renameat2);
    def_detour_asm_vars(sys_renameat);
    def_detour_asm_vars(sys_mkdir);
    def_detour_asm_vars(sys_creat);
    def_detour_asm_vars(sys_openat);
    def_detour_asm_vars(sys_link);
    def_detour_asm_vars(sys_unlink);
    def_detour_asm_vars(sys_unlinkat);
    def_detour_asm_vars(sys_linkat);
    def_detour_asm_vars(sys_symlink);
    def_detour_asm_vars(sys_symlinkat);
    def_detour_asm_vars(sys_access);
    def_detour_asm_vars(sys_fstat);
    def_detour_asm_vars(sys_newstat);
    def_detour_asm_vars(sys_lstat);
    def_detour_asm_vars(sys_newfstatat);
    def_detour_asm_vars(sys_pwrite64);
    def_detour_asm_vars(sys_pread64);
    def_detour_asm_vars(sys_mmap_pgoff);
    def_detour_asm_vars(sys_prctl);
    def_detour_asm_vars(do_sigaction);
    def_detour_asm_vars(sys_select);
    def_detour_asm_vars(sys_clock_gettime);
    def_detour_asm_vars(sys_perf_event_open);
    def_detour_asm_vars(sys_newuname);
    def_detour_asm_vars(sys_reboot);
    def_detour_asm_vars(sys_init_module);
    def_detour_asm_vars(sys_delete_module);
    def_detour_asm_vars(sys_finit_module);
    def_detour_asm_vars(sys_write);
    def_detour_asm_vars(do_sys_open);
    def_detour_asm_vars(sys_accept);
    def_detour_asm_vars(sys_accept4);
    def_detour_asm_vars(sys_bind);
    def_detour_asm_vars(sys_connect);
    def_detour_asm_vars(sys_sendto);
    def_detour_asm_vars(sys_sendmsg);
    def_detour_asm_vars(sys_recvmsg);
    def_detour_asm_vars(sys_recvfrom);
    def_detour_asm_vars(sys_close);
    def_detour_asm_vars(sys_dup);
    def_detour_asm_vars(sys_dup2);
    // def_detour_asm_vars(sys_dup3);
    def_detour_asm_vars(sys_waitid);
    def_detour_asm_vars(sys_wait4);
    def_detour_asm_vars(sys_sched_rr_get_interval);
    def_detour_asm_vars(sys_execve);
    def_detour_asm_vars(sys_execveat);
    def_detour_asm_vars(sys_setuid16);
    def_detour_asm_vars(sys_sched_yield);
    def_detour_asm_vars(sys_sendmmsg);
    def_detour_asm_vars(sys_getpid);
    def_detour_asm_vars(sys_gettid);
    def_detour_asm_vars(sys_oldumount);
    def_detour_asm_vars(sys_setgid16);
    def_detour_asm_vars(sys_getcwd);
    // def_detour_asm_vars(sys_getgid16);
    // def_detour_asm_vars(sys_times);
    // def_detour_asm_vars(sys_mount);
    // def_detour_asm_vars(sys_getcwd);
    // def_detour_asm_vars(sys_faccessat);
    // def_detour_asm_vars(sys_flistxattr);
    // def_detour_asm_vars(sys_readlinkat);
    // def_detour_asm_vars(sys_getpgid);
    // def_detour_asm_vars(sys_flock);
    // def_detour_asm_vars(sys_readv);
    // def_detour_asm_vars(sys_writev);
    // def_detour_asm_vars(sys_readlink);
    // def_detour_asm_vars(sys_getpeername);
    // def_detour_asm_vars(sys_recv);
    // def_detour_asm_vars(sys_utime);
    // def_detour_asm_vars(sys_lseek);
    // def_detour_asm_vars(sys_listen);
    // def_detour_asm_vars(sys_socket);
    // def_detour_asm_vars(sys_vfork);
    // def_detour_asm_vars(sys_send);
    // def_detour_asm_vars(sys_setpgid);
    // def_detour_asm_vars(sys_setgroups16);
    // def_detour_asm_vars(sys_nanosleep);
    // def_detour_asm_vars(sys_semctl);
    // def_detour_asm_vars(sys_mlockall);
    // def_detour_asm_vars(sys_inotify_init);
    // def_detour_asm_vars(sys_fallocate);
    // def_detour_asm_vars(sys_unshare);
    // def_detour_asm_vars(sys_msync);
    // def_detour_asm_vars(sys_getresuid16);
    // def_detour_asm_vars(sys_add_key);
    // def_detour_asm_vars(sys_lsetxattr);
    // def_detour_asm_vars(sys_setreuid16);
    // def_detour_asm_vars(sys_getpgrp);
    // def_detour_asm_vars(sys_sched_get_priority_max);
    // def_detour_asm_vars(sys_pselect6);
    // def_detour_asm_vars(sys_setresgid16);
    // def_detour_asm_vars(sys_signalfd);
    // def_detour_asm_vars(sys_mprotect);
    // def_detour_asm_vars(sys_sched_getscheduler);
    // def_detour_asm_vars(sys_fcntl);
    // def_detour_asm_vars(sys_sigaltstack);
    // def_detour_asm_vars(sys_semop);
    // def_detour_asm_vars(sys_llistxattr);
    // def_detour_asm_vars(sys_epoll_pwait);
    // def_detour_asm_vars(sys_mlock);
    // def_detour_asm_vars(sys_pipe2);
    // def_detour_asm_vars(sys_semget);
    // def_detour_asm_vars(sys_epoll_wait);
    // def_detour_asm_vars(sys_keyctl);
    // def_detour_asm_vars(sys_getrandom);
    // def_detour_asm_vars(sys_open_by_handle_at);
    // def_detour_asm_vars(sys_munmap);
    // def_detour_asm_vars(sys_set_robust_list);
    // def_detour_asm_vars(sys_setpriority);
    // def_detour_asm_vars(sys_lgetxattr);
    // def_detour_asm_vars(sys_name_to_handle_at);
    // def_detour_asm_vars(sys_getsockname);
    // def_detour_asm_vars(sys_getrusage);
    // def_detour_asm_vars(sys_getgroups16);
    // def_detour_asm_vars(sys_prlimit64);
    // def_detour_asm_vars(sys_memfd_create);
    // def_detour_asm_vars(sys_signalfd4);
    // def_detour_asm_vars(sys_adjtimex);
    // def_detour_asm_vars(sys_getsockopt);
    // def_detour_asm_vars(sys_personality);
    // def_detour_asm_vars(sys_sched_setscheduler);
    // def_detour_asm_vars(sys_sched_getparam);
    // def_detour_asm_vars(sys_clock_nanosleep);
    // def_detour_asm_vars(sys_sched_get_priority_min);
    // def_detour_asm_vars(sys_sched_setaffinity);
    // def_detour_asm_vars(sys_remap_file_pages);
    // def_detour_asm_vars(sys_removexattr);
    // def_detour_asm_vars(sys_getresgid16);
    // def_detour_asm_vars(sys_setsockopt);
    // def_detour_asm_vars(sys_getdents);
    // def_detour_asm_vars(sys_io_destroy);
    // def_detour_asm_vars(sys_clock_getres);
    // def_detour_asm_vars(sys_shmctl);
    // def_detour_asm_vars(sys_setregid16);
    // def_detour_asm_vars(sys_setitimer);
    // def_detour_asm_vars(sys_utimensat);
    // def_detour_asm_vars(sys_inotify_add_watch);
    // def_detour_asm_vars(sys_msgrcv);
    // def_detour_asm_vars(sys_epoll_create);
    // def_detour_asm_vars(sys_getegid16);
    // def_detour_asm_vars(sys_socketpair);
    // def_detour_asm_vars(sys_rt_sigaction);
    // def_detour_asm_vars(sys_epoll_create1);
    // def_detour_asm_vars(sys_fsetxattr);
    // def_detour_asm_vars(sys_ppoll);
    // def_detour_asm_vars(sys_get_mempolicy);
    // def_detour_asm_vars(sys_rt_sigsuspend);
    // def_detour_asm_vars(sys_llseek);
    // def_detour_asm_vars(sys_old_readdir);
    // def_detour_asm_vars(sys_shmget);
    // def_detour_asm_vars(sys_mremap);
    // def_detour_asm_vars(sys_inotify_rm_watch);
    // def_detour_asm_vars(sys_madvise);
    // def_detour_asm_vars(sys_msgget);
    // def_detour_asm_vars(sys_epoll_ctl);
    // def_detour_asm_vars(sys_fgetxattr);
    // def_detour_asm_vars(sys_mknod);
    // def_detour_asm_vars(sys_shmat);
    // def_detour_asm_vars(sys_eventfd2);
    // def_detour_asm_vars(sys_getpriority);
    // def_detour_asm_vars(sys_inotify_init1);
    // def_detour_asm_vars(sys_io_setup);
    // def_detour_asm_vars(sys_ioprio_get);
}