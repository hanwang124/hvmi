/*
 * Copyright (c) 2020 Bitdefender
 * SPDX-License-Identifier: Apache-2.0
 */
#ifndef _HANDLERS_H_
#define _HANDLERS_H_

#pragma pack(push, 8)

typedef enum {
    det_commit_creds = 0,
    det_arch_jump_label_transform,
    det_module_param_sysfs_setup,
    det_module_param_sysfs_remove,
    det_wake_up_new_task,
    det_flush_old_exec,
    det_begin_new_exec,
    det_do_exit,
    det_arch_ptrace,
    det_compat_arch_ptrace,
    det_process_vm_rw_core,
    det___vma_link_rb,
    det_change_protection,
    det_vma_adjust,
    det___vma_adjust,
    det_vma_rb_erase,
    det___vma_rb_erase,
    det_expand_downwards,
    det_complete_signal,
    det_text_poke,
    det___text_poke,
    det_ftrace_write,
    det_panic,
    det_crash_kexec,
    det___access_remote_vm,
    det_mprotect_fixup_vma_wants_writenotify,
    det_do_munmap_rb_erase,
    det_vma_adjust_rb_erase,

    det_do_rmdir,
    det_sys_sysfs,
    det_sys_read,
    det_sys_getppid,
    det_sys_getsid,
    det_sys_getuid,
    det_sys_geteuid,
    det_sys_shutdown,
    det_do_sysinfo,
    det_sys_capget,
    det_sys_capset,
    det_sys_statfs,
    det_sys_fstatfs,
    det_sys_setsid,
    det_sys_seccomp,
    det_sys_tgkill,
    det_sys_tkill,
    det_sys_ustat,
    det_sys_poll,
    det_sys_sigprocmask,
    det_sys_getrlimit,
    det_sys_umask,
    det_sys_ioctl,
    det_sys_brk,
    det_sys_gettimeofday,
    det_sys_setresuid,
    det_sys_chdir,
    det_sys_alarm,
    det_sys_ptrace,
    det_sys_time,
    det_sys_chroot,
    det_sys_kill,
    det_sys_fchdir,
    det_sys_chmod,
    det_sys_chown,
    det_sys_fchmodat,
    det_sys_fchmod,
    det_sys_fchown,
    det_sys_fchownat,
    det_sys_rename,
    det_sys_renameat2,
    det_sys_renameat,
    det_sys_mkdir,
    det_sys_creat,
    det_sys_openat,
    det_sys_link,
    det_sys_unlink,
    det_sys_unlinkat,
    det_sys_linkat,
    det_sys_symlink,
    det_sys_symlinkat,
    det_sys_access,
    det_sys_fstat,
    det_sys_stat,
    det_sys_lstat,
    det_sys_execve,
    det_sys_execveat,
    det_sys_newfstatat,
    det_sys_pwrite64,
    det_sys_pread64,
    det_sys_mmap_pgoff,
    det_sys_prctl,
    det_do_sigaction,
    det_sys_select,
    det_sys_clock_gettime,
    det_sys_perf_event_open,
    det_sys_newuname,
    det_sys_reboot,
    det_sys_init_module,
    det_sys_delete_module,
    det_sys_finit_module,

    det_max_id
} DETOUR_ID;

typedef char * (d_path_fn)(void *path, char *buf, int buflen);

typedef struct _LIX_GUEST_OS_SPECIFIC {
    struct {
        unsigned int CredAltered;
    } Info;

    struct {
        unsigned int MmOffset;
        unsigned int FlagsOffset;
        unsigned int FileOffset;
        unsigned int VmNextOffset;
        unsigned int VmPrevOffset;
        unsigned int Rb;

        unsigned int ProtectionBit;
    } Vma;

    struct {
        unsigned int FlagsOffset;
        unsigned int Rb;

        unsigned int ProtectionBit;
    } Mm;

    struct {
        unsigned int InExecve;
        unsigned int InExecveBit;
    } Task;

    struct {
        unsigned int FileOffset;
    } Binprm;

    struct {
        unsigned int DentryOffset;
        unsigned int PathOffset;
    } File;

    struct {
        unsigned int InodeOffset;
    } Dentry;

    struct {
        unsigned int Mode;
        unsigned int Uid;
        unsigned int Gid;
    } Inode;

    unsigned int CurrentTaskOffset;
    unsigned int CurrentCpuOffset;

    void *PercpuMemPtr;
    d_path_fn *DPathFnPtr;
} LIX_GUEST_OS_SPECIFIC;


typedef struct _LIX_GUEST_DETOUR {
    char Name[32];
    char HijackName[32];
    unsigned long long Address;
    unsigned long long RelocatedCode;
    unsigned long long JumpBack;
    unsigned long long EnableOptions;
} LIX_GUEST_DETOUR;


typedef struct _LIX_HYPERCALL_PAGE
{
    unsigned long long ProtectionOptions;
    unsigned long long DetoursCount;

    LIX_GUEST_DETOUR Detours[det_max_id];

    LIX_GUEST_OS_SPECIFIC OsSpecificFields;
} LIX_HYPERCALL_PAGE;

#pragma pack(pop)

#endif // _HANDLERS_H_
