/*
 * Copyright (c) 2020 Bitdefender
 * SPDX-License-Identifier: Apache-2.0
 */
#include "lixapi.h"
#include "decoder.h"
#include "drivers.h"
#include "lixcrash.h"
#include "lixcred.h"
#include "lixmm.h"
#include "guests.h"
#include "crc32.h"
#include "lixksym.h"
#include "lixfiles.h"
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <sys/sysinfo.h>
#include <sys/statfs.h>
#include <sys/time.h>
#include <linux/utsname.h>

INTSTATUS IntLixRmdirHandle(_In_ void *Detour);
INTSTATUS IntLixSysfsHandle(_In_ void *Detour);
INTSTATUS IntLixAlarmHandle(_In_ void *Detour);
INTSTATUS IntLixReadHandle(_In_ void *Detour);
INTSTATUS IntLixGetppidHandle(_In_ void *Detour);
INTSTATUS IntLixGetsidHandle(_In_ void *Detour);
INTSTATUS IntLixGetuidHandle(_In_ void *Detour);
INTSTATUS IntLixGeteuidHandle(_In_ void *Detour);
INTSTATUS IntLixShutdownHandle(_In_ void *Detour);
INTSTATUS IntLixSysinfoeHandle(_In_ void *Detour);
INTSTATUS IntLixCapgetHandle(_In_ void *Detour);
INTSTATUS IntLixCapsetHandle(_In_ void *Detour);
INTSTATUS IntLixStatfsHandle(_In_ void *Detour);
INTSTATUS IntLixFstatfsHandle(_In_ void *Detour);
INTSTATUS IntLixSetsidHandle(_In_ void *Detour);
INTSTATUS IntLixSeccompHandle(_In_ void *Detour);
INTSTATUS IntLixTgkillHandle(_In_ void *Detour);
INTSTATUS IntLixTkillHandle(_In_ void *Detour);
INTSTATUS IntLixUstatHandle(_In_ void *Detour);
INTSTATUS IntLixPollHandle(_In_ void *Detour);
INTSTATUS IntLixSigprocmaskHandle(_In_ void *Detour);
INTSTATUS IntLixGetrlimitHandle(_In_ void *Detour);
INTSTATUS IntLixUmaskHandle(_In_ void *Detour);
INTSTATUS IntLixIoctlHandle(_In_ void *Detour);
INTSTATUS IntLixBrkHandle(_In_ void *Detour);
INTSTATUS IntLixGettimeofdayHandle(_In_ void *Detour);
INTSTATUS IntLixSetresuidHandle(_In_ void *Detour);
INTSTATUS IntLixChdirHandle(_In_ void *Detour);
INTSTATUS IntLixAlarmHandle(_In_ void *Detour);
INTSTATUS IntLixPtraceHandle(_In_ void *Detour);
INTSTATUS IntLixTimeHandle(_In_ void *Detour);
INTSTATUS IntLixChrootHandle(_In_ void *Detour);
INTSTATUS IntLixKillHandle(_In_ void *Detour);
INTSTATUS IntLixFchdirHandle(_In_ void *Detour);
INTSTATUS IntLixChmodHandle(_In_ void *Detour);
INTSTATUS IntLixChownHandle(_In_ void *Detour);
INTSTATUS IntLixFchmodatHandle(_In_ void *Detour);
INTSTATUS IntLixFchmodHandle(_In_ void *Detour);
INTSTATUS IntLixFchownHandle(_In_ void *Detour);
INTSTATUS IntLixFchownatHandle(_In_ void *Detour);
INTSTATUS IntLixRenameHandle(_In_ void *Detour);
INTSTATUS IntLixRenameat2Handle(_In_ void *Detour);
INTSTATUS IntLixRenameatHandle(_In_ void *Detour);
INTSTATUS IntLixMkdirHandle(_In_ void *Detour);
INTSTATUS IntLixCreatHandle(_In_ void *Detour);
INTSTATUS IntLixOpenatHandle(_In_ void *Detour);
INTSTATUS IntLixLinkHandle(_In_ void *Detour);
INTSTATUS IntLixUnlinkHandle(_In_ void *Detour);
INTSTATUS IntLixUnlinkatHandle(_In_ void *Detour);
INTSTATUS IntLixLinkatHandle(_In_ void *Detour);
INTSTATUS IntLixSymlinkHandle(_In_ void *Detour);
INTSTATUS IntLixSymlinkatHandle(_In_ void *Detour);
INTSTATUS IntLixAccessHandle(_In_ void *Detour);
INTSTATUS IntLixFstatHandle(_In_ void *Detour);
INTSTATUS IntLixStatHandle(_In_ void *Detour);
INTSTATUS IntLixLstatHandle(_In_ void *Detour);
INTSTATUS IntLixNewfstatatHandle(_In_ void *Detour);
INTSTATUS IntLixPwrite64Handle(_In_ void *Detour);
INTSTATUS IntLixPread64Handle(_In_ void *Detour);
INTSTATUS IntLixMmap_pgoffHandle(_In_ void *Detour);
INTSTATUS IntLixPrctlHandle(_In_ void *Detour);
INTSTATUS IntLixSigactionHandle(_In_ void *Detour);
INTSTATUS IntLixSelectHandle(_In_ void *Detour);
INTSTATUS IntLixClock_gettimeHandle(_In_ void *Detour);
INTSTATUS IntLixPerf_event_openHandle(_In_ void *Detour);
INTSTATUS IntLixNewunameHandle(_In_ void *Detour);
INTSTATUS IntLixRebootHandle(_In_ void *Detour);
INTSTATUS IntLixInit_moduleHandle(_In_ void *Detour);
INTSTATUS IntLixDelete_moduleHandle(_In_ void *Detour);
INTSTATUS IntLixFinit_moduleHandle(_In_ void *Detour);
INTSTATUS IntLixWriteHandle(_In_ void *Detour);
INTSTATUS IntLixOpenHandler(_In_ void *Detour);
INTSTATUS IntLixAcceptHandler(_In_ void *Detour);
INTSTATUS IntLixAccept4Handler(_In_ void *Detour);
INTSTATUS IntLixBindHandler(_In_ void *Detour);
INTSTATUS IntLixConnectHandler(_In_ void *Detour);
INTSTATUS IntLixSendtoHandler(_In_ void *Detour);
INTSTATUS IntLixSendmsgHandler(_In_ void *Detour);
INTSTATUS IntLixRecvfromHandler(_In_ void *Detour);
INTSTATUS IntLixRecvmsgHandler(_In_ void *Detour);
INTSTATUS IntLixCloseHandler(_In_ void *Detour);
INTSTATUS IntLixDupHandler(_In_ void *Detour);
INTSTATUS IntLixDup2Handler(_In_ void *Detour);
INTSTATUS IntLixDup3Handler(_In_ void *Detour);
INTSTATUS IntLixWaitidHandler(_In_ void *Detour);
INTSTATUS IntLixWait4Handler(_In_ void *Detour);
INTSTATUS IntLixSched_rr_get_intervalHandler(_In_ void *Detour);
INTSTATUS IntLixExecveHandler(_In_ void *Detour);
INTSTATUS IntLixExecveatHandler(_In_ void *Detour);

