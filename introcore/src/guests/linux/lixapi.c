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
#include <linux/sched.h>
#include "lixstack.h"

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
// INTSTATUS IntLixDup3Handler(_In_ void *Detour);
INTSTATUS IntLixWaitidHandler(_In_ void *Detour);
INTSTATUS IntLixWait4Handler(_In_ void *Detour);
INTSTATUS IntLixSched_rr_get_intervalHandler(_In_ void *Detour);
INTSTATUS IntLixExecveHandler(_In_ void *Detour);
INTSTATUS IntLixExecveatHandler(_In_ void *Detour);
INTSTATUS IntLixSetuid16Handler(_In_ void *Detour);
INTSTATUS IntLixSched_yieldHandler(_In_ void *Detour);
INTSTATUS IntLixSendmmsgHandler(_In_ void *Detour);
INTSTATUS IntLixGetpidHandler(_In_ void *Detour);
INTSTATUS IntLixGettidHandler(_In_ void *Detour);
INTSTATUS IntLixOldumountHandler(_In_ void *Detour);
INTSTATUS IntLixSetgid16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_getgid16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_timesHandler(_In_ void *Detour);
INTSTATUS IntLixsys_mountHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getcwdHandler(_In_ void *Detour);
INTSTATUS IntLixsys_faccessatHandler(_In_ void *Detour);
INTSTATUS IntLixsys_flistxattrHandler(_In_ void *Detour);
INTSTATUS IntLixsys_readlinkatHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getpgidHandler(_In_ void *Detour);
INTSTATUS IntLixsys_flockHandler(_In_ void *Detour);
INTSTATUS IntLixsys_readvHandler(_In_ void *Detour);
INTSTATUS IntLixsys_writevHandler(_In_ void *Detour);
INTSTATUS IntLixsys_readlinkHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getpeernameHandler(_In_ void *Detour);
INTSTATUS IntLixsys_recvHandler(_In_ void *Detour);
INTSTATUS IntLixsys_utimeHandler(_In_ void *Detour);
INTSTATUS IntLixsys_lseekHandler(_In_ void *Detour);
INTSTATUS IntLixsys_listenHandler(_In_ void *Detour);
INTSTATUS IntLixsys_socketHandler(_In_ void *Detour);
INTSTATUS IntLixsys_vforkHandler(_In_ void *Detour);
INTSTATUS IntLixsys_sendHandler(_In_ void *Detour);
INTSTATUS IntLixsys_setpgidHandler(_In_ void *Detour);
INTSTATUS IntLixsys_setgroups16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_semctlHandler(_In_ void *Detour);
INTSTATUS IntLixsys_mlockallHandler(_In_ void *Detour);
INTSTATUS IntLixsys_inotify_initHandler(_In_ void *Detour);
INTSTATUS IntLixsys_fallocateHandler(_In_ void *Detour);
INTSTATUS IntLixsys_unshareHandler(_In_ void *Detour);
INTSTATUS IntLixsys_msyncHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getresuid16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_add_keyHandler(_In_ void *Detour);
INTSTATUS IntLixsys_lsetxattrHandler(_In_ void *Detour);
INTSTATUS IntLixsys_setreuid16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_getpgrpHandler(_In_ void *Detour);
INTSTATUS IntLixsys_sched_get_priority_maxHandler(_In_ void *Detour);
INTSTATUS IntLixsys_pselect6Handler(_In_ void *Detour);
INTSTATUS IntLixsys_setresgid16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_signalfdHandler(_In_ void *Detour);
INTSTATUS IntLixsys_mprotectHandler(_In_ void *Detour);
INTSTATUS IntLixsys_sched_getschedulerHandler(_In_ void *Detour);
INTSTATUS IntLixsys_fcntlHandler(_In_ void *Detour);
INTSTATUS IntLixsys_sigaltstackHandler(_In_ void *Detour);
INTSTATUS IntLixsys_semopHandler(_In_ void *Detour);
INTSTATUS IntLixsys_llistxattrHandler(_In_ void *Detour);
INTSTATUS IntLixsys_epoll_pwaitHandler(_In_ void *Detour);
INTSTATUS IntLixsys_mlockHandler(_In_ void *Detour);
INTSTATUS IntLixsys_pipe2Handler(_In_ void *Detour);
INTSTATUS IntLixsys_semgetHandler(_In_ void *Detour);
INTSTATUS IntLixsys_epoll_waitHandler(_In_ void *Detour);
INTSTATUS IntLixsys_keyctlHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getrandomHandler(_In_ void *Detour);
INTSTATUS IntLixsys_open_by_handle_atHandler(_In_ void *Detour);
INTSTATUS IntLixsys_munmapHandler(_In_ void *Detour);
INTSTATUS IntLixsys_set_robust_listHandler(_In_ void *Detour);
INTSTATUS IntLixsys_setpriorityHandler(_In_ void *Detour);
INTSTATUS IntLixsys_lgetxattrHandler(_In_ void *Detour);
INTSTATUS IntLixsys_name_to_handle_atHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getsocknameHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getrusageHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getgroups16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_prlimit64Handler(_In_ void *Detour);
INTSTATUS IntLixsys_memfd_createHandler(_In_ void *Detour);
INTSTATUS IntLixsys_signalfd4Handler(_In_ void *Detour);
INTSTATUS IntLixsys_adjtimexHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getsockoptHandler(_In_ void *Detour);
INTSTATUS IntLixsys_personalityHandler(_In_ void *Detour);
INTSTATUS IntLixsys_sched_setschedulerHandler(_In_ void *Detour);
INTSTATUS IntLixsys_sched_getparamHandler(_In_ void *Detour);
INTSTATUS IntLixsys_clock_nanosleepHandler(_In_ void *Detour);
INTSTATUS IntLixsys_sched_get_priority_minHandler(_In_ void *Detour);
INTSTATUS IntLixsys_sched_setaffinityHandler(_In_ void *Detour);
INTSTATUS IntLixsys_remap_file_pagesHandler(_In_ void *Detour);
INTSTATUS IntLixsys_removexattrHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getresgid16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_setsockoptHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getdentsHandler(_In_ void *Detour);
INTSTATUS IntLixsys_io_destroyHandler(_In_ void *Detour);
INTSTATUS IntLixsys_clock_getresHandler(_In_ void *Detour);
INTSTATUS IntLixsys_shmctlHandler(_In_ void *Detour);
INTSTATUS IntLixsys_setregid16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_setitimerHandler(_In_ void *Detour);
INTSTATUS IntLixsys_utimensatHandler(_In_ void *Detour);
INTSTATUS IntLixsys_inotify_add_watchHandler(_In_ void *Detour);
INTSTATUS IntLixsys_msgrcvHandler(_In_ void *Detour);
INTSTATUS IntLixsys_epoll_createHandler(_In_ void *Detour);
INTSTATUS IntLixsys_getegid16Handler(_In_ void *Detour);
INTSTATUS IntLixsys_socketpairHandler(_In_ void *Detour);
INTSTATUS IntLixsys_rt_sigactionHandler(_In_ void *Detour);
INTSTATUS IntLixsys_epoll_create1Handler(_In_ void *Detour);
INTSTATUS IntLixsys_fsetxattrHandler(_In_ void *Detour);
INTSTATUS IntLixsys_ppollHandler(_In_ void *Detour);
INTSTATUS IntLixsys_get_mempolicyHandler(_In_ void *Detour);
INTSTATUS IntLixsys_rt_sigsuspendHandler(_In_ void *Detour);
INTSTATUS IntLixsys_llseekHandler(_In_ void *Detour);
INTSTATUS IntLixsys_old_readdirHandler(_In_ void *Detour);
INTSTATUS IntLixsys_shmgetHandler(_In_ void *Detour);
INTSTATUS IntLixsys_mremapHandler(_In_ void *Detour);
INTSTATUS IntLixsys_inotify_rm_watchHandler(_In_ void *Detour);
INTSTATUS IntLixsys_madviseHandler(_In_ void *Detour);
INTSTATUS IntLixsys_msggetHandler(_In_ void *Detour);
INTSTATUS IntLixsys_epoll_ctlHandler(_In_ void *Detour);
INTSTATUS IntLixsys_fgetxattrHandler(_In_ void *Detour);
INTSTATUS IntLixsys_mknodHandler(_In_ void *Detour);
INTSTATUS IntLixsys_shmatHandler(_In_ void *Detour);
INTSTATUS IntLixsys_eventfd2Handler(_In_ void *Detour);
INTSTATUS IntLixsys_getpriorityHandler(_In_ void *Detour);
INTSTATUS IntLixsys_inotify_init1Handler(_In_ void *Detour);
INTSTATUS IntLixsys_io_setupHandler(_In_ void *Detour);
INTSTATUS IntLixsys_ioprio_getHandler(_In_ void *Detour);
INTSTATUS IntLixGetcwdHandler(_In_ void *Detour);
INTSTATUS IntLixSleepHandler(_In_ void *Detour);

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
    __init_detour_entry(sys_newstat,                    IntLixStatHandle,               DETOUR_ENABLE_ALWAYS                                    ),
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
    __init_detour_entry(sys_waitid,                     IntLixWaitidHandler,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_wait4,                      IntLixWait4Handler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_sched_rr_get_interval,      IntLixSched_rr_get_intervalHandler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_execve,                     IntLixExecveHandler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_execveat,                   IntLixExecveatHandler,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_setuid16,                   IntLixSetuid16Handler,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_sched_yield,                IntLixSched_yieldHandler,        DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_sendmmsg,                   IntLixSendmmsgHandler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_getpid,                     IntLixGetpidHandler,              DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_gettid,                     IntLixGettidHandler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_oldumount,                  IntLixOldumountHandler,             DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_setgid16,                   IntLixSetgid16Handler,           DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(sys_getcwd,                     IntLixGetcwdHandler,            DETOUR_ENABLE_ALWAYS                                    ),
    __init_detour_entry(hrtimer_nanosleep,              IntLixSleepHandler,            DETOUR_ENABLE_ALWAYS                                    ),
    

};