///
/// @brief Create a new #LIX_FN_DETOUR entry.
///
/// The 'FunctionName', 'Callback' and 'EnableFlags' are provided by the caller and the ID of the detour-entry is
/// generated.
///
#define __init_detour_entry(fn_name, callback, flags)                           \
    {                                                                           \
        .FunctionName = #fn_name,                                               \
        .HijackFunctionName = NULL,                                             \
        .Callback = (callback),                                                 \
        .Id = det_ ## fn_name,                                                  \
        .EnableFlags = (flags),                                                 \
    }


///
/// @brief Create a new #LIX_FN_DETOUR entry that appends the provided 'regex' to the end of the 'FunctioName'.
///
/// The 'FunctionName', 'Callback', 'EnableFlags' and 'Regex' are provided by the caller and the ID of the detour-entry
/// is generated.
///
#define __init_detour_entry_regex(fn_name, regex, callback, flags)              \
    {                                                                           \
        .FunctionName = #fn_name regex,                                         \
        .HijackFunctionName = NULL,                                             \
        .Callback = callback,                                                   \
        .Id = det_ ## fn_name,                                                  \
        .EnableFlags = flags,                                                   \
    }



///
/// @brief Create a new #LIX_FN_DETOUR entry that is used for middle-function detours.
///
/// The 'FunctionName', 'Callback', 'EnableFlags' and 'HijackFunctionName' are provided by the caller and the ID of the
/// detour-entry is generated.
///
#define __init_detour_entry_hijack(fn_name, hijack_fn_name, callback, flags)    \
    {                                                                           \
        .FunctionName = #fn_name,                                               \
        .HijackFunctionName = #hijack_fn_name,                                  \
        .Callback = callback,                                                   \
        .Id = det_ ## fn_name ## _ ## hijack_fn_name,                           \
        .EnableFlags = flags,                                                   \
    }