char *d_path(QWORD addr){
    INTSTATUS status;
    QWORD fs = 0;
    DWORD RetLength = 0;
    char *buf = NULL;
    status = IntKernVirtMemFetchQword(addr + LIX_FIELD(TaskStruct, Fs), &fs);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the fs struct: 0x%08x\n", status);
        return buf;
    }
    QWORD dent = 0;
    status = IntKernVirtMemFetchQword(fs + LIX_FIELD(Fs, Pwd) + 8, &dent);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the pwd: 0x%08x\n", status);
        return buf;
    }
    IntLixPathGetPath(dent,&buf,&RetLength);
    if (!INT_SUCCESS(status))
    {
        ERROR("[ERROR] Failed reading the d_name: 0x%08x\n", status);
    }
    return buf;
}

INTSTATUS
IntLixSleepHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_setgid16" function.

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);

    DWORD RetLength1 = 0;
    BYTE buf1[0x10] = {0};
    status =IntVirtMemRead(pRegs->R9,0x10,pRegs->Cr3,buf1,&RetLength1);
    struct timespec sin;
    memcpy(&sin, &buf1, sizeof(sin));
    
    // LOG("[open] arg:(%s,%d,0%o),execname:%s,procName:%s,path:%s,%s,pid:%d,tgid:%d,return:%d,cmdline:%s,pwd:%s\n",buf,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask->Path->Name,pTask->Path->Path,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    LOG("[sleep] arg:(tv_sec1:%lu tv_nsec1:%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        sin.tv_sec,sin.tv_nsec,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_setgid16(%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSetgid16Handler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_setgid16" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;1;
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    // LOG("[open] arg:(%s,%d,0%o),execname:%s,procName:%s,path:%s,%s,pid:%d,tgid:%d,return:%d,cmdline:%s,pwd:%s\n",buf,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask->Path->Name,pTask->Path->Path,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    LOG("[setgid16] arg:(%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_setgid16(%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixOldumountHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_oldumount" function.

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[oldumount] arg:(%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        buf,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_oldumount(%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf,pRegs->R10);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixGettidHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_gettid" function.

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[gettid] arg:(),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R9,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_gettid() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixGetpidHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_getpid" function.

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[getpid] arg:(),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R9,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_getpid() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9);
    return INT_STATUS_SUCCESS;
}
//1234
INTSTATUS
IntLixSendmmsgHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_sendmmsg" function.

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[sendmmsg] arg:(%d,0x%x,%lu,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_sendmmsg(%d,0x%x,%lu,%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,,pRegs->R13);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSched_yieldHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_sched_yield" function.

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[sched_yield] arg:(),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R9,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_sched_yield() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9);
    return INT_STATUS_SUCCESS;
}

INTSTATUS
IntLixSetuid16Handler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_setuid16" function.

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[setuid16] arg:(%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_setuid16(%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R10);

    return INT_STATUS_SUCCESS;
}

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
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
    LOG("[execveat] arg:(%s,%s,0x%x,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path1,buf,pRegs->R11,pRegs->R12,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_execveat() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R14);

    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R9,0x10,pRegs->Cr3,buf,&RetLength);
    LOG("[execve] arg:(%s,0x%x,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        buf,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_execve() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R12);

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[Sched_rr_get_intervalHandler] arg:(%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_Sched_rr_get_intervalHandler() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R11);

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[waitid] arg:(%d,%u,0x%x,%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_waitid(%d,%u,0x%x,%d,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[wait4] arg:(%u,0x%x,%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_wait4(%u,0x%x,%d,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);

    return INT_STATUS_SUCCESS;
}

//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    if ((int)pRegs->R9<0||(int)pRegs->R10<0){
        LOG("[dup2] arg:(%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_dup2(%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
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
    LOG("[dup2] arg:(%s,%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,path1,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_dup2(%s,%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,path1,pRegs->R11);

    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    if ((int)pRegs->R9<0){
        LOG("[dup] arg:(%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_dup(%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);

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
    LOG("[dup] arg:(%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_dup(%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R10);

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
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
        LOG("[close] arg:(%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_close(%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R10);
    }else {
        LOG("[close] arg:(%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_close(%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
    }
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[recvmsg] arg:(%d,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_recvmsg(%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);

    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf1[0x10] = {0};
    status =IntVirtMemRead(pRegs->R13,0x10,pRegs->Cr3,buf1,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf1, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
        LOG("[recvfrom] arg:(%d,0x%x,%d,%d,family:AF_INET ip:%s port:%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_recvfrom(%d,0x%x,%d,%d,family:AF_INET ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        else if (sin.sin_family==AF_INET6)
        LOG("[recvfrom] arg:(%d,0x%x,%d,%d,family:AF_INET6 ip:%s port:%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
    }else{
        LOG("[recvfrom] arg:(%d,0x%x,%d,%d,0x%x,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_recvfrom(%d,0x%x,%d,%d,0x%x,0x%x) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[sendmsg] arg:(%d,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_sendmsg(%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);

    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf1[0x10] = {0};
    status =IntVirtMemRead(pRegs->R13,0x10,pRegs->Cr3,buf1,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf1, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
        LOG("[sendto] arg:(%d,0x%x,%d,%d,family:AF_INET ip:%s port:%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_sendto(%d,0x%x,%d,%d,family:AF_INET ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pRegs->R15);
        else if (sin.sin_family==AF_INET6)
        LOG("[sendto] arg:(%d,0x%x,%d,%d,family:AF_INET6 ip:%s port:%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
    }else{
        LOG("[sendto] arg:(%d,0x%x,%d,%d,0x%x,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_sendto(%d,0x%x,%d,%d,0x%x,0x%x) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R11,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);
    }
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
        LOG("[connect] arg:(%d,family:AF_INET ip:%s port:%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
            // LOG("process %s [%d,%d] sys_connect(%d,family:AF_INET ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        else if (sin.sin_family==AF_INET6)
        LOG("[connect] arg:(%d,family:AF_INET6 ip:%s port:%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    }else{
        LOG("[connect] arg:(%d,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_connect(%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
        LOG("[bind] arg:(%d,family:AF_INET ip:%s port:%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
            // LOG("process %s [%d,%d] sys_bind(%d,family:AF_INET ip:%s port:%d,%d) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        else if (sin.sin_family==AF_INET6)
        LOG("[bind] arg:(%d,family:AF_INET6 ip:%s port:%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    }else{
        LOG("[bind] arg:(%d,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_bind(%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
        LOG("[accept4] arg:(%d,family:AF_INET ip:%s port:%d,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
        
            // LOG("process %s [%d,%d] sys_accept4(%d,family:AF_INET ip:%s port:%d,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pRegs->R13);
        else if (sin.sin_family==AF_INET6)
        LOG("[accept4] arg:(%d,family:AF_INET6 ip:%s port:%d,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    }else{
        LOG("[accept4] arg:(%d,0x%x,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_accept4(%d,0x%x,0x%x,%d) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct sockaddr_in sin;
    memcpy(&sin, &buf, sizeof(sin));
    if (INT_SUCCESS(status))
    {
        if (sin.sin_family==AF_INET)
        LOG("[accept] arg:(%d,family:AF_INET ip:%s port:%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
            // LOG("process %s [%d,%d] sys_accept(%d,family:AF_INET ip:%s port:%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pRegs->R12);
        else if (sin.sin_family==AF_INET6)
        LOG("[accept] arg:(%d,family:AF_INET6 ip:%s port:%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,inet_ntoa(sin.sin_addr),ntohs(sin.sin_port),pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    }else{
    LOG("[accept] arg:(%d,0x%x,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%d,cmdline:%s,pwd:%s\n",
    pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_accept(%d,0x%x,0x%x) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    }

    return INT_STATUS_SUCCESS;
}
INTSTATUS
IntLixGetcwdHandler(
    _In_ void *Detour
    )
///
/// @brief Detour handler for "sys_getcwd" function.

/// @param[in] Detour Unused.
///
/// @return INT_STATUS_SUCCESS on success.
///
{
    INTSTATUS status;
    LIX_TASK_OBJECT *pTask,*fpTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    // pTask->Path->Path
    LOG("[getcwd] arg:(%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%d,cmdline:%s,pwd:%s\n"
    ,buf,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);

    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask,*fpTask;
    IG_ARCH_REGS const *pRegs = &gVcpu->Regs;
    UNREFERENCED_PARAMETER(Detour);
    pTask = IntLixTaskFindByGva(pRegs->R8);
    
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[open] arg:(%s,%d,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
    buf,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);

    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status1 =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("[write] arg:(%lu,%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_write(%lu,0x%x,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
        // IntLixStackDumpUmStackTrace(pTask);
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
        LOG("[write] arg:(%lu,%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_write(%lu,0x%x,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    }else{
        LOG("[write] arg:(%s,%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_write(%s,0x%x,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R10,pRegs->R11,pRegs->R12);
    }
    // IntLixStackDumpUmStackTrace(pTask);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("[finit_module] arg:(%d,%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_finit_module(%d,%s,%d) = %d\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LOG("[finit_module] arg:(%d,%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_finit_module(%d,%s,%d) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12);
    else
    LOG("[finit_module] arg:(%s,%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        
        // LOG("process %s [%d,%d] sys_finit_module(%s,%s,%d) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,path,buf,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[delete_module] arg:(%s,%u),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        buf,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
     
    // LOG("process %s [%d,%d] sys_delete_module(%s,%u) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,buf,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R11,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[init_module] arg:(0x%x,%lu,%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,buf,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
     
    // LOG("process %s [%d,%d] sys_init_module(0x%x,%lu,%s) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,buf,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[reboot] arg:(%d,%d,%u,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_reboot(%d,%d,%u,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf[0x186] = {0};
    status =IntVirtMemRead(pRegs->R9,0x186,pRegs->Cr3,buf,&RetLength);
    struct new_utsname sin;
    memcpy(&sin, &buf, sizeof(sin));
    LOG("[uname] arg:(sysname:%s nodename:%s release:%s version:%s machine:%s domainname:%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        sin.sysname,sin.nodename,sin.release,sin.version,sin.machine,sin.domainname,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_uname(sysname:%s nodename:%s release:%s version:%s machine:%s domainname:%s) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,sin.sysname,sin.nodename,sin.release,sin.version,sin.machine,sin.domainname,pRegs->R10);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[perf_event_open] arg:(0x%x,%u,%d,%d,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_perf_event_open(0x%x,%u,%d,%d,%lu) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R10,0x10,pRegs->Cr3,buf,&RetLength);
    struct timespec sin;
    memcpy(&sin, &buf, sizeof(sin));
    LOG("[clock_gettime] arg:(%d,tv_sec:%lu tv_nsec:%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,sin.tv_sec,sin.tv_nsec,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_clock_gettime(%d,tv_sec:%lu tv_nsec:%lu) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,sin.tv_sec,sin.tv_nsec,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[select] arg:(%d,0x%x,0x%x,0x%x,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_select(%d,0x%x,0x%x,0x%x,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[sigaction] arg:(%d,0x%x,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_sigaction(%d,0x%x,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[prctl] arg:(%d,%lu,%lu,%lu,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_prctl(%d,%lu,%lu,%lu,%lu) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
    return INT_STATUS_SUCCESS;
}

//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    if ((int)pRegs->R13<0){
        LOG("[mmap_pgoff] arg:(%lu,%lu,%lu,%lu,%lu,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_mmap_pgoff(%lu,%lu,%lu,%lu,%lu,%lu) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);
        return INT_STATUS_SUCCESS;
    }
    QWORD files = 0;
    status = IntKernVirtMemFetchQword(pTask->Gva + LIX_FIELD(TaskStruct, Files), &files);
    if (!INT_SUCCESS(status))
    {
        LOG("[mmap_pgoff] arg:(%lu,%lu,%lu,%lu,%lu,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_mmap_pgoff(%lu,%lu,%lu,%lu,%lu,%lu) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);
        // ERROR("[ERROR] Failed reading the files struct: 0x%08x\n", status);
        return INT_STATUS_SUCCESS;
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
    LOG("[mmap_pgoff] arg:(%lu,%lu,%lu,%lu,%lu,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_mmap_pgoff(%lu,%lu,%lu,%lu,%lu,%lu) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14,pRegs->R15);
    else
    LOG("[mmap_pgoff] arg:(%lu,%lu,%lu,%lu,%s,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,path,pRegs->R14,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R15,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_mmap_pgoff(%lu,%lu,%lu,%lu,%s,%lu) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,path,pRegs->R14,pRegs->R15);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("[pread64] arg:(%d,%s,%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_pread64(%d,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LOG("[pread64] arg:(%d,%s,%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_pread64(%d,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    else
    LOG("[pread64] arg:(%s,%s,%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_pread64(%s,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pTask->Tgid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("[pwrite64] arg:(%d,%s,%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_pwrite64(%d,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LOG("[pwrite64] arg:(%d,%s,%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_pwrite64(%d,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    else 
    LOG("[pwrite64] arg:(%s,%s,%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_pwrite64(%s,%s,%d,0x%x) = %d\n",pTask->Comm,pTask->Pid,pTask->Tgid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("[newfstatat] arg:(%d,%s,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_newfstatat(%d,%s,0x%x,%d) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LOG("[newfstatat] arg:(%d,%s,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_newfstatat(%d,%s,0x%x,%d) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    else
    LOG("[newfstatat] arg:(%s,%s,0x%x,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_newfstatat(%s,%s,0x%x,%d) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[lstat] arg:(%s,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_lstat(%s,0x%x) = %d\n",pTask->Comm,pTask->Pid,pTask->Tgid,buf,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[stat] arg:(%s,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_stat(%s,0x%x) = %d\n",pTask->Comm,pTask->Pid,pTask->Tgid,buf,pRegs->R10,pRegs->R11);
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
    if(INTRO_AGENT_TAG_CMD != pTask->AgentTag) return INT_STATUS_SUCCESS;
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    if (NULL == pTask)
    {
        ERROR("[ERROR] No task on for exec!\n");
        return INT_STATUS_INVALID_INTERNAL_STATE;
    }
    if ((int)pRegs->R9<0){
        LOG("[fstat] arg:(%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_fstat(%d,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
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
    LOG("[fstat] arg:(%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_fstat(%d,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
    else 
    LOG("[fstat] arg:(%s,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_fstat(%s,0x%x) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,path,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[access] arg:(%s,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_access(%s,0%o) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,buf,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R11,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("[symlinkat] arg:(%s,%d,%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf1,pRegs->R10,buf2,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_symlinkat(%s,%d,%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf1,pRegs->R10,buf2,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("[symlink] arg:(%s,%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf1,buf2,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_symlink(%s,%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf1,buf2,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R12,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("[linkat] arg:(%d,%s,%d,%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf1,pRegs->R11,buf2,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_linkat(%d,%s,%d,%s,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,buf1,pRegs->R11,buf2,pRegs->R13,pRegs->R14);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
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
    LOG("[unlinkat] arg:(%d,%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_unlinkat(%d,%s,%d) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12);
    else 
    LOG("[unlinkat] arg:(%d,%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_unlinkat(%s,%s,%d) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,path,buf,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    LOG("[unlink] arg:(%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf1,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_unlink(%s) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,buf1,pRegs->R10);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("[link] arg:(%s,%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf1,buf2,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_link(%s,%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf1,buf2,pRegs->R11);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("[openat] arg:(%d,%s,%d,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_openat(%d,%s,%d,0%o) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LOG("[openat] arg:(%d,%s,%d,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_openat(%d,%s,%d,0%o) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13);
    else
    LOG("[openat] arg:(%s,%s,%d,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,buf,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_openat(%s,%s,%d,0%o) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    LOG("[creat] arg:(%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf1,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_creat(%s,%d) = %ld\n",pTask->Comm,pTask->Pid,pTask->Tgid,buf1,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    LOG("[mkdir] arg:(%s,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf1,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_mkdir(%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf1,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R12,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("[renameat] arg:(%d,%s,%d,%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf1,pRegs->R11,buf2,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_renameat(%d,%s,%d,%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,buf1,pRegs->R11,buf2,pRegs->R13);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R12,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("[renameat2] arg:(%d,%s,%d,%s,%u),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf1,pRegs->R11,buf2,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_renameat2(%d,%s,%d,%s,%u) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,buf1,pRegs->R11,buf2,pRegs->R13,pRegs->R14);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf1[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf1,&RetLength);
    BYTE buf2[0x33] = {0};
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf2,&RetLength);
    LOG("[rename] arg:(%s,%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       buf1,buf2,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    
    // LOG("process %s [%d,%d] sys_rename(%s,%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf1,buf2,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("[fchownat] arg:(%d,%s,%u,%u,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_fchownat(%d,%s,%u,%u,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
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
    LOG("[fchownat] arg:(%d,%s,%u,%u,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_fchownat(%d,%s,%u,%u,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
    else 
    LOG("[fchownat] arg:(%s,%s,%u,%u,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,buf,pRegs->R11,pRegs->R12,pRegs->R13,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R14,pTask->CmdLine,buf01);
    
        // LOG("process %s [%d,%d] sys_fchownat(%s,%s,%u,%u,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,buf,pRegs->R11,pRegs->R12,pRegs->R13,pRegs->R14);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    if ((int)pRegs->R9<0){
        LOG("[fchown] arg:(%d,%u,%u),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_fchown(%d,%u,%u) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LOG("[fchown] arg:(%d,%u,%u),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_fchown(%d,%u,%u) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    else
    LOG("[fchown] arg:(%s,%u,%u),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_fchown(%s,%u,%u) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    if ((int)pRegs->R9<0){
        LOG("[fchmod] arg:(%d,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
     
        // LOG("process %s [%d,%d] sys_fchmod(%d,0%o) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
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
    LOG("[fchmod] arg:(%d,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
     
        // LOG("process %s [%d,%d] sys_fchmod(%d,0%o) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
    else
    LOG("[fchmod] arg:(%s,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
     
        // LOG("process %s [%d,%d] sys_fchmod(%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("[fchmodat] arg:(%d,%s,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
     
        // LOG("process %s [%d,%d] sys_fchmodat(%d,%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12);
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
    LOG("[fchmodat] arg:(%d,%s,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       pRegs->R9,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
     
        // LOG("process %s [%d,%d] sys_fchmodat(%d,%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,buf,pRegs->R11,pRegs->R12);
    else
    LOG("[fchmodat] arg:(%s,%s,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
       path,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
     
        // LOG("process %s [%d,%d] sys_fchmodat(%s,%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,buf,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[chown] arg:(%s,%u,%u),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        buf,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_chown(%s,%u,%u) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[chmod] arg:(%s,0%o),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        buf,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_chmod(%s,0%o) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    if ((int)pRegs->R9<0){
        LOG("[fchdir] arg:(%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_fchdir(%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
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
    LOG("[fchdir] arg:(%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_fchdir(%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
    else
    LOG("[fchdir] arg:(%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_fchdir(%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R10);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[kill] arg:(%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_kill(%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[chroot] arg:(%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        buf,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_chroot(%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf,pRegs->R10);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[time] arg:(0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_time(0x%x) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[ptrace] arg:(%ld,%ld,%lu,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R13,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_ptrace(%ld,%ld,%lu,%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12,pRegs->R13);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[alarm] arg:(%u),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_alarm(%u) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[chdir] arg:(%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        buf,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_chdir(%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf,pRegs->R10);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[setresuid] arg:(%d,%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_setresuid(%d,%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf[0x10] = {0};
    status =IntVirtMemRead(pRegs->R9,0x10,pRegs->Cr3,buf,&RetLength);
    struct timeval sin;
    memcpy(&sin, &buf, sizeof(sin));
    status =IntVirtMemRead(pRegs->R10,0x8,pRegs->Cr3,buf,&RetLength);
    struct timezone sin1;
    memcpy(&sin, &buf, sizeof(sin1));

    LOG("[gettimeofday] arg:(time_t:%ld suseconds_t:%ld,tz_minuteswest:%d tz_dsttime:%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        sin.tv_sec,sin.tv_usec,sin1.tz_minuteswest,sin1.tz_dsttime,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_gettimeofday(time_t:%ld suseconds_t:%ld,tz_minuteswest:%d tz_dsttime:%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,sin.tv_sec,sin.tv_usec,sin1.tz_minuteswest,sin1.tz_dsttime,pRegs->R11);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[brk] arg:(%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_brk(%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[ioctl] arg:(%u,%u,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_ioctl(%u,%u,%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[umask] arg:(%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_umask(%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[getrlimit] arg:(%u,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_getrlimit(%u,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[sigprocmask] arg:(%d,0x%x,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_sigprocmask(%d,0x%x,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[poll] arg:(0x%x,%u,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_poll(0x%x,%u,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[ustat] arg:(%u,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_ustat(%u,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[tkill] arg:(%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_tkill(%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[tgkill] arg:(%d,%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_tgkill(%d,%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R11,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[seccomp] arg:(%u,%u,%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,buf,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_seccomp(%u,%u,%s) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,buf,pRegs->R12);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[setsid] arg:(),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R9,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_setsid() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    if ((int)pRegs->R9<0){
        LOG("[fstatfs] arg:(%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_fstatfs(%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
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
    LOG("[fstatfs] arg:(%d,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_fstatfs(%d,0x%x) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
    else
    LOG("[fstatfs] arg:(%s,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_fstatfs(%s,0x%x) = %d\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R10,pRegs->R11);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[statfs] arg:(%s,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        buf,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_statfs(%s,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[capset] arg:(0x%x,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_capset(0x%x,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[capget] arg:(0x%x,0x%x),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_capget(0x%x,0x%x) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
    return INT_STATUS_SUCCESS;
}

//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    DWORD RetLength = 0;
    BYTE buf[0x70] = {0};
    status =IntVirtMemRead(pRegs->R9,0x70,pRegs->Cr3,buf,&RetLength);
    struct sysinfo sin;
    memcpy(&sin, &buf, sizeof(sin));
    LOG("[sysinfo] arg:(uptime:%ld loads[0]:%lu loads[1]:%lu loads[2]:%lu totalram:%lu freeram:%lu sharedram:%lu bufferram:%lu totalswap:%lu freeswap:%lu procs:%u pad:%lu totalhigh:%lu freehigh:%lu mem_unit:%u _f:%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        sin.uptime,sin.loads[0],sin.loads[1],sin.loads[2],sin.totalram,sin.freeram,sin.sharedram,sin.bufferram,sin.totalswap,sin.freeswap,sin.procs,sin.pad,sin.totalhigh,sin.freehigh,sin.mem_unit,sin._f,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_sysinfo(uptime:%ld loads[0]:%lu loads[1]:%lu loads[2]:%lu totalram:%lu freeram:%lu sharedram:%lu bufferram:%lu totalswap:%lu freeswap:%lu procs:%u pad:%lu totalhigh:%lu freehigh:%lu mem_unit:%u _f:%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,sin.uptime,sin.loads[0],sin.loads[1],sin.loads[2],sin.totalram,sin.freeram,sin.sharedram,sin.bufferram,sin.totalswap,sin.freeswap,sin.procs,sin.pad,sin.totalhigh,sin.freehigh,sin.mem_unit,sin._f,pRegs->R10);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    if ((int)pRegs->R9<0){
        if (SHUT_RD==pRegs->R10)
        LOG("[shutdown] arg:(%d,SHUT_RD),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_shutdown(%d,SHUT_RD) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R11);
        else if (SHUT_WR==pRegs->R10)
        LOG("[shutdown] arg:(%d,SHUT_WR),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_shutdown(%d,SHUT_WR) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R11);
        else if (SHUT_RDWR==pRegs->R10)
        LOG("[shutdown] arg:(%d,SHUT_RDWR),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_shutdown(%d,SHUT_RDWR) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R11);
        else 
        LOG("[shutdown] arg:(%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_shutdown(%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
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
        LOG("[shutdown] arg:(%d,SHUT_RD),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_shutdown(%d,SHUT_RD) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R11);
        else if (SHUT_WR==pRegs->R10)
        LOG("[shutdown] arg:(%d,SHUT_WR),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_shutdown(%d,SHUT_WR) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R11);
        else if (SHUT_RDWR==pRegs->R10)
        LOG("[shutdown] arg:(%d,SHUT_RDWR),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_shutdown(%d,SHUT_RDWR) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R11);
        else 
        LOG("[shutdown] arg:(%d,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_shutdown(%d,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11);
    }else{
        if (SHUT_RD==pRegs->R10)
        LOG("[shutdown] arg:(%s,SHUT_RD),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_shutdown(%s,SHUT_RD) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R11);
        else if (SHUT_WR==pRegs->R10)
        LOG("[shutdown] arg:(%s,SHUT_WR),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_shutdown(%s,SHUT_WR) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R11);
        else if (SHUT_RDWR==pRegs->R10)
        LOG("[shutdown] arg:(%s,SHUT_RDWR),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
            // LOG("process %s [%d,%d] sys_shutdown(%s,SHUT_RDWR) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R11);
        else 
        LOG("[shutdown] arg:(%s,%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,pRegs->R10,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R11,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_shutdown(%s,%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R10,pRegs->R11);
    }
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[geteuid] arg:(),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R9,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_geteuid() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[getuid] arg:(),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R9,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_getuid() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[getsid] arg:(%d),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_getsid(%d) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10);
    return INT_STATUS_SUCCESS;
}
//1234
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[getppid] arg:(),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R9,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_getppid() = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status1 =IntVirtMemRead(pRegs->R10,0x32,pRegs->Cr3,buf,&RetLength);
    if ((int)pRegs->R9<0){
        LOG("[read] arg:(%lu,%s,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_read(%lu,0x%x,%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
        // IntLixStackDumpUmStackTrace(pTask);
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
    LOG("[read] arg:(%lu,%s,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_read(%lu,0x%x,%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9,pRegs->R10,pRegs->R11,pRegs->R12);
    else 
    LOG("[read] arg:(%s,%s,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        path,buf,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
        // LOG("process %s [%d,%d] sys_read(%s,0x%x,%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,path,pRegs->R10,pRegs->R11,pRegs->R12);
    // IntLixStackDumpUmStackTrace(pTask);
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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    LOG("[sysfs] arg:(%d,%lu,%lu),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        pRegs->R9, pRegs->R10,pRegs->R11,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R12,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_sysfs(%d,%lu,%lu) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,pRegs->R9, pRegs->R10,pRegs->R11,pRegs->R12);

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
    LIX_TASK_OBJECT *pTask1;
    pTask1 = IntLixTaskFindByGva(pTask->RealParent);
    char *buf0 = d_path(pTask->Gva);
    char buf01[32];
    strcpy(buf01,buf0);
    BYTE buf[0x33] = {0};
    DWORD RetLength = 0;
    status =IntVirtMemRead(pRegs->R9,0x32,pRegs->Cr3,buf,&RetLength);
    LOG("[rmdir] arg:(%s),execname:%s,procName:%s,ppid:%d,pid:%d,tgid:%d,return:%ld,cmdline:%s,pwd:%s\n",
        buf,pTask->Comm,pTask->ProcName,pTask1->Pid,pTask->Pid,pTask->Tgid,pRegs->R10,pTask->CmdLine,buf01);
    // LOG("process %s [%d,%d] sys_rmdir(%s) = %ld\n",pTask->Comm, pTask->Pid,pTask->Tgid,buf,pRegs->R10);
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