///
/// @brief An array of the #LIX_FN_DETOUR that contains all detours used by the introspection engine.
///
const LIX_FN_DETOUR gLixHookHandlersx64[] =
{
    __init_detour_entry(commit_creds,                   IntLixCommitCredsHandle,        DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(arch_jump_label_transform,      IntLixJumpLabelHandler,         INTRO_OPT_PROT_KM_LX_TEXT_READS                         ),
    __init_detour_entry(module_param_sysfs_setup,       IntDriverLoadHandler,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(module_param_sysfs_remove,      IntDriverUnloadHandler,         DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(wake_up_new_task,               IntLixTaskHandleFork,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(flush_old_exec,                 IntLixTaskHandleExec,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(begin_new_exec,                 IntLixTaskHandleExec,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(do_exit,                        IntLixTaskHandleDoExit,         DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(arch_ptrace,                    IntLixTaskHandlePtrace,         INTRO_OPT_ENABLE_UM_PROTECTION                          ),
    __init_detour_entry(compat_arch_ptrace,             IntLixTaskHandlePtrace,         INTRO_OPT_ENABLE_UM_PROTECTION                          ),

    __init_detour_entry_regex(process_vm_rw_core,  "*", IntLixTaskHandleVmRw,         INTRO_OPT_ENABLE_UM_PROTECTION                          ),

    __init_detour_entry(__vma_link_rb,                  IntLixVmaInsert,                INTRO_OPT_ENABLE_UM_PROTECTION                          ),
    __init_detour_entry(change_protection,              IntLixVmaChangeProtection,      INTRO_OPT_ENABLE_UM_PROTECTION                          ),
    __init_detour_entry(vma_adjust,                     IntLixVmaAdjust,                INTRO_OPT_ENABLE_UM_PROTECTION                          ),
    __init_detour_entry(__vma_adjust,                   IntLixVmaAdjust,                INTRO_OPT_ENABLE_UM_PROTECTION                          ),
    __init_detour_entry(vma_rb_erase,                   IntLixVmaRemove,                INTRO_OPT_ENABLE_UM_PROTECTION                          ),
    __init_detour_entry(__vma_rb_erase,                 IntLixVmaRemove,                INTRO_OPT_ENABLE_UM_PROTECTION                          ),
    __init_detour_entry(expand_downwards,               IntLixVmaExpandDownwards,       INTRO_OPT_ENABLE_UM_PROTECTION                          ),
    __init_detour_entry(complete_signal,                IntLixCrashHandle,              INTRO_OPT_ENABLE_UM_PROTECTION                          ),
    __init_detour_entry(text_poke,                      IntLixTextPokeHandler,          DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(__text_poke,                    IntLixTextPokeHandler,          DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(ftrace_write,                   IntLixFtraceHandler,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(panic,                          IntLixCrashPanicHandler,        INTRO_OPT_PANIC_CLEANUP | INTRO_OPT_EVENT_OS_CRASH      ),
    __init_detour_entry(crash_kexec,                    IntLixCrashPanicHandler,        INTRO_OPT_PANIC_CLEANUP | INTRO_OPT_EVENT_OS_CRASH      ),
    __init_detour_entry(__access_remote_vm,             IntLixAccessRemoteVmHandler,    INTRO_OPT_ENABLE_UM_PROTECTION                          ),

    __init_detour_entry_hijack(mprotect_fixup,     vma_wants_writenotify,          IntLixVmaChangeProtection,      INTRO_OPT_ENABLE_UM_PROTECTION),
    __init_detour_entry_hijack(do_munmap,          rb_erase,                       IntLixVmaRemove,                INTRO_OPT_ENABLE_UM_PROTECTION),
    __init_detour_entry_hijack(vma_adjust,         rb_erase,                       IntLixVmaRemove,                INTRO_OPT_ENABLE_UM_PROTECTION),
    
    __init_detour_entry(do_rmdir,                       IntLixRmdirHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_sysfs,                      IntLixSysfsHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_read,                       IntLixReadHandle,               DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_getppid,                    IntLixGetppidHandle,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_getsid,                     IntLixGetsidHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_getuid,                     IntLixGetuidHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_geteuid,                    IntLixGeteuidHandle,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_shutdown,                   IntLixShutdownHandle,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(do_sysinfo,                     IntLixSysinfoeHandle,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_capget,                     IntLixCapgetHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_capset,                     IntLixCapsetHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_statfs,                     IntLixStatfsHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_fstatfs,                    IntLixFstatfsHandle,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_setsid,                     IntLixSetsidHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_seccomp,                    IntLixSeccompHandle,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_tgkill,                     IntLixTgkillHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_tkill,                      IntLixTkillHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_ustat,                      IntLixUstatHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_poll,                       IntLixPollHandle,               DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_sigprocmask,                IntLixSigprocmaskHandle,        DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_getrlimit,                  IntLixGetrlimitHandle,          DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_umask,                      IntLixUmaskHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_ioctl,                      IntLixIoctlHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_brk,                        IntLixBrkHandle,                DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_gettimeofday,               IntLixGettimeofdayHandle,       DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_setresuid,                  IntLixSetresuidHandle,          DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_chdir,                      IntLixChdirHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_alarm,                      IntLixAlarmHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_ptrace,                     IntLixPtraceHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_time,                       IntLixTimeHandle,               DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_chroot,                     IntLixChrootHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_kill,                       IntLixKillHandle,               DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_fchdir,                     IntLixFchdirHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_chmod,                      IntLixChmodHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_chown,                      IntLixChownHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_fchmodat,                   IntLixFchmodatHandle,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_fchmod,                     IntLixFchmodHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_fchown,                     IntLixFchownHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_fchownat,                   IntLixFchownatHandle,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_rename,                     IntLixRenameHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_renameat2,                  IntLixRenameat2Handle,          DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_renameat,                   IntLixRenameatHandle,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_mkdir,                      IntLixMkdirHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_creat,                      IntLixCreatHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_openat,                     IntLixOpenatHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_link,                       IntLixLinkHandle,               DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_unlink,                     IntLixUnlinkHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_unlinkat,                   IntLixUnlinkatHandle,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_linkat,                     IntLixLinkatHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_symlink,                    IntLixSymlinkHandle,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_symlinkat,                  IntLixSymlinkatHandle,          DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_access,                     IntLixAccessHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_fstat,                      IntLixFstatHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_stat,                       IntLixStatHandle,               DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_lstat,                      IntLixLstatHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_newfstatat,                 IntLixNewfstatatHandle,         DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_pwrite64,                   IntLixPwrite64Handle,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_pread64,                    IntLixPread64Handle,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_mmap_pgoff,                 IntLixMmap_pgoffHandle,         DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_prctl,                      IntLixPrctlHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(do_sigaction,                   IntLixSigactionHandle,          DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_select,                     IntLixSelectHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_clock_gettime,              IntLixClock_gettimeHandle,      DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_perf_event_open,            IntLixPerf_event_openHandle,    DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_newuname,                   IntLixNewunameHandle,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_reboot,                     IntLixRebootHandle,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_init_module,                IntLixInit_moduleHandle,        DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_delete_module,              IntLixDelete_moduleHandle,      DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_finit_module,               IntLixFinit_moduleHandle,       DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_write,                      IntLixWriteHandle,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(do_sys_open,                    IntLixOpenHandler,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_accept,                     IntLixAcceptHandler,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_accept4,                    IntLixAccept4Handler,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_bind,                       IntLixBindHandler,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_connect,                    IntLixConnectHandler,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_sendto,                     IntLixSendtoHandler,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_sendmsg,                    IntLixSendmsgHandler,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_recvfrom,                   IntLixRecvfromHandler,          DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_recvmsg,                    IntLixRecvmsgHandler,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_close,                      IntLixCloseHandler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_dup,                        IntLixDupHandler,               DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_dup2,                       IntLixDup2Handler,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_dup3,                       IntLixDup3Handler,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_waitid,                     IntLixWaitidHandler,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_wait4,                      IntLixWait4Handler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_sched_rr_get_interval,      IntLixSched_rr_get_intervalHandler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_execve,                     IntLixExecveHandler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_execveat,                   IntLixExecveatHandler,             DETOUR_ENABLE_ALWAYS                                    ),
    
};

INTSTATUS
IntLixExecveatHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_execveat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path1 = NULL;
    pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path1, &pathLen);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-execveat](%s,%s,0x%x,0x%x,%d) = %ld\n",pTask->Comm, pTask->Pid,path1,buf,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);

    return INT_STATUS_SUCCESS;
}
INTSTATUS
IntLixExecveHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_execve" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-execve](%s,0x%x,0x%x) = %ld\n",pTask->Comm, pTask->Pid,buf,pRegs->R10,pRegs->R11,pRegs->R12);

    return INT_STATUS_SUCCESS;
}
INTSTATUS
IntLixSched_rr_get_intervalHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_sched_rr_get_interval" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-Sched_rr_get_intervalHandler](%d,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);

    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixWaitidHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_waitid" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-waitid](%d,%u,0x%x,%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);

    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixWait4Handler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_wait4" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-wait4](%u,0x%x,%d,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);

    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixDup3Handler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_dup3" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    if ((int)pRegs->R9<0||(int)pRegs->R10<0){
        LOG("process %s [%d] dup3(%d,%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);

        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R10 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path1 = NULL;
    pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path1, &pathLen);
    LOG("process %s [%d] [SYSCALL-dup3](%s,%s,%d) = %ld\n",pTask->Comm, pTask->Pid,path,path1,pRegs->R11,pRegs->R12);

    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixDup2Handler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_dup2" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R10 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path1 = NULL;
    pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path1, &pathLen);
    LOG("process %s [%d] [SYSCALL-dup2](%s,%s) = %ld\n",pTask->Comm, pTask->Pid,path,path1,pRegs->R11);

    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixDupHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_dup" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] dup(%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);

        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    LOG("process %s [%d] [SYSCALL-dup](%s) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R10);

    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixCloseHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_close" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (INT_SUCCESS(status)){
        LOG("process %s [%d] [SYSCALL-close](%s) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R10);
    }else {
        LOG("process %s [%d] [SYSCALL-close](%lu) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);
    }
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixRecvmsgHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_recvmsg" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-recvmsg](%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);

    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixRecvfromHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_recvfrom" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf1[0x10] = {0};
    status =IntVirtMemRead(pRegs->R13,0x10,pRegs->Cr3,buf1,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf1, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
            LOG("process %s [%d] [SYSCALL-recvfrom](%d,0x%x,%d,%d,family:AF_INET ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        else if (sin.sin_family==AF_INET6)
            LOG("process %s [%d] [SYSCALL-recvfrom](%d,0x%x,%d,%d,family:AF_INET6 ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_LOCAL)
        //     LOG("process %s [%d] recvfrom(%d,0x%x,%d,%d,family:AF_LOCAL ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_UNSPEC)
        //     LOG("process %s [%d] recvfrom(%d,0x%x,%d,%d,family:AF_UNSPEC ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_AX25)
        //     LOG("process %s [%d] recvfrom(%d,0x%x,%d,%d,family:AF_AX25 ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_IPX)
        //     LOG("process %s [%d] recvfrom(%d,0x%x,%d,%d,family:AF_IPX ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_NETLINK)
        //     LOG("process %s [%d] recvfrom(%d,0x%x,%d,%d,family:AF_NETLINK ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else
        //     LOG("process %s [%d] recvfrom(%d,0x%x,%d,%d,family:%d ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
    }
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSendmsgHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_sendmsg" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-sendmsg](%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);

    return INT_STATUS_SUCCESS;
}
INTSTATUS
IntLixSendtoHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_sendto" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf1[0x10] = {0};
    status =IntVirtMemRead(pRegs->R13,0x10,pRegs->Cr3,buf1,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf1, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
            LOG("process %s [%d] [SYSCALL-sendto](%d,0x%x,%d,%d,family:AF_INET ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        else if (sin.sin_family==AF_INET6)
            LOG("process %s [%d] [SYSCALL-sendto](%d,0x%x,%d,%d,family:AF_INET6 ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_LOCAL)
        //     LOG("process %s [%d] sendto(%d,0x%x,%d,%d,family:AF_LOCAL ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_UNSPEC)
        //     LOG("process %s [%d] sendto(%d,0x%x,%d,%d,family:AF_UNSPEC ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_AX25)
        //     LOG("process %s [%d] sendto(%d,0x%x,%d,%d,family:AF_AX25 ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_IPX)
        //     LOG("process %s [%d] sendto(%d,0x%x,%d,%d,family:AF_IPX ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else if (sin.sin_family==AF_NETLINK)
        //     LOG("process %s [%d] sendto(%d,0x%x,%d,%d,family:AF_NETLINK ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        // else
        //     LOG("process %s [%d] sendto(%d,0x%x,%d,%d,family:%d ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
    }
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixConnectHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_connect" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
            LOG("process %s [%d] [SYSCALL-connect](%d,family:AF_INET ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        else if (sin.sin_family==AF_INET6)
            LOG("process %s [%d] [SYSCALL-connect](%d,family:AF_INET6 ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_LOCAL)
        //     LOG("process %s [%d] connect(%d,family:AF_LOCAL ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_UNSPEC)
        //     LOG("process %s [%d] connect(%d,family:AF_UNSPEC ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_AX25)
        //     LOG("process %s [%d] connect(%d,family:AF_AX25 ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_IPX)
        //     LOG("process %s [%d] connect(%d,family:AF_IPX ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_NETLINK)
        //     LOG("process %s [%d] connect(%d,family:AF_NETLINK ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else
        //     LOG("process %s [%d] connect(%d,family:%d ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
    }
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixBindHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_bind" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
            LOG("process %s [%d] [SYSCALL-bind](%d,family:AF_INET ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        else if (sin.sin_family==AF_INET6)
            LOG("process %s [%d] [SYSCALL-bind](%d,family:AF_INET6 ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_LOCAL)
        //     LOG("process %s [%d] bind(%d,family:AF_LOCAL ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_UNSPEC)
        //     LOG("process %s [%d] bind(%d,family:AF_UNSPEC ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_AX25)
        //     LOG("process %s [%d] bind(%d,family:AF_AX25 ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_IPX)
        //     LOG("process %s [%d] bind(%d,family:AF_IPX ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_NETLINK)
        //     LOG("process %s [%d] bind(%d,family:AF_NETLINK ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else
        //     LOG("process %s [%d] bind(%d,family:%d ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
    }
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixAccept4Handler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_accept4" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
            LOG("process %s [%d] [SYSCALL-accept4](%d,family:AF_INET ip:%s port:%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pRegs->R13);
        else if (sin.sin_family==AF_INET6)
            LOG("process %s [%d] [SYSCALL-accept4](%d,family:AF_INET6 ip:%s port:%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pRegs->R13);
        // else if (sin.sin_family==AF_LOCAL)
        //     LOG("process %s [%d] accept4(%d,family:AF_LOCAL ip:%s port:%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pRegs->R13);
        // else if (sin.sin_family==AF_UNSPEC)
        //     LOG("process %s [%d] accept4(%d,family:AF_UNSPEC ip:%s port:%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pRegs->R13);
        // else if (sin.sin_family==AF_AX25)
        //     LOG("process %s [%d] accept4(%d,family:AF_AX25 ip:%s port:%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pRegs->R13);
        // else if (sin.sin_family==AF_IPX)
        //     LOG("process %s [%d] accept4(%d,family:AF_IPX ip:%s port:%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pRegs->R13);
        // else if (sin.sin_family==AF_NETLINK)
        //     LOG("process %s [%d] accept4(%d,family:AF_NETLINK ip:%s port:%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pRegs->R13);
        // else 
        //     LOG("process %s [%d] accept4(%d,family:%d ip:%s port:%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pRegs->R13);
    }
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixAcceptHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_accept" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
            LOG("process %s [%d] [SYSCALL-accept](%d,family:AF_INET ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        else if (sin.sin_family==AF_INET6)
            LOG("process %s [%d] [SYSCALL-accept](%d,family:AF_INET6 ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_LOCAL)
        //     LOG("process %s [%d] accept(%d,family:AF_LOCAL ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_UNSPEC)
        //     LOG("process %s [%d] accept(%d,family:AF_UNSPEC ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_AX25)
        //     LOG("process %s [%d] accept(%d,family:AF_AX25 ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_IPX)
        //     LOG("process %s [%d] accept(%d,family:AF_IPX ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else if (sin.sin_family==AF_NETLINK)
        //     LOG("process %s [%d] accept(%d,family:AF_NETLINK ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        // else 
        //     LOG("process %s [%d] accept(%d,family:%d ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,sin.sin_family,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
    }

    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixOpenHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "do_sys_open" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-open](%s,%d,0%o) = %ld\n",pTask->Comm, pTask->Pid,buf,pRegs->R10,pRegs->R11,pRegs->R12);

    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixWriteHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_write" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status,status1;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    // LOG("%d\n",pTask->AgentTag);
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    // BYTE buf[0x33] = {0};
    // DWORD RetLength = 0;
    // status1 =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-write](%lu,0x%x,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
    {
        LOG("process %s [%d] [SYSCALL-write](%lu,0x%x,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    }else{
        LOG("process %s [%d] [SYSCALL-write](%s,0x%x,%d) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R10,pRegs->R11,pRegs->R12);
    }
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixFinit_moduleHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_finit_module" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-pread64](%d,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-finit_module](%d,%s,%d) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12);
    else
        LOG("process %s [%d] [SYSCALL-finit_module](%s,%s,%d) = %ld\n",pTask->Comm,pTask->Pid,path,buf,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}


INTSTATUS
IntLixDelete_moduleHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_delete_module" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-delete_module](%s,%u) = %ld\n",pTask->Comm,pTask->Pid,buf,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixInit_moduleHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_init_module" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R11,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-init_module](0x%x,%lu,%s) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,buf,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixRebootHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_reboot" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-reboot](%d,%d,%u,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixNewunameHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_newuname" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf[0x186] = {0};
    status =IntVirtMemRead(pRegs->R9,0x186,pRegs->Cr3,buf,&RetLength);
    struct new_utsname sin;
    memcpy(&sin, &buf, sizeof(sin));
    LOG("process %s [%d] [SYSCALL-uname](sysname:%s nodename:%s release:%s version:%s machine:%s domainname:%s) = %ld\n",pTask->Comm,pTask->Pid,sin.sysname,sin.nodename,sin.release,sin.version,sin.machine,sin.domainname,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixPerf_event_openHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_perf_event_open" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-perf_event_open](0x%x,%u,%d,%d,%lu) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixClock_gettimeHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_clock_gettime" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct timespec sin;
    memcpy(&sin, &buf, sizeof(sin));
    LOG("process %s [%d] [SYSCALL-clock_gettime](%d,tv_sec:%lu tv_nsec:%lu) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,sin.tv_sec,sin.tv_nsec,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSelectHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_select" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-select](%d,0x%x,0x%x,0x%x,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSigactionHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "do_sigaction" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-sigaction](%d,0x%x,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixPrctlHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_prctl" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-prctl](%d,%lu,%lu,%lu,%lu) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
    return INT_STATUS_SUCCESS;
}


INTSTATUS
IntLixMmap_pgoffHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_mmap_pgoff" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    if ((int)pRegs->R13<0){
        LOG("process %s [%d] [SYSCALL-mmap_pgoff](%lu,%lu,%lu,%lu,%lu,%lu) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        LOG("process %s [%d] [SYSCALL-mmap_pgoff](%lu,%lu,%lu,%lu,%lu,%lu) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R13 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-mmap_pgoff](%lu,%lu,%lu,%lu,%lu,%lu) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);
    else
        LOG("process %s [%d] [SYSCALL-mmap_pgoff](%lu,%lu,%lu,%lu,%s,%lu) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,path,pRegs->R14,pRegs->R15);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixPread64Handle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_pread64" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-pread64](%d,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-pread64](%d,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    else
        LOG("process %s [%d] [SYSCALL-pread64](%s,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixPwrite64Handle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_pwrite64" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-pwrite64](%d,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-pwrite64](%d,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    else 
        LOG("process %s [%d] [SYSCALL-pwrite64](%s,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixNewfstatatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_newfstatat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-newfstatat](%d,%s,0x%x,%d) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-newfstatat](%d,%s,0x%x,%d) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    else
        LOG("process %s [%d] [SYSCALL-newfstatat](%s,%s,0x%x,%d) = %ld\n",pTask->Comm,pTask->Pid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixLstatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_lstat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-lstat](%s,0x%x) = %d\n",pTask->Comm,pTask->Pid,buf,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixStatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_stat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-stat](%s,0x%x) = %d\n",pTask->Comm,pTask->Pid,buf,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixFstatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_fstat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] fstat(%d,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-fstat](%d,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
    else 
        LOG("process %s [%d] [SYSCALL-fstat](%s,0x%x) = %ld\n",pTask->Comm,pTask->Pid,path,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixAccessHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_access" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-access](%s,0%o) = %ld\n",pTask->Comm,pTask->Pid,buf,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSymlinkatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_symlinkat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R11,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("process %s [%d] [SYSCALL-symlinkat](%s,%d,%s) = %ld\n",pTask->Comm, pTask->Pid,buf1,pRegs->R10,buf2,pRegs->R12);
    return INT_STATUS_SUCCESS;
}


INTSTATUS
IntLixSymlinkHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_symlink" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("process %s [%d] [SYSCALL-symlink](%s,%s) = %ld\n",pTask->Comm, pTask->Pid,buf1,buf2,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixLinkatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_linkat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R12,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("process %s [%d] [SYSCALL-linkat](%d,%s,%d,%s,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,buf1,pRegs->R11,buf2,pRegs->R13,pRegs->R14);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixUnlinkatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_unlinkat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-unlinkat](%d,%s,%d) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12);
    else 
        LOG("process %s [%d] [SYSCALL-unlinkat](%s,%s,%d) = %ld\n",pTask->Comm,pTask->Pid,path,buf,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixUnlinkHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_unlink" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    LOG("process %s [%d] [SYSCALL-unlink](%s) = %ld\n",pTask->Comm,pTask->Pid,buf1,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixLinkHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_link" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("process %s [%d] [SYSCALL-link](%s,%s) = %ld\n",pTask->Comm, pTask->Pid,buf1,buf2,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixOpenatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_openat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-openat](%d,%s,%d,0%o) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-openat](%d,%s,%d,0%o) = %ld\n",pTask->Comm,pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    else
        LOG("process %s [%d] [SYSCALL-openat](%s,%s,%d,0%o) = %ld\n",pTask->Comm,pTask->Pid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixCreatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_creat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    LOG("process %s [%d] [SYSCALL-creat](%s,%d) = %ld\n",pTask->Comm,pTask->Pid,buf1,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixMkdirHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_mkdir" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    LOG("process %s [%d] [SYSCALL-mkdir](%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,buf1,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixRenameatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_renameat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R12,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("process %s [%d] [SYSCALL-renameat](%d,%s,%d,%s) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,buf1,pRegs->R11,buf2,pRegs->R13);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixRenameat2Handle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_renameat2" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R12,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("process %s [%d] [SYSCALL-renameat2](%d,%s,%d,%s,%u) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,buf1,pRegs->R11,buf2,pRegs->R13,pRegs->R14);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixRenameHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_rename" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("process %s [%d] [SYSCALL-rename](%s,%s) = %ld\n",pTask->Comm, pTask->Pid,buf1,buf2,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixFchownatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_fchownat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-fchownat](%d,%s,%u,%u,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-fchownat](%d,%s,%u,%u,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
    else 
        LOG("process %s [%d] [SYSCALL-fchownat](%s,%s,%u,%u,%d) = %ld\n",pTask->Comm, pTask->Pid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixFchownHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_fchown" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-fchown](%d,%u,%u) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-fchown](%d,%u,%u) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    else
        LOG("process %s [%d] [SYSCALL-fchown](%s,%u,%u) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixFchmodHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_fchmod" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-fchmod](%d,0%o) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-fchmod](%d,0%o) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
    else
        LOG("process %s [%d] [SYSCALL-fchmod](%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixFchmodatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_fchmodat" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-fchmodat](%d,%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-fchmodat](%d,%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,buf,pRegs->R11,pRegs->R12);
    else
        LOG("process %s [%d] [SYSCALL-fchmodat](%s,%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,path,buf,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixChownHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_chown" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-chown](%s,%u,%u) = %ld\n",pTask->Comm, pTask->Pid,buf,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixChmodHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_chmod" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-chmod](%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,buf,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixFchdirHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_fchdir" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-fchdir](%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-fchdir](%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);
    else
        LOG("process %s [%d] [SYSCALL-fchdir](%s) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixKillHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_kill" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-kill](%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixChrootHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_chroot" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-chroot](%s) = %ld\n",pTask->Comm, pTask->Pid,buf,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixTimeHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_time" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-time](0x%x) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixPtraceHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_ptrace" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-ptrace](%ld,%ld,%lu,%lu) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixAlarmHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_alarm" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-alarm](%u) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixChdirHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_chdir" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-chdir](%s) = %ld\n",pTask->Comm, pTask->Pid,buf,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSetresuidHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_setresuid" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-setresuid](%d,%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixGettimeofdayHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_gettimeofday" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R9,0x10,pRegs->Cr3,buf,&RetLength);
    struct timeval sin;
    memcpy(&sin, &buf, sizeof(sin));
    status =IntVirtMemRead(pRegs->R10,0x8,pRegs->Cr3,buf,&RetLength);
    struct timezone sin1;
    memcpy(&sin, &buf, sizeof(sin1));
    LOG("process %s [%d] [SYSCALL-gettimeofday](time_t:%ld suseconds_t:%ld,tz_minuteswest:%d tz_dsttime:%d) = %ld\n",pTask->Comm, pTask->Pid,sin.tv_sec,sin.tv_usec,sin1.tz_minuteswest,sin1.tz_dsttime,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixBrkHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_brk" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-brk](%lu) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixIoctlHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_ioctl" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-ioctl](%u,%u,%lu) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixUmaskHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_umask" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-umask](%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}
INTSTATUS
IntLixGetrlimitHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_getrlimit" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-getrlimit](%u,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSigprocmaskHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_sigprocmask" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-sigprocmask](%d,0x%x,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixPollHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_tkill" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-poll](0x%x,%u,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixUstatHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_tkill" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-ustat](%u,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixTkillHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_tkill" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-tkill](%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixTgkillHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_tgkill" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-tgkill](%d,%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSeccompHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_seccomp" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R11,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-seccomp](%u,%u,%s) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,buf,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSetsidHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_setsid" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-setsid]() = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixFstatfsHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_fstatfs" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-fstatfs](%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-fstatfs](%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
    else
        LOG("process %s [%d] [SYSCALL-fstatfs](%s,0x%x) = %d\n",pTask->Comm, pTask->Pid,path,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixStatfsHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_statfs" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status,status1;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    char path[0x30];
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("process %s [%d] [SYSCALL-statfs](%s,0x%x) = %ld\n",pTask->Comm, pTask->Pid,buf,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixCapsetHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_capset" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-capset](0x%x,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixCapgetHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_capget" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-capget](0x%x,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}


INTSTATUS
IntLixSysinfoeHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "do_sysinfo" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    DWORD RetLength = 0;
    BYTE buf[0x70] = {0};
    status =IntVirtMemRead(pRegs->R9,0x70,pRegs->Cr3,buf,&RetLength);
    struct sysinfo sin;
    memcpy(&sin, &buf, sizeof(sin));
    LOG("process %s [%d] [SYSCALL-sysinfo](uptime:%ld loads[0]:%lu loads[1]:%lu loads[2]:%lu totalram:%lu freeram:%lu sharedram:%lu bufferram:%lu totalswap:%lu freeswap:%lu procs:%u pad:%lu totalhigh:%lu freehigh:%lu mem_unit:%u _f:%s) = %ld\n",pTask->Comm, pTask->Pid,sin.uptime,sin.loads[0],sin.loads[1],sin.loads[2],sin.totalram,sin.freeram,sin.sharedram,sin.bufferram,sin.totalswap,sin.freeswap,sin.procs,sin.pad,sin.totalhigh,sin.freehigh,sin.mem_unit,sin._f,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixShutdownHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_shutdown" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    if ((int)pRegs->R9<0){
        if (SHUT_RD==pRegs->R10)
            LOG("process %s [%d] [SYSCALL-shutdown](%d,SHUT_RD) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11);
        else if (SHUT_WR==pRegs->R10)
            LOG("process %s [%d] [SYSCALL-shutdown](%d,SHUT_WR) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11);
        else if (SHUT_RDWR==pRegs->R10)
            LOG("process %s [%d] [SYSCALL-shutdown](%d,SHUT_RDWR) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11);
        else LOG("process %s [%d] [SYSCALL-shutdown](%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status)){
        if (SHUT_RD==pRegs->R10)
            LOG("process %s [%d] [SYSCALL-shutdown](%d,SHUT_RD) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11);
        else if (SHUT_WR==pRegs->R10)
            LOG("process %s [%d] [SYSCALL-shutdown](%d,SHUT_WR) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11);
        else if (SHUT_RDWR==pRegs->R10)
            LOG("process %s [%d] [SYSCALL-shutdown](%d,SHUT_RDWR) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R11);
        else LOG("process %s [%d] [SYSCALL-shutdown](%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11);
    }else{
        if (SHUT_RD==pRegs->R10)
            LOG("process %s [%d] [SYSCALL-shutdown](%s,SHUT_RD) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R11);
        else if (SHUT_WR==pRegs->R10)
            LOG("process %s [%d] [SYSCALL-shutdown](%s,SHUT_WR) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R11);
        else if (SHUT_RDWR==pRegs->R10)
            LOG("process %s [%d] [SYSCALL-shutdown](%s,SHUT_RDWR) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R11);
        else LOG("process %s [%d] [SYSCALL-shutdown](%s,%d) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R10,pRegs->R11);
    }
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixGeteuidHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_geteuid" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-geteuid]() = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixGetuidHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_getuid" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-getuid]() = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixGetsidHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_getsid" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-getsid](%d) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixGetppidHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_getppid" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-getppid]() = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixReadHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_read" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status,status1;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    // BYTE buf[0x33] = {0};
    // DWORD RetLength = 0;
    // status1 =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("process %s [%d] [SYSCALL-read](%lu,0x%x,%lu) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return status;
    }
    QWORD fd_array = 0;
    status = IntKernVirtMemFetchQword(files + 160 + pRegs->R9 * 8, &fd_array);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fd_array: 0x%08x\n", status);
        return status;
    }
    char *path = NULL;
    DWORD pathLen = 0;
    status = IntLixFileGetPath(fd_array, &path, &pathLen);
    if (!INT_SUCCESS(status))
        LOG("process %s [%d] [SYSCALL-read](%lu,0x%x,%lu) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    else
        LOG("process %s [%d] [SYSCALL-read](%s,0x%x,%lu) = %ld\n",pTask->Comm, pTask->Pid,path,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSysfsHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_sysfs" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(gVcpu->Regs.R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LOG("process %s [%d] [SYSCALL-sysfs](%d,%lu,%lu) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9, pRegs->R10,pRegs->R11,pRegs->R12);

    return INT_STATUS_SUCCESS;
}


INTSTATUS
IntLixRmdirHandle(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "do_rmdir" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;

    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(gVcpu->Regs.R8);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    if (!INT_SUCCESS(status))
    {
        LOG("process %s [%d] [SYSCALL-rmdir](0x%x) = %ld\n",pTask->Comm, pTask->Pid,pRegs->R9,pRegs->R10);
    }else {
        LOG("process %s [%d] [SYSCALL-rmdir](%s) = %ld\n",pTask->Comm, pTask->Pid,buf,pRegs->R10);
    }

    return INT_STATUS_SUCCESS;
}



static INTSTATUS
IntLixApiHijackHook(
    _In_ const LIX_FN_DETOUR *FnDetour,
    _Out_ QWORD *Address
    )
///
/// @brief  Fetch the address of the hijack function name provided by the #LIX_FN_DETOUR.
///
/// This function fetch the address of the #LIX_FN_DETOUR.FunctionName and parse the function. For each instruction the
/// function looks for 'CALL rel addr' pattern and if the pattern matches, the relative address is compared with
/// #LIX_FN_DETOUR.HijackFunctionName relative address.
///
/// @param[in]  FnDetour    The internal structure of the detour entry.
/// @param[out] Address     On success, contains the address of the hijack function.
///
/// @retval INT_STATUS_SUCCESS      On success.
/// @retval INT_STATUS_NOT_FOUND    If the provided hijack function name is not found.
///
{
    INTSTATUS status = INT_STATUS_SUCCESS;
    INSTRUX instrux;
    QWORD ksymStart = 0;
    QWORD ksymEnd = 0;
    QWORD ksymHijack = 0;

    *Address = 0;

    ksymHijack = IntKsymFindByName(FnDetour->HijackFunctionName, NULL);
    if (!ksymHijack)
    {
        ERROR("[ERROR] IntLixGuestFindKsymByName failed with status: 0x%08x. (%s)\n",
              status, FnDetour->HijackFunctionName);
        return status;
    }

    ksymStart = IntKsymFindByName(FnDetour->FunctionName, &ksymEnd);
    if (!ksymStart)
    {
        ERROR("[ERROR] IntLixGuestFindKsymByName failed with status: 0x%08x. (%s)\n", status, FnDetour->FunctionName);
        return status;
    }

    while (ksymStart < ksymEnd)
    {
        status = IntDecDecodeInstruction(IG_CS_TYPE_64B, ksymStart, &instrux);
        if (!INT_SUCCESS(status))
        {
            ERROR("[ERROR] IntDecDecodeInstruction failed with status: 0x%08x.\n", status);
            return status;
        }

        if (instrux.Instruction == ND_INS_CALLNR)
        {
            QWORD hijackRelativeAddr = ksymHijack - (ksymStart + 5);

            if (hijackRelativeAddr == instrux.Operands[0].Info.RelativeOffset.Rel)
            {
                *Address = ksymStart;

                return INT_STATUS_SUCCESS;
            }
        }

        ksymStart += instrux.Length;
    }

    return INT_STATUS_NOT_FOUND;
}


static INTSTATUS
IntLixApiHook(
    _In_ const LIX_FN_DETOUR *FnDetour,
    _Out_ BOOLEAN *MustValidateThreads
    )
///
/// @brief Will hook one function as described by the FnDetour.
///
/// If the provided #LIX_FN_DETOUR describes a middle-function detour, the #IntLixApiHijackHook is called to fetch the
/// address of the function, otherwise the IntKsymFindByName is called. The found address is passed to the
/// #IntDetSetLixHook to hook it.
///
/// @param[in]  FnDetour            The internal structure of the detour entry.
/// @param[out] MustValidateThreads On success, contains true if the thread safeness must validate the running threads,
///                                 otherwise false
///
/// @retval INT_STATUS_SUCCESS      On success.
/// @retval INT_STATUS_NOT_FOUND    If the provided #LIX_FN_DETOUR is not found.
///
{
    INTSTATUS status = INT_STATUS_SUCCESS;
    QWORD functionAddress = 0;

    if (FnDetour->HijackFunctionName == NULL)
    {
        functionAddress = IntKsymFindByName(FnDetour->FunctionName, NULL);
        if (!functionAddress)
        {
            ERROR("[ERROR] Critical API '%s' not found! Aborting!\n", FnDetour->FunctionName);
            return INT_STATUS_NOT_FOUND;
        }

        // TRACE("[DETOUR] Found function '%s' @ 0x%016llx\n", FnDetour->FunctionName, functionAddress);
    }
    else
    {
        status = IntLixApiHijackHook(FnDetour, &functionAddress);
        if (!INT_SUCCESS(status))
        {
            ERROR("[ERROR] Critical API '%s' not found! Aborting!\n", FnDetour->FunctionName);
            return INT_STATUS_NOT_FOUND;
        }
        TRACE("[DETOUR] Found hijack function '%s' inside function '%s' @ 0x%016llx\n",
              FnDetour->HijackFunctionName, FnDetour->FunctionName, functionAddress);
    }

    *MustValidateThreads = TRUE;

    status = IntDetSetLixHook(functionAddress, FnDetour, MustValidateThreads);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed to detour %s: 0x%08x\n", FnDetour->FunctionName, status);

        IntDisasmGva(functionAddress, 0x20);

        return status;
    }

    return INT_STATUS_SUCCESS;
}


static __forceinline BOOLEAN
IntLixApiCmpFunctionNameWithHash(
    _In_ const char *Name,
    _In_ DWORD NameHash
    )
///
/// @brief Check if the crc32 of the Name is equal to the provided NameHash.
///
/// @param[in]  Name        A string that contains the name of the function.
/// @param[in]  NameHash    The crc32 that is compared with the crc32 of the Name.
///
/// @retval     True if the NameHash is equal to the crc32 of the Name.
///
{
    return NameHash == Crc32String(Name, INITIAL_CRC_VALUE);
}


INTSTATUS
IntLixApiHookAll(
    void
    )
///
/// @brief Iterates through all APIs that can be hooked and sets requested hooks.
///
/// The function name of the #LIX_FN_DETOUR may be duplicated, but it has different 'HijackFunctionName'.
/// The 'HookHandler' field of the #LIX_FUNCTION structure describes the index of the #LIX_FN_DETOUR that must be
/// hooked.
///
/// @retval INT_STATUS_SUCCESS      On success.
/// @retval INT_STATUS_NOT_FOUND    If the provided #LIX_FN_DETOUR is not found.
///
{
    INTSTATUS status = INT_STATUS_SUCCESS;
    BOOLEAN validateThreads = FALSE;

    for (DWORD i = 0; i < gLixGuest->OsSpecificFields.FunctionsCount; i++)
    {
        DWORD descriptorCount = 0;
        DWORD descriptorNumber = gLixGuest->OsSpecificFields.Functions[i].HookHandler;

        for (DWORD j = 0; j < ARRAYSIZE(gLixHookHandlersx64); j++)
        {
            if (IntLixApiCmpFunctionNameWithHash(gLixHookHandlersx64[j].FunctionName,
                                                 gLixGuest->OsSpecificFields.Functions[i].NameHash))
            {
                if (descriptorCount != descriptorNumber)
                {
                    descriptorCount++;
                    continue;
                }

                descriptorCount++;

                BOOLEAN mustValidate = FALSE;
                status = IntLixApiHook(&gLixHookHandlersx64[j], &mustValidate);
                if (!INT_SUCCESS(status))
                {
                    ERROR("[ERROR] Failed to set hook, status: 0x%x\n", status);
                    return status;
                }

                if (mustValidate)
                {
                    validateThreads = TRUE;
                }

                break;
            }
        }
    }

    status = IntKernVirtMemWrite(gLixGuest->MmAlloc.Detour.Data.Address, sizeof(QWORD), &gGuest.CoreOptions.Current);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] IntKernVirtMemWrite failed for 0x%llx with status: 0x%08x\n",
              gLixGuest->MmAlloc.Detour.Data.Address, status);
        return status;

    }

    TRACE("[DETOUR] Linux detours activated... \n");

    if (!validateThreads)
    {
        LOG("[LIXAPI] No need for validating threads!\n");
        return INT_STATUS_SUCCESS;
    }

    LOG("[LIXAPI] Ensuring no thread will return into our hooks!\n");

    status = IntThrSafeCheckThreads(THS_CHECK_DETOURS);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] IntThrSafeCheckThreads failed: 0x%08x\n", status);
        return status;
    }

    return INT_STATUS_SUCCESS;
}


void
IntLixApiUpdateHooks(
    void
    )
///
/// @brief Update the hookable APIs according to the current Introcore options.
///
/// This function writes the 'ProtectionOptions' field of the #LIX_HYPERCALL_PAGE.
///
{
    IntPauseVcpus();

    INTSTATUS status = INT_STATUS_SUCCESS;

    // The memory zone that contains the #LIX_HYPERCALL_PAGE is protected against write/execute
    status = IntKernVirtMemPatchQword(gLixGuest->MmAlloc.Detour.Data.Address + OFFSET_OF(LIX_HYPERCALL_PAGE,
                                                                                         ProtectionOptions),
                                      gGuest.CoreOptions.Current);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] IntKernVirtMemPatchQword failed with status: 0x%08x\n", status);
    }

    IntResumeVcpus();
}
