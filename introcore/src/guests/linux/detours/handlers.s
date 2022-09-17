	.file	"handlers.c"
	.intel_syntax noprefix
# GNU C11 (Ubuntu 7.5.0-3ubuntu1~18.04) version 7.5.0 (x86_64-linux-gnu)
#	compiled by GNU C version 7.5.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version isl-0.19-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I ../../../../../include/public/
# -imultiarch x86_64-linux-gnu handlers.c -m64 -masm=intel
# -mgeneral-regs-only -march=nehalem -Os -Wall -Wextra
# -Wno-unused-parameter -fverbose-asm -ffreestanding -fno-jump-tables -fPIE
# -fomit-frame-pointer -fno-stack-protector -Wformat-security
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -falign-labels -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcode-hoisting -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize
# -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
# -free -freg-struct-return -freorder-blocks -freorder-functions
# -frerun-cse-after-loop -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fschedule-insns2 -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
# -fstore-merging -fstrict-aliasing -fstrict-overflow
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
# -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vrp -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store -mcx16
# -mfp-ret-in-387 -mfxsr -mgeneral-regs-only -mglibc -mieee-fp
# -mlong-double-80 -mno-fancy-math-387 -mno-sse4 -mpopcnt -mpush-args
# -mred-zone -msahf -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.align 16
	.type	vmcall, @function
vmcall:
.LFB1:
	.cfi_startproc
	mov	eax, edi	#, id
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rax	#,
# handlers.c:314:     return  (hypercall_info.Detours[id].EnableOptions == -1ULL)
	inc	rax	# tmp95
	imul	rax, rax, 96	# tmp96, tmp95,
# handlers.c:321: {
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
# handlers.c:314:     return  (hypercall_info.Detours[id].EnableOptions == -1ULL)
	lea	rdx, hypercall_info[rip]	# tmp93,
	mov	rax, QWORD PTR 8[rdx+rax]	# _8, hypercall_info.Detours[id_5(D)].EnableOptions
# handlers.c:315:         || ((hypercall_info.Detours[id].EnableOptions & hypercall_info.ProtectionOptions) != 0);
	cmp	rax, -1	# _8,
	je	.L2	#,
# handlers.c:323:         return 0;
	xor	esi, esi	# <retval>
# handlers.c:322:     if (!is_detour_enabled(id)) {
	test	QWORD PTR hypercall_info[rip], rax	# hypercall_info.ProtectionOptions, _8
	je	.L1	#,
.L2:
# handlers.c:328:     asm volatile("vmcall" : "+S" (_out_param), "+a"(_out_value) : "D"(24), "b"(id): );
	xor	esi, esi	# _out_param
	mov	eax, 34	# _out_value,
	mov	edi, 24	# tmp103,
#APP
# 328 "handlers.c" 1
	vmcall
# 0 "" 2
# handlers.c:331:     volatile struct inactive_task_frame _reserved = { 0 };
#NO_APP
	lea	rdi, -56[rsp]	# tmp106,
	mov	ecx, 14	# tmp108,
	xor	eax, eax	# tmp107
	rep stosd
.L1:
# handlers.c:335: }
	pop	rdx	#
	.cfi_def_cfa_offset 40
	mov	rax, rsi	#, <retval>
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	vmcall, .-vmcall
	.align 16
	.globl	d_path
	.type	d_path, @function
d_path:
.LFB2:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rsi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 4, -56
	push	rcx	#
	.cfi_def_cfa_offset 64
	.cfi_offset 2, -64
	push	rdx	#
	.cfi_def_cfa_offset 72
	.cfi_offset 1, -72
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 80
# handlers.c:341:     void *path = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
	mov	esi, DWORD PTR hypercall_info[rip+12100]	# hypercall_info.OsSpecificFields.CurrentCpuOffset, hypercall_info.OsSpecificFields.CurrentCpuOffset
#APP
# 341 "handlers.c" 1
	mov esi, gs:[rsi]	# ret, hypercall_info.OsSpecificFields.CurrentCpuOffset
# 0 "" 2
# handlers.c:343:     return hypercall_info.OsSpecificFields.DPathFnPtr(path_struct, path, PAGE_SIZE);
#NO_APP
	mov	edx, 4096	#,
# handlers.c:341:     void *path = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
	sal	esi, 12	#,
	add	rsi, QWORD PTR hypercall_info[rip+12104]	# path, hypercall_info.OsSpecificFields.PercpuMemPtr
# handlers.c:343:     return hypercall_info.OsSpecificFields.DPathFnPtr(path_struct, path, PAGE_SIZE);
	call	[QWORD PTR hypercall_info[rip+12112]]	# hypercall_info.OsSpecificFields.DPathFnPtr
# handlers.c:344: }
	add	rsp, 8	#,
	.cfi_def_cfa_offset 72
	pop	rdx	#
	.cfi_def_cfa_offset 64
	pop	rcx	#
	.cfi_def_cfa_offset 56
	pop	rsi	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2:
	.size	d_path, .-d_path
	.align 16
	.globl	_memcpy
	.type	_memcpy, @function
_memcpy:
.LFB3:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	mov	rax, rdi	# dest, dest
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
# handlers.c:353:     while (len--)
	xor	ecx, ecx	# ivtmp.521
# handlers.c:349: {
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
.L14:
# handlers.c:353:     while (len--)
	cmp	rdx, rcx	# len, ivtmp.521
	je	.L17	#,
# handlers.c:355:         *d++ = *s++;
	mov	dil, BYTE PTR [rsi+rcx]	# _1, MEM[base: src_7(D), index: ivtmp.521_14, offset: 0B]
	mov	BYTE PTR [rax+rcx], dil	# MEM[base: dest_6(D), index: ivtmp.521_14, offset: 0B], _1
	inc	rcx	# ivtmp.521
	jmp	.L14	#
.L17:
# handlers.c:359: }
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3:
	.size	_memcpy, .-_memcpy
	.align 16
	.globl	store_regs
	.type	store_regs, @function
store_regs:
.LFB4:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
	sub	rsp, 224	#,
	.cfi_def_cfa_offset 264
# handlers.c:367:     regs.Rax = __read_reg("rax");
#APP
# 367 "handlers.c" 1
	mov rax, rax	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR [rsp], rax	# regs.Rax, val
# handlers.c:368:     regs.Rcx = __read_reg("rcx");
#APP
# 368 "handlers.c" 1
	mov rax, rcx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 8[rsp], rax	# regs.Rcx, val
# handlers.c:369:     regs.Rdx = __read_reg("rdx");
#APP
# 369 "handlers.c" 1
	mov rax, rdx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 16[rsp], rax	# regs.Rdx, val
# handlers.c:370:     regs.Rbx = __read_reg("rbx");
#APP
# 370 "handlers.c" 1
	mov rax, rbx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 24[rsp], rax	# regs.Rbx, val
# handlers.c:371:     regs.Rsp = __read_reg("rsp");
#APP
# 371 "handlers.c" 1
	mov rax, rsp	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 32[rsp], rax	# regs.Rsp, val
# handlers.c:372:     regs.Rbp = __read_reg("rbp");
#APP
# 372 "handlers.c" 1
	mov rax, rbp	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 40[rsp], rax	# regs.Rbp, val
# handlers.c:373:     regs.Rsi = __read_reg("rsi");
#APP
# 373 "handlers.c" 1
	mov rax, rsi	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 48[rsp], rax	# regs.Rsi, val
# handlers.c:374:     regs.Rdi = __read_reg("rdi");
#APP
# 374 "handlers.c" 1
	mov rax, rdi	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 56[rsp], rax	# regs.Rdi, val
# handlers.c:375:     regs.R8 = __read_reg("r8");
#APP
# 375 "handlers.c" 1
	mov rax, r8	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 64[rsp], rax	# regs.R8, val
# handlers.c:376:     regs.R9 = __read_reg("r9");
#APP
# 376 "handlers.c" 1
	mov rax, r9	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 72[rsp], rax	# regs.R9, val
# handlers.c:377:     regs.R10 = __read_reg("r10");
#APP
# 377 "handlers.c" 1
	mov rax, r10	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 80[rsp], rax	# regs.R10, val
# handlers.c:378:     regs.R11 = __read_reg("r11");
#APP
# 378 "handlers.c" 1
	mov rax, r11	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 88[rsp], rax	# regs.R11, val
# handlers.c:379:     regs.R12 = __read_reg("r12");
#APP
# 379 "handlers.c" 1
	mov rax, r12	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 96[rsp], rax	# regs.R12, val
# handlers.c:380:     regs.R13 = __read_reg("r13");
#APP
# 380 "handlers.c" 1
	mov rax, r13	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 104[rsp], rax	# regs.R13, val
# handlers.c:381:     regs.R14 = __read_reg("r14");
#APP
# 381 "handlers.c" 1
	mov rax, r14	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 112[rsp], rax	# regs.R14, val
# handlers.c:382:     regs.R15 = __read_reg("r15");
#APP
# 382 "handlers.c" 1
	mov rax, r15	# val
	
# 0 "" 2
# handlers.c:384:     void *dst = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
#NO_APP
	mov	edi, DWORD PTR hypercall_info[rip+12100]	# hypercall_info.OsSpecificFields.CurrentCpuOffset, hypercall_info.OsSpecificFields.CurrentCpuOffset
# handlers.c:382:     regs.R15 = __read_reg("r15");
	mov	QWORD PTR 120[rsp], rax	# regs.R15, val
# handlers.c:384:     void *dst = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
#APP
# 384 "handlers.c" 1
	mov edi, gs:[rdi]	# ret, hypercall_info.OsSpecificFields.CurrentCpuOffset
# 0 "" 2
#NO_APP
	sal	edi, 12	#,
	add	rdi, QWORD PTR hypercall_info[rip+12104]	# dst, hypercall_info.OsSpecificFields.PercpuMemPtr
# handlers.c:385:     _memcpy(dst, &regs, sizeof(regs));
	mov	rsi, rsp	# tmp131,
	mov	edx, 224	#,
	call	_memcpy	#
# handlers.c:386: }
	add	rsp, 224	#,
	.cfi_def_cfa_offset 40
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4:
	.size	store_regs, .-store_regs
	.align 16
	.globl	commit_creds
	.type	commit_creds, @function
commit_creds:
.LFB5:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
# handlers.c:393:     void *current = current_task;
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:392: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:393:     void *current = current_task;
#APP
# 393 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
# handlers.c:395:     if (!hypercall_info.OsSpecificFields.Info.CredAltered) {
#NO_APP
	cmp	DWORD PTR hypercall_info[rip+12016], 0	# hypercall_info.OsSpecificFields.Info.CredAltered,
	jne	.L21	#,
# handlers.c:396:         uint32_t *in_execve = (uint32_t *)((unsigned long)(current) + hypercall_info.OsSpecificFields.Task.InExecve);
	mov	eax, DWORD PTR hypercall_info[rip+12060]	# hypercall_info.OsSpecificFields.Task.InExecve, hypercall_info.OsSpecificFields.Task.InExecve
# handlers.c:398:         if ((*in_execve & BIT(hypercall_info.OsSpecificFields.Task.InExecveBit))) {
	mov	edx, DWORD PTR [r8+rax]	# *in_execve_18, *in_execve_18
	mov	eax, DWORD PTR hypercall_info[rip+12064]	# hypercall_info.OsSpecificFields.Task.InExecveBit, hypercall_info.OsSpecificFields.Task.InExecveBit
	bt	rdx, rax	# *in_execve_18, hypercall_info.OsSpecificFields.Task.InExecveBit
	jc	.L20	#,
.L21:
	mov	r9, rdi	# creds, creds
# handlers.c:403:     vmcall_2(det_commit_creds, current, creds);
	xor	edi, edi	#
	call	vmcall	#
.L20:
# handlers.c:404: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5:
	.size	commit_creds, .-commit_creds
	.align 16
	.globl	module_param_sysfs_setup
	.type	module_param_sysfs_setup, @function
module_param_sysfs_setup:
.LFB6:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	mov	r8, rdi	# module, module
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:411:     vmcall_1(det_module_param_sysfs_setup, module);
	mov	edi, 2	#,
	call	vmcall	#
# handlers.c:412: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6:
	.size	module_param_sysfs_setup, .-module_param_sysfs_setup
	.align 16
	.globl	module_param_sysfs_remove
	.type	module_param_sysfs_remove, @function
module_param_sysfs_remove:
.LFB7:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	mov	r8, rdi	# module, module
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:419:     vmcall_1(det_module_param_sysfs_remove, module);
	mov	edi, 3	#,
	call	vmcall	#
# handlers.c:420: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE7:
	.size	module_param_sysfs_remove, .-module_param_sysfs_remove
	.align 16
	.globl	wake_up_new_task
	.type	wake_up_new_task, @function
wake_up_new_task:
.LFB8:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	mov	r9, rdi	# task, task
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
# handlers.c:427:     vmcall_2(det_wake_up_new_task, current_task, task);
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:426: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:427:     vmcall_2(det_wake_up_new_task, current_task, task);
#APP
# 427 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 4	#,
	call	vmcall	#
# handlers.c:428: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8:
	.size	wake_up_new_task, .-wake_up_new_task
	.align 16
	.globl	flush_old_exec
	.type	flush_old_exec, @function
flush_old_exec:
.LFB9:
	.cfi_startproc
# handlers.c:435:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12068]	# hypercall_info.OsSpecificFields.Binprm.FileOffset, hypercall_info.OsSpecificFields.Binprm.FileOffset
# handlers.c:434: {
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	mov	r9, rdi	# binprm, binprm
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
# handlers.c:435:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	rdi, QWORD PTR [rax+rdi]	# file, *_4
# handlers.c:438:     if (!file) {
	test	rdi, rdi	# file
	je	.L31	#,
# handlers.c:442:     path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;
	mov	edx, DWORD PTR hypercall_info[rip+12076]	# hypercall_info.OsSpecificFields.File.PathOffset, hypercall_info.OsSpecificFields.File.PathOffset
	add	rdi, rdx	# file, hypercall_info.OsSpecificFields.File.PathOffset
.L31:
# handlers.c:445:     return vmcall_3(det_flush_old_exec, current_task, binprm, d_path((void *)path_struct));
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 445 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	call	d_path	#
	mov	r10, rax	# _12,
	mov	edi, 5	#,
	call	vmcall	#
# handlers.c:446: }
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE9:
	.size	flush_old_exec, .-flush_old_exec
	.align 16
	.globl	begin_new_exec
	.type	begin_new_exec, @function
begin_new_exec:
.LFB10:
	.cfi_startproc
# handlers.c:453:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12068]	# hypercall_info.OsSpecificFields.Binprm.FileOffset, hypercall_info.OsSpecificFields.Binprm.FileOffset
# handlers.c:452: {
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	mov	r9, rdi	# binprm, binprm
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
# handlers.c:453:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	rdi, QWORD PTR [rax+rdi]	# file, *_4
# handlers.c:456:     if (!file) {
	test	rdi, rdi	# file
	je	.L37	#,
# handlers.c:460:     path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;
	mov	edx, DWORD PTR hypercall_info[rip+12076]	# hypercall_info.OsSpecificFields.File.PathOffset, hypercall_info.OsSpecificFields.File.PathOffset
	add	rdi, rdx	# file, hypercall_info.OsSpecificFields.File.PathOffset
.L37:
# handlers.c:463:     return vmcall_3(det_begin_new_exec, current_task, binprm, d_path((void *)path_struct));
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 463 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	call	d_path	#
	mov	r10, rax	# _12,
	mov	edi, 6	#,
	call	vmcall	#
# handlers.c:464: }
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10:
	.size	begin_new_exec, .-begin_new_exec
	.align 16
	.globl	do_exit
	.type	do_exit, @function
do_exit:
.LFB11:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	mov	r9, rdi	# code, code
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
# handlers.c:471:     vmcall_2(det_do_exit, current_task, code);
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:470: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:471:     vmcall_2(det_do_exit, current_task, code);
#APP
# 471 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 7	#,
	call	vmcall	#
# handlers.c:472: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	do_exit, .-do_exit
	.align 16
	.globl	arch_ptrace
	.type	arch_ptrace, @function
arch_ptrace:
.LFB12:
	.cfi_startproc
# handlers.c:488:     return 0;
	xor	eax, eax	# <retval>
# handlers.c:480:         || request == PTRACE_POKETEXT
	cmp	rsi, 19	# request,
	ja	.L49	#,
# handlers.c:478: {
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
# handlers.c:479:     if (request == PTRACE_POKEDATA
	mov	edx, 565296	# tmp99,
	bt	rdx, rsi	# tmp99, request
	jnc	.L44	#,
	mov	r9, rsi	# request, request
	mov	r8, rdi	# child, child
# handlers.c:485:         return vmcall_2(det_arch_ptrace, child, request);
	mov	edi, 8	#,
	call	vmcall	#
.L44:
# handlers.c:489: }
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
.L49:
	.cfi_restore 1
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 8
	.cfi_restore 9
	ret
	.cfi_endproc
.LFE12:
	.size	arch_ptrace, .-arch_ptrace
	.align 16
	.globl	process_vm_rw_core
	.type	process_vm_rw_core, @function
process_vm_rw_core:
.LFB13:
	.cfi_startproc
# handlers.c:497:     if (!vm_write) {
	test	r9d, r9d	# vm_write
	je	.L56	#,
# handlers.c:496: {
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
# handlers.c:501:     return vmcall_2(det_process_vm_rw_core, current_task, pid);
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:496: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
# handlers.c:501:     return vmcall_2(det_process_vm_rw_core, current_task, pid);
#APP
# 501 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, edi	# __p2, pid
	mov	edi, 10	#,
	call	vmcall	#
# handlers.c:502: }
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
.L56:
	.cfi_restore 5
	.cfi_restore 8
	.cfi_restore 9
	xor	eax, eax	# <retval>
	ret
	.cfi_endproc
.LFE13:
	.size	process_vm_rw_core, .-process_vm_rw_core
	.align 16
	.globl	__vma_link_rb
	.type	__vma_link_rb, @function
__vma_link_rb:
.LFB14:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:509:     long mm_flags = *(long *)((long)(mm) + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12048]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:511:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rdi+rax]	# *_5, *_5
	mov	eax, DWORD PTR hypercall_info[rip+12056]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_5, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L61	#,
# handlers.c:515:     long file = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12028]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:516:     if (file) {
	cmp	QWORD PTR [rax+rsi], 0	# *_14,
	jne	.L61	#,
# handlers.c:520:     long vm_flags = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12024]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:521:     if (!(vm_flags & VM_EXEC)) {
	test	BYTE PTR [rsi+rax], 4	# *_18,
	je	.L61	#,
	mov	r8, rsi	# vma, vma
	mov	r9, rdi	# mm, mm
# handlers.c:525:     vmcall_2(det___vma_link_rb, vma, mm);
	mov	edi, 11	#,
	call	vmcall	#
.L61:
# handlers.c:526: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	__vma_link_rb, .-__vma_link_rb
	.align 16
	.globl	change_protection
	.type	change_protection, @function
change_protection:
.LFB15:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:534:     long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12028]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:535:     if (file) {
	cmp	QWORD PTR [rax+rdi], 0	# *_4,
	jne	.L70	#,
# handlers.c:539:     long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12020]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# mm, *_8
# handlers.c:540:     long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12048]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:542:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+r9]	# *_12, *_12
	mov	eax, DWORD PTR hypercall_info[rip+12056]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_12, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L70	#,
# handlers.c:546:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12024]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:548:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	mov	esi, DWORD PTR hypercall_info[rip+12044]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
# handlers.c:546:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	rdx, QWORD PTR [rax+rdi]	# vm_flags, *_20
	mov	rax, rdx	# _42, vm_flags
	and	eax, 4	# _42,
# handlers.c:548:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	bt	rdx, rsi	# vm_flags, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L72	#,
# handlers.c:548:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	test	rax, rax	# _42
	je	.L73	#,
	jmp	.L70	#
.L72:
# handlers.c:549:         || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {
	test	rax, rax	# _42
	je	.L70	#,
.L73:
	mov	r8, rdi	# vma, vma
# handlers.c:552:         vmcall_2(det_change_protection, vma, mm);
	mov	edi, 12	#,
	call	vmcall	#
.L70:
# handlers.c:554: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	change_protection, .-change_protection
	.align 16
	.globl	pre_vma_adjust
	.type	pre_vma_adjust, @function
pre_vma_adjust:
.LFB16:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
# handlers.c:565:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	edx, DWORD PTR hypercall_info[rip+12024]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:562: {
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:562: {
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
# handlers.c:563:     *skip_call = 1;
	mov	QWORD PTR [rax], 1	# *skip_call_21(D),
# handlers.c:566:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rsi, QWORD PTR [rdx+rdi]	# *_4, *_4
	mov	edx, DWORD PTR hypercall_info[rip+12044]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rsi, rdx	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L84	#,
# handlers.c:570:     *saved_vma = vma;
	mov	rdx, QWORD PTR 48[rsp]	# saved_vma, saved_vma
	mov	QWORD PTR [rdx], rdi	# *saved_vma_25(D), vma
# handlers.c:571:     *next = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmNextOffset);
	mov	edx, DWORD PTR hypercall_info[rip+12032]	# hypercall_info.OsSpecificFields.Vma.VmNextOffset, hypercall_info.OsSpecificFields.Vma.VmNextOffset
	mov	rsi, QWORD PTR [rdx+rdi]	# _13, *_12
	mov	rdx, QWORD PTR 56[rsp]	# next, next
	mov	QWORD PTR [rdx], rsi	# *next_27(D), _13
# handlers.c:572:     *prev = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmPrevOffset);
	mov	edx, DWORD PTR hypercall_info[rip+12036]	# hypercall_info.OsSpecificFields.Vma.VmPrevOffset, hypercall_info.OsSpecificFields.Vma.VmPrevOffset
	mov	rsi, QWORD PTR [rdx+rdi]	# _18, *_17
	mov	rdx, QWORD PTR 64[rsp]	# prev, prev
	mov	QWORD PTR [rdx], rsi	# *prev_29(D), _18
# handlers.c:573:     *skip_call = 0;
	mov	QWORD PTR [rax], 0	# *skip_call_21(D),
.L84:
# handlers.c:576: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE16:
	.size	pre_vma_adjust, .-pre_vma_adjust
	.align 16
	.globl	vma_adjust
	.type	vma_adjust, @function
vma_adjust:
.LFB17:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	push	rcx	#
	.cfi_def_cfa_offset 64
	.cfi_offset 2, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:585:     long mm = *(long *)(saved_vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12020]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
# handlers.c:583: {
	mov	rcx, QWORD PTR 80[rsp]	# saved_vma, saved_vma
# handlers.c:585:     long mm = *(long *)(saved_vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	rbx, QWORD PTR [rax+rcx]	# mm, *_4
# handlers.c:587:     vmcall_4(det_vma_adjust, svma, mm, next, prev);
	mov	r8, rcx	# __p1, saved_vma
	mov	r9, rbx	# __p2, mm
	mov	r10, QWORD PTR 88[rsp]	# __p3, next
	mov	r11, QWORD PTR 96[rsp]	# __p4, prev
	mov	edi, 13	#,
	call	vmcall	#
# handlers.c:588:     vmcall_4(det___vma_adjust, svma, mm, next, prev);
	mov	r10, QWORD PTR 88[rsp]	# __p3, next
	mov	r11, QWORD PTR 96[rsp]	# __p4, prev
	mov	edi, 14	#,
	call	vmcall	#
# handlers.c:589: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rcx	#
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE17:
	.size	vma_adjust, .-vma_adjust
	.align 16
	.globl	vma_rb_erase
	.type	vma_rb_erase, @function
vma_rb_erase:
.LFB18:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:596:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12024]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:597:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_4, *_4
	mov	eax, DWORD PTR hypercall_info[rip+12044]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L92	#,
	mov	rcx, rdi	# vma, vma
# handlers.c:601:     vmcall_2(det_vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
	mov	r8, rdi	# __p1, vma
	mov	eax, DWORD PTR hypercall_info[rip+12020]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# __p2, *_13
	mov	edi, 15	#,
	call	vmcall	#
# handlers.c:602:     vmcall_2(det___vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
	mov	eax, DWORD PTR hypercall_info[rip+12020]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rcx]	# __p2, *_19
	mov	edi, 16	#,
	call	vmcall	#
.L92:
# handlers.c:603: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE18:
	.size	vma_rb_erase, .-vma_rb_erase
	.align 16
	.globl	expand_downwards
	.type	expand_downwards, @function
expand_downwards:
.LFB19:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rsi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 4, -48
	push	rdx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 1, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:610:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12024]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:611:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_4, *_4
	mov	eax, DWORD PTR hypercall_info[rip+12044]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L98	#,
	mov	r10, rsi	# address, address
# handlers.c:615:     vmcall_3(det_expand_downwards, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset), address);
	mov	r8, rdi	# __p1, vma
	mov	eax, DWORD PTR hypercall_info[rip+12020]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# __p2, *_13
	mov	edi, 17	#,
	call	vmcall	#
.L98:
# handlers.c:616: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdx	#
	.cfi_def_cfa_offset 48
	pop	rsi	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE19:
	.size	expand_downwards, .-expand_downwards
	.align 16
	.globl	complete_signal
	.type	complete_signal, @function
complete_signal:
.LFB20:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rsi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 4, -48
	push	rcx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 2, -56
	mov	ecx, edi	# sig, sig
	push	rdx	#
	.cfi_def_cfa_offset 64
	.cfi_offset 1, -64
# handlers.c:624:         && sig != SIGILL
	cmp	edi, 11	# sig,
	ja	.L105	#,
# handlers.c:623:     if (sig != SIGQUIT
	mov	eax, 2520	# tmp100,
	bt	rax, rdi	# tmp100, sig
	jc	.L106	#,
.L105:
	mov	edx, ecx	# <retval>, sig
	jmp	.L104	#
.L106:
	mov	r8, rsi	# task, task
# handlers.c:633:     int new_sig = vmcall_3(det_complete_signal, task, sig, type);
	movsx	r9, edi	# __p2, sig
	mov	r10d, edx	# __p3, type
	mov	edi, 18	#,
	call	vmcall	#
	mov	edx, eax	# <retval>, _20
# handlers.c:634:     return new_sig ? new_sig : sig;
	test	eax, eax	# _20
	je	.L105	#,
.L104:
# handlers.c:635: }
	mov	eax, edx	#, <retval>
	pop	rdx	#
	.cfi_def_cfa_offset 56
	pop	rcx	#
	.cfi_def_cfa_offset 48
	pop	rsi	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE20:
	.size	complete_signal, .-complete_signal
	.align 16
	.globl	text_poke
	.type	text_poke, @function
text_poke:
.LFB21:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
# handlers.c:642:     vmcall_3(det_text_poke, addr, opcode, len);
	mov	r8, rdi	# __p1, addr
# handlers.c:641: {
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rsi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 4, -56
	push	rbx	#
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -64
	push	rcx	#
	.cfi_def_cfa_offset 72
	.cfi_offset 2, -72
	push	rdx	#
	.cfi_def_cfa_offset 80
	.cfi_offset 1, -80
	push	rax	#
	.cfi_def_cfa_offset 88
	.cfi_offset 0, -88
# handlers.c:642:     vmcall_3(det_text_poke, addr, opcode, len);
	mov	r9, rsi	# __p2, opcode
	mov	r10, rdx	# __p3, len
	mov	edi, 19	#,
	call	vmcall	#
# handlers.c:643:     vmcall_3(det___text_poke, addr, opcode, len);
	mov	edi, 20	#,
	call	vmcall	#
# handlers.c:644: }
	pop	rax	#
	.cfi_def_cfa_offset 80
	pop	rdx	#
	.cfi_def_cfa_offset 72
	pop	rcx	#
	.cfi_def_cfa_offset 64
	pop	rbx	#
	.cfi_def_cfa_offset 56
	pop	rsi	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	rbp	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE21:
	.size	text_poke, .-text_poke
	.align 16
	.globl	ftrace_write
	.type	ftrace_write, @function
ftrace_write:
.LFB22:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	mov	r9, rsi	# val, val
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	mov	r8, rdi	# ip, ip
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rsi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 4, -48
	push	rdx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 1, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:651:     vmcall_3(det_ftrace_write, ip, val, size);
	movsx	r10, edx	# __p3, size
	mov	edi, 21	#,
	call	vmcall	#
# handlers.c:652: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdx	#
	.cfi_def_cfa_offset 48
	pop	rsi	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	ftrace_write, .-ftrace_write
	.align 16
	.globl	panic
	.type	panic, @function
panic:
.LFB23:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
# handlers.c:659:     vmcall(det_panic);
	mov	edi, 22	#,
# handlers.c:658: {
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:659:     vmcall(det_panic);
	call	vmcall	#
# handlers.c:660: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	panic, .-panic
	.align 16
	.globl	arch_jump_label_transform
	.type	arch_jump_label_transform, @function
arch_jump_label_transform:
.LFB24:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	mov	r8, rdi	# entry, entry
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:667:     vmcall_2(det_arch_jump_label_transform, entry, type);
	mov	r9d, esi	# __p2, type
	mov	edi, 1	#,
	call	vmcall	#
# handlers.c:668: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	arch_jump_label_transform, .-arch_jump_label_transform
	.align 16
	.globl	__access_remote_vm
	.type	__access_remote_vm, @function
__access_remote_vm:
.LFB25:
	.cfi_startproc
# handlers.c:676:     if ((gup_flags & 1) == 0) {
	test	r9b, 1	# gup_flags,
	je	.L123	#,
# handlers.c:675: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	r12d, r9d	#, gup_flags
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	movsx	r11, r8d	#, len
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	mov	r10, rcx	# buf, buf
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	mov	r9, rdx	# addr, addr
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	mov	r8, rsi	# mm, mm
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rsi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 4, -64
	push	rcx	#
	.cfi_def_cfa_offset 72
	.cfi_offset 2, -72
	push	rdx	#
	.cfi_def_cfa_offset 80
	.cfi_offset 1, -80
	push	rax	#
	.cfi_def_cfa_offset 88
	.cfi_offset 0, -88
# handlers.c:680:     vmcall_5(det___access_remote_vm, mm, addr, buf, len, gup_flags);
	mov	edi, 24	#,
	call	vmcall	#
# handlers.c:681: }
	pop	rax	#
	.cfi_def_cfa_offset 80
	pop	rdx	#
	.cfi_def_cfa_offset 72
	pop	rcx	#
	.cfi_def_cfa_offset 64
	pop	rsi	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
.L123:
	.cfi_restore 0
	.cfi_restore 1
	.cfi_restore 2
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	ret
	.cfi_endproc
.LFE25:
	.size	__access_remote_vm, .-__access_remote_vm
	.align 16
	.globl	do_munmap_rb_erase
	.type	do_munmap_rb_erase, @function
do_munmap_rb_erase:
.LFB26:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:688:     unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+12040]	# hypercall_info.OsSpecificFields.Vma.Rb, hypercall_info.OsSpecificFields.Vma.Rb
	sub	rdi, rax	# vma_vm_rb, hypercall_info.OsSpecificFields.Vma.Rb
# handlers.c:690:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12024]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:692:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_8, *_8
	mov	eax, DWORD PTR hypercall_info[rip+12044]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_8, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L126	#,
	mov	r8, rdi	# vma, vma_vm_rb
	mov	r9, rsi	# mm_mm_rb, mm_mm_rb
# handlers.c:696:     vmcall_2(det_do_munmap_rb_erase, vma, mm);
# handlers.c:689:     unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+12052]	# _3, hypercall_info.OsSpecificFields.Mm.Rb
	sub	r9, rax	# __p2, _3
# handlers.c:696:     vmcall_2(det_do_munmap_rb_erase, vma, mm);
	mov	edi, 26	#,
	call	vmcall	#
.L126:
# handlers.c:697: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
	.size	do_munmap_rb_erase, .-do_munmap_rb_erase
	.align 16
	.globl	vma_adjust_rb_erase
	.type	vma_adjust_rb_erase, @function
vma_adjust_rb_erase:
.LFB27:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:704:     unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+12040]	# hypercall_info.OsSpecificFields.Vma.Rb, hypercall_info.OsSpecificFields.Vma.Rb
	sub	rdi, rax	# vma_vm_rb, hypercall_info.OsSpecificFields.Vma.Rb
# handlers.c:706:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12024]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:708:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_8, *_8
	mov	eax, DWORD PTR hypercall_info[rip+12044]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_8, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L132	#,
	mov	r8, rdi	# vma, vma_vm_rb
	mov	r9, rsi	# mm_mm_rb, mm_mm_rb
# handlers.c:712:     vmcall_2(det_vma_adjust_rb_erase, vma, mm);
# handlers.c:705:     unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+12052]	# _3, hypercall_info.OsSpecificFields.Mm.Rb
	sub	r9, rax	# __p2, _3
# handlers.c:712:     vmcall_2(det_vma_adjust_rb_erase, vma, mm);
	mov	edi, 27	#,
	call	vmcall	#
.L132:
# handlers.c:713: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE27:
	.size	vma_adjust_rb_erase, .-vma_adjust_rb_erase
	.align 16
	.globl	mprotect_fixup_vma_wants_writenotify
	.type	mprotect_fixup_vma_wants_writenotify, @function
mprotect_fixup_vma_wants_writenotify:
.LFB28:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:720:     long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12028]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:721:     if (file) {
	cmp	QWORD PTR [rax+rdi], 0	# *_4,
	jne	.L138	#,
# handlers.c:725:     long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12020]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# mm, *_8
# handlers.c:726:     long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12048]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:728:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+r9]	# *_12, *_12
	mov	eax, DWORD PTR hypercall_info[rip+12056]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_12, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L138	#,
# handlers.c:732:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+12024]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:734:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	mov	esi, DWORD PTR hypercall_info[rip+12044]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
# handlers.c:732:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	rdx, QWORD PTR [rax+rdi]	# vm_flags, *_20
	mov	rax, rdx	# _41, vm_flags
	and	eax, 4	# _41,
# handlers.c:734:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	bt	rdx, rsi	# vm_flags, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L140	#,
# handlers.c:734:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	test	rax, rax	# _41
	je	.L141	#,
	jmp	.L138	#
.L140:
# handlers.c:735:         || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {
	test	rax, rax	# _41
	je	.L138	#,
.L141:
	mov	r8, rdi	# vma, vma
# handlers.c:738:         vmcall_2(det_mprotect_fixup_vma_wants_writenotify, vma, mm);
	mov	edi, 25	#,
	call	vmcall	#
.L138:
# handlers.c:740: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE28:
	.size	mprotect_fixup_vma_wants_writenotify, .-mprotect_fixup_vma_wants_writenotify
	.align 16
	.globl	pre_do_rmdir
	.type	pre_do_rmdir, @function
pre_do_rmdir:
.LFB29:
	.cfi_startproc
	push	rsi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:746:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:747:     *save_pathname=pathname;
	mov	rax, QWORD PTR 32[rsp]	# save_pathname, save_pathname
	mov	QWORD PTR [rax], rsi	# *save_pathname_4(D), pathname
# handlers.c:748: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rsi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE29:
	.size	pre_do_rmdir, .-pre_do_rmdir
	.align 16
	.globl	do_rmdir
	.type	do_rmdir, @function
do_rmdir:
.LFB30:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:754:     long save_rax = __read_reg("rax");
#APP
# 754 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:755:     vmcall_3(det_do_rmdir, current_task, save_pathname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 755 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_pathname
	mov	edi, 28	#,
	call	vmcall	#
# handlers.c:756: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE30:
	.size	do_rmdir, .-do_rmdir
	.align 16
	.globl	pre_sys_sysfs
	.type	pre_sys_sysfs, @function
pre_sys_sysfs:
.LFB31:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:762:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_5(D),
# handlers.c:763:     *save_option=option;
	mov	rax, QWORD PTR 48[rsp]	# save_option, save_option
	mov	BYTE PTR [rax], dil	# *save_option_8(D), option
# handlers.c:764:     *save_arg1=arg1;
	mov	rax, QWORD PTR 56[rsp]	# save_arg1, save_arg1
	mov	QWORD PTR [rax], rsi	# *save_arg1_11(D), arg1
# handlers.c:765:     *save_arg2=arg2;
	mov	rax, QWORD PTR 64[rsp]	# save_arg2, save_arg2
	mov	QWORD PTR [rax], rdx	# *save_arg2_14(D), arg2
# handlers.c:766: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE31:
	.size	pre_sys_sysfs, .-pre_sys_sysfs
	.align 16
	.globl	sys_sysfs
	.type	sys_sysfs, @function
sys_sysfs:
.LFB32:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:772:     long x = __read_reg("rax");
#APP
# 772 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:773: 	vmcall_5(det_sys_sysfs,current_task,save_option,save_arg1,save_arg2,x);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 773 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_option
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_arg1
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_arg2
	mov	edi, 29	#,
	call	vmcall	#
# handlers.c:774: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	sys_sysfs, .-sys_sysfs
	.align 16
	.globl	sys_read
	.type	sys_read, @function
sys_read:
.LFB33:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:780:     long save_rax = __read_reg("rax");
#APP
# 780 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:782:     vmcall_5(det_sys_read,current_task,save_fd, save_buf, save_count,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 782 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_buf
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_count
	mov	edi, 30	#,
	call	vmcall	#
# handlers.c:783: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	sys_read, .-sys_read
	.align 16
	.globl	pre_sys_read
	.type	pre_sys_read, @function
pre_sys_read:
.LFB34:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:789:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:790:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:791:     *save_buf=buf;
	mov	rax, QWORD PTR 56[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:792:     *save_count=count;
	mov	rax, QWORD PTR 64[rsp]	# save_count, save_count
	mov	DWORD PTR [rax], edx	# *save_count_10(D), count
# handlers.c:793: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	pre_sys_read, .-pre_sys_read
	.align 16
	.globl	sys_getppid
	.type	sys_getppid, @function
sys_getppid:
.LFB35:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:799:     long save_rax = __read_reg("rax");
#APP
# 799 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:801:     vmcall_2(det_sys_getppid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 801 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 31	#,
	call	vmcall	#
# handlers.c:802: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	sys_getppid, .-sys_getppid
	.align 16
	.globl	pre_sys_getppid
	.type	pre_sys_getppid, @function
pre_sys_getppid:
.LFB36:
	.cfi_startproc
	push	rax	#
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
# handlers.c:808:     *skip_call=0;
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:809: }
	pop	rax	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	pre_sys_getppid, .-pre_sys_getppid
	.align 16
	.globl	sys_getsid
	.type	sys_getsid, @function
sys_getsid:
.LFB37:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:815:     long save_rax = __read_reg("rax");
#APP
# 815 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:817:     vmcall_3(det_sys_getsid,current_task,save_pid,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 817 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 56[rsp]	# __p2, save_pid
	mov	edi, 32	#,
	call	vmcall	#
# handlers.c:818: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	sys_getsid, .-sys_getsid
	.align 16
	.globl	pre_sys_getsid
	.type	pre_sys_getsid, @function
pre_sys_getsid:
.LFB38:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:824:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:825:     *save_pid=pid;
	mov	rax, QWORD PTR 32[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], edi	# *save_pid_4(D), pid
# handlers.c:826: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	pre_sys_getsid, .-pre_sys_getsid
	.align 16
	.globl	sys_getuid
	.type	sys_getuid, @function
sys_getuid:
.LFB39:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:832:     long save_rax = __read_reg("rax");
#APP
# 832 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:834:     vmcall_2(det_sys_getuid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 834 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 33	#,
	call	vmcall	#
# handlers.c:835: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	sys_getuid, .-sys_getuid
	.align 16
	.globl	pre_sys_getuid
	.type	pre_sys_getuid, @function
pre_sys_getuid:
.LFB242:
	.cfi_startproc
	push	rax	#
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	pop	rax	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE242:
	.size	pre_sys_getuid, .-pre_sys_getuid
	.align 16
	.globl	sys_geteuid
	.type	sys_geteuid, @function
sys_geteuid:
.LFB41:
	.cfi_startproc
# handlers.c:847: {
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:848:     long save_rax = __read_reg("rax");
#APP
# 848 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:850:     vmcall_2(det_sys_geteuid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 850 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 34	#,
	call	vmcall	#
# handlers.c:851: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	sys_geteuid, .-sys_geteuid
	.align 16
	.globl	pre_sys_geteuid
	.type	pre_sys_geteuid, @function
pre_sys_geteuid:
.LFB244:
	.cfi_startproc
	push	rax	#
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	pop	rax	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE244:
	.size	pre_sys_geteuid, .-pre_sys_geteuid
	.align 16
	.globl	sys_shutdown
	.type	sys_shutdown, @function
sys_shutdown:
.LFB43:
	.cfi_startproc
# handlers.c:863: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:864:     long save_rax = __read_reg("rax");
#APP
# 864 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:866:     vmcall_4(det_sys_shutdown,current_task,save_a,save_b,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 866 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 64[rsp]	# __p2, save_a
	movsx	r10, DWORD PTR 72[rsp]	# __p3, save_b
	mov	edi, 35	#,
	call	vmcall	#
# handlers.c:867: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	sys_shutdown, .-sys_shutdown
	.align 16
	.globl	pre_sys_shutdown
	.type	pre_sys_shutdown, @function
pre_sys_shutdown:
.LFB44:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:873:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:874:     *save_a=a;
	mov	rax, QWORD PTR 40[rsp]	# save_a, save_a
	mov	DWORD PTR [rax], edi	# *save_a_4(D), a
# handlers.c:875:     *save_b=b;
	mov	rax, QWORD PTR 48[rsp]	# save_b, save_b
	mov	DWORD PTR [rax], esi	# *save_b_7(D), b
# handlers.c:876: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	pre_sys_shutdown, .-pre_sys_shutdown
	.align 16
	.globl	do_sysinfo
	.type	do_sysinfo, @function
do_sysinfo:
.LFB45:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:882:     long save_rax = __read_reg("rax");
#APP
# 882 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:884:     vmcall_3(det_do_sysinfo,current_task,save_a,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 884 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_a
	mov	edi, 36	#,
	call	vmcall	#
# handlers.c:885: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	do_sysinfo, .-do_sysinfo
	.align 16
	.globl	pre_do_sysinfo
	.type	pre_do_sysinfo, @function
pre_do_sysinfo:
.LFB46:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:891:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:892:     *save_a=a;
	mov	rax, QWORD PTR 32[rsp]	# save_a, save_a
	mov	QWORD PTR [rax], rdi	# *save_a_4(D), a
# handlers.c:893: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	pre_do_sysinfo, .-pre_do_sysinfo
	.align 16
	.globl	sys_capget
	.type	sys_capget, @function
sys_capget:
.LFB47:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:899:     long save_rax = __read_reg("rax");
#APP
# 899 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:901:     vmcall_4(det_sys_capget,current_task,save_header,save_dataptr,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 901 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_header
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_dataptr
	mov	edi, 37	#,
	call	vmcall	#
# handlers.c:902: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	sys_capget, .-sys_capget
	.align 16
	.globl	pre_sys_capget
	.type	pre_sys_capget, @function
pre_sys_capget:
.LFB48:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:908:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:909:     *save_header=header;
	mov	rax, QWORD PTR 40[rsp]	# save_header, save_header
	mov	QWORD PTR [rax], rdi	# *save_header_4(D), header
# handlers.c:910:     *save_dataptr=dataptr;
	mov	rax, QWORD PTR 48[rsp]	# save_dataptr, save_dataptr
	mov	QWORD PTR [rax], rsi	# *save_dataptr_7(D), dataptr
# handlers.c:911: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	pre_sys_capget, .-pre_sys_capget
	.align 16
	.globl	sys_capset
	.type	sys_capset, @function
sys_capset:
.LFB49:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:917:     long save_rax = __read_reg("rax");
#APP
# 917 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:919:     vmcall_4(det_sys_capset,current_task,save_header,save_data,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 919 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_header
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_data
	mov	edi, 38	#,
	call	vmcall	#
# handlers.c:920: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.size	sys_capset, .-sys_capset
	.align 16
	.globl	pre_sys_capset
	.type	pre_sys_capset, @function
pre_sys_capset:
.LFB264:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_header, save_header
	mov	QWORD PTR [rax], rdi	# *save_header_9(D), header
	mov	rax, QWORD PTR 48[rsp]	# save_data, save_data
	mov	QWORD PTR [rax], rsi	# *save_data_10(D), data
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE264:
	.size	pre_sys_capset, .-pre_sys_capset
	.align 16
	.globl	sys_statfs
	.type	sys_statfs, @function
sys_statfs:
.LFB51:
	.cfi_startproc
# handlers.c:934: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:935:     long save_rax = __read_reg("rax");
#APP
# 935 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:937:     vmcall_4(det_sys_statfs,current_task,save_path,save_buf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 937 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_path
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_buf
	mov	edi, 39	#,
	call	vmcall	#
# handlers.c:938: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	sys_statfs, .-sys_statfs
	.align 16
	.globl	pre_sys_statfs
	.type	pre_sys_statfs, @function
pre_sys_statfs:
.LFB52:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:944:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:945:     *save_path=path;
	mov	rax, QWORD PTR 40[rsp]	# save_path, save_path
	mov	QWORD PTR [rax], rdi	# *save_path_4(D), path
# handlers.c:946:     *save_buf=buf;
	mov	rax, QWORD PTR 48[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:947: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
	.size	pre_sys_statfs, .-pre_sys_statfs
	.align 16
	.globl	sys_fstatfs
	.type	sys_fstatfs, @function
sys_fstatfs:
.LFB53:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:953:     long save_rax = __read_reg("rax");
#APP
# 953 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:955:     vmcall_4(det_sys_fstatfs,current_task,save_fd,save_buf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 955 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_buf
	mov	edi, 40	#,
	call	vmcall	#
# handlers.c:956: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE53:
	.size	sys_fstatfs, .-sys_fstatfs
	.align 16
	.globl	pre_sys_fstatfs
	.type	pre_sys_fstatfs, @function
pre_sys_fstatfs:
.LFB54:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:962:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:963:     *save_fd=fd;
	mov	rax, QWORD PTR 40[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:964:     *save_buf=buf;
	mov	rax, QWORD PTR 48[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:965: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE54:
	.size	pre_sys_fstatfs, .-pre_sys_fstatfs
	.align 16
	.globl	sys_setsid
	.type	sys_setsid, @function
sys_setsid:
.LFB55:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:971:     long save_rax = __read_reg("rax");
#APP
# 971 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:973:     vmcall_2(det_sys_setsid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 973 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 41	#,
	call	vmcall	#
# handlers.c:974: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE55:
	.size	sys_setsid, .-sys_setsid
	.align 16
	.globl	pre_sys_setsid
	.type	pre_sys_setsid, @function
pre_sys_setsid:
.LFB246:
	.cfi_startproc
	push	rax	#
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	pop	rax	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE246:
	.size	pre_sys_setsid, .-pre_sys_setsid
	.align 16
	.globl	sys_seccomp
	.type	sys_seccomp, @function
sys_seccomp:
.LFB57:
	.cfi_startproc
# handlers.c:986: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:987:     long save_rax = __read_reg("rax");
#APP
# 987 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:989:     vmcall_5(det_sys_seccomp,current_task,save_op,save_flags,save_uargs,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 989 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_op
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_flags
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_uargs
	mov	edi, 42	#,
	call	vmcall	#
# handlers.c:990: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE57:
	.size	sys_seccomp, .-sys_seccomp
	.align 16
	.globl	pre_sys_seccomp
	.type	pre_sys_seccomp, @function
pre_sys_seccomp:
.LFB58:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:996:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:997:     *save_op=op;
	mov	rax, QWORD PTR 48[rsp]	# save_op, save_op
	mov	DWORD PTR [rax], edi	# *save_op_4(D), op
# handlers.c:998:     *save_flags=flags;
	mov	rax, QWORD PTR 56[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], esi	# *save_flags_7(D), flags
# handlers.c:999:     *save_uargs=uargs;
	mov	rax, QWORD PTR 64[rsp]	# save_uargs, save_uargs
	mov	QWORD PTR [rax], rdx	# *save_uargs_10(D), uargs
# handlers.c:1000: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE58:
	.size	pre_sys_seccomp, .-pre_sys_seccomp
	.align 16
	.globl	sys_tgkill
	.type	sys_tgkill, @function
sys_tgkill:
.LFB59:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1006:     long save_rax = __read_reg("rax");
#APP
# 1006 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1008:     vmcall_5(det_sys_tgkill,current_task,save_tgid,save_pid,save_sig,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1008 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_tgid
	movsx	r10, DWORD PTR 80[rsp]	# __p3, save_pid
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_sig
	mov	edi, 43	#,
	call	vmcall	#
# handlers.c:1009: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE59:
	.size	sys_tgkill, .-sys_tgkill
	.align 16
	.globl	pre_sys_tgkill
	.type	pre_sys_tgkill, @function
pre_sys_tgkill:
.LFB60:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1015:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1016:     *save_tgid=tgid;
	mov	rax, QWORD PTR 48[rsp]	# save_tgid, save_tgid
	mov	DWORD PTR [rax], edi	# *save_tgid_4(D), tgid
# handlers.c:1017:     *save_pid=pid;
	mov	rax, QWORD PTR 56[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], esi	# *save_pid_7(D), pid
# handlers.c:1018:     *save_sig=sig;
	mov	rax, QWORD PTR 64[rsp]	# save_sig, save_sig
	mov	DWORD PTR [rax], edx	# *save_sig_10(D), sig
# handlers.c:1019: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.size	pre_sys_tgkill, .-pre_sys_tgkill
	.align 16
	.globl	sys_tkill
	.type	sys_tkill, @function
sys_tkill:
.LFB61:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1025:     long save_rax = __read_reg("rax");
#APP
# 1025 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1027:     vmcall_4(det_sys_tkill,current_task,save_pid,save_sig,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1027 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 64[rsp]	# __p2, save_pid
	movsx	r10, DWORD PTR 72[rsp]	# __p3, save_sig
	mov	edi, 44	#,
	call	vmcall	#
# handlers.c:1028: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE61:
	.size	sys_tkill, .-sys_tkill
	.align 16
	.globl	pre_sys_tkill
	.type	pre_sys_tkill, @function
pre_sys_tkill:
.LFB262:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], edi	# *save_pid_9(D), pid
	mov	rax, QWORD PTR 48[rsp]	# save_sig, save_sig
	mov	DWORD PTR [rax], esi	# *save_sig_10(D), sig
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE262:
	.size	pre_sys_tkill, .-pre_sys_tkill
	.align 16
	.globl	sys_ustat
	.type	sys_ustat, @function
sys_ustat:
.LFB63:
	.cfi_startproc
# handlers.c:1042: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1043:     long save_rax = __read_reg("rax");
#APP
# 1043 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1045:     vmcall_4(det_sys_ustat,current_task,save_dev,save_ubuf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1045 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_dev
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_ubuf
	mov	edi, 45	#,
	call	vmcall	#
# handlers.c:1046: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:
	.size	sys_ustat, .-sys_ustat
	.align 16
	.globl	pre_sys_ustat
	.type	pre_sys_ustat, @function
pre_sys_ustat:
.LFB274:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_dev, save_dev
	mov	DWORD PTR [rax], edi	# *save_dev_9(D), dev
	mov	rax, QWORD PTR 48[rsp]	# save_ubuf, save_ubuf
	mov	QWORD PTR [rax], rsi	# *save_ubuf_10(D), ubuf
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE274:
	.size	pre_sys_ustat, .-pre_sys_ustat
	.align 16
	.globl	sys_poll
	.type	sys_poll, @function
sys_poll:
.LFB65:
	.cfi_startproc
# handlers.c:1060: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1061:     long save_rax = __read_reg("rax");
#APP
# 1061 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1063:     vmcall_5(det_sys_poll,current_task,save_ufds,save_nfds,save_timeout,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1063 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_ufds
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_nfds
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_timeout
	mov	edi, 46	#,
	call	vmcall	#
# handlers.c:1064: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE65:
	.size	sys_poll, .-sys_poll
	.align 16
	.globl	pre_sys_poll
	.type	pre_sys_poll, @function
pre_sys_poll:
.LFB66:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rdx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 1, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:1070:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_3(D),
# handlers.c:1071:     *save_ufds=ufds;
	mov	rax, QWORD PTR 40[rsp]	# save_ufds, save_ufds
	mov	QWORD PTR [rax], rdi	# *save_ufds_5(D), ufds
# handlers.c:1073:     *save_nfds=timeout;
	mov	rax, QWORD PTR 48[rsp]	# save_nfds, save_nfds
	mov	DWORD PTR [rax], edx	# *save_nfds_8(D), timeout
# handlers.c:1074: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rdx	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE66:
	.size	pre_sys_poll, .-pre_sys_poll
	.align 16
	.globl	sys_sigprocmask
	.type	sys_sigprocmask, @function
sys_sigprocmask:
.LFB67:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1080:     long save_rax = __read_reg("rax");
#APP
# 1080 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1082:     vmcall_5(det_sys_sigprocmask,current_task,save_how,save_set,save_oset,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1082 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_how
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_set
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_oset
	mov	edi, 47	#,
	call	vmcall	#
# handlers.c:1083: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE67:
	.size	sys_sigprocmask, .-sys_sigprocmask
	.align 16
	.globl	pre_sys_sigprocmask
	.type	pre_sys_sigprocmask, @function
pre_sys_sigprocmask:
.LFB68:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
# handlers.c:1090:     *save_how=how;
	movsx	rdi, edi	# how, how
# handlers.c:1088: {
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1089:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
# handlers.c:1090:     *save_how=how;
	mov	rax, QWORD PTR 48[rsp]	# save_how, save_how
	mov	QWORD PTR [rax], rdi	# *save_how_11(D), how
# handlers.c:1091:     *save_set=set;
	mov	rax, QWORD PTR 56[rsp]	# save_set, save_set
	mov	DWORD PTR [rax], esi	# *save_set_14(D), set
# handlers.c:1092:     *save_oset=oset;
	mov	rax, QWORD PTR 64[rsp]	# save_oset, save_oset
	mov	DWORD PTR [rax], edx	# *save_oset_17(D), oset
# handlers.c:1093: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	pre_sys_sigprocmask, .-pre_sys_sigprocmask
	.align 16
	.globl	sys_getrlimit
	.type	sys_getrlimit, @function
sys_getrlimit:
.LFB69:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1099:     long save_rax = __read_reg("rax");
#APP
# 1099 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1101:     vmcall_4(det_sys_getrlimit,current_task,save_resource,save_rlim,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1101 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_resource
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_rlim
	mov	edi, 48	#,
	call	vmcall	#
# handlers.c:1102: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE69:
	.size	sys_getrlimit, .-sys_getrlimit
	.align 16
	.globl	pre_sys_getrlimit
	.type	pre_sys_getrlimit, @function
pre_sys_getrlimit:
.LFB276:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_resource, save_resource
	mov	DWORD PTR [rax], edi	# *save_resource_9(D), resource
	mov	rax, QWORD PTR 48[rsp]	# save_rlim, save_rlim
	mov	QWORD PTR [rax], rsi	# *save_rlim_10(D), rlim
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE276:
	.size	pre_sys_getrlimit, .-pre_sys_getrlimit
	.align 16
	.globl	sys_umask
	.type	sys_umask, @function
sys_umask:
.LFB71:
	.cfi_startproc
# handlers.c:1116: {
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1117:     long save_rax = __read_reg("rax");
#APP
# 1117 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1119:     vmcall_3(det_sys_getrlimit,current_task,save_mask,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1119 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 56[rsp]	# __p2, save_mask
	mov	edi, 48	#,
	call	vmcall	#
# handlers.c:1120: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE71:
	.size	sys_umask, .-sys_umask
	.align 16
	.globl	pre_sys_umask
	.type	pre_sys_umask, @function
pre_sys_umask:
.LFB254:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 32[rsp]	# save_mask, save_mask
	mov	DWORD PTR [rax], edi	# *save_mask_9(D), mask
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE254:
	.size	pre_sys_umask, .-pre_sys_umask
	.align 16
	.globl	sys_ioctl
	.type	sys_ioctl, @function
sys_ioctl:
.LFB73:
	.cfi_startproc
# handlers.c:1134: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1135:     long save_rax = __read_reg("rax");
#APP
# 1135 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1137:     vmcall_5(det_sys_ioctl,current_task,save_fd,save_cmd,save_arg,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1137 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_cmd
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_arg
	mov	edi, 50	#,
	call	vmcall	#
# handlers.c:1138: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE73:
	.size	sys_ioctl, .-sys_ioctl
	.align 16
	.globl	pre_sys_ioctl
	.type	pre_sys_ioctl, @function
pre_sys_ioctl:
.LFB74:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1144:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1145:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:1146:     *save_cmd=cmd;
	mov	rax, QWORD PTR 56[rsp]	# save_cmd, save_cmd
	mov	DWORD PTR [rax], esi	# *save_cmd_7(D), cmd
# handlers.c:1147:     *save_arg=arg;
	mov	rax, QWORD PTR 64[rsp]	# save_arg, save_arg
	mov	QWORD PTR [rax], rdx	# *save_arg_10(D), arg
# handlers.c:1148: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE74:
	.size	pre_sys_ioctl, .-pre_sys_ioctl
	.align 16
	.globl	sys_brk
	.type	sys_brk, @function
sys_brk:
.LFB75:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1154:     long save_rax = __read_reg("rax");
#APP
# 1154 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1156:     vmcall_3(det_sys_brk,current_task,save_brk,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1156 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_brk
	mov	edi, 51	#,
	call	vmcall	#
# handlers.c:1157: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE75:
	.size	sys_brk, .-sys_brk
	.align 16
	.globl	pre_sys_brk
	.type	pre_sys_brk, @function
pre_sys_brk:
.LFB76:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:1163:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1164:     *save_brk=brk;
	mov	rax, QWORD PTR 32[rsp]	# save_brk, save_brk
	mov	QWORD PTR [rax], rdi	# *save_brk_4(D), brk
# handlers.c:1165: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE76:
	.size	pre_sys_brk, .-pre_sys_brk
	.align 16
	.globl	sys_gettimeofday
	.type	sys_gettimeofday, @function
sys_gettimeofday:
.LFB77:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1171:     long save_rax = __read_reg("rax");
#APP
# 1171 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1173:     vmcall_4(det_sys_gettimeofday,current_task,save_tv,save_tz,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1173 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_tv
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_tz
	mov	edi, 52	#,
	call	vmcall	#
# handlers.c:1174: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE77:
	.size	sys_gettimeofday, .-sys_gettimeofday
	.align 16
	.globl	pre_sys_gettimeofday
	.type	pre_sys_gettimeofday, @function
pre_sys_gettimeofday:
.LFB266:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_tv, save_tv
	mov	QWORD PTR [rax], rdi	# *save_tv_9(D), tv
	mov	rax, QWORD PTR 48[rsp]	# save_tz, save_tz
	mov	QWORD PTR [rax], rsi	# *save_tz_10(D), tz
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE266:
	.size	pre_sys_gettimeofday, .-pre_sys_gettimeofday
	.align 16
	.globl	sys_setresuid
	.type	sys_setresuid, @function
sys_setresuid:
.LFB79:
	.cfi_startproc
# handlers.c:1188: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1189:     long save_rax = __read_reg("rax");
#APP
# 1189 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1191:     vmcall_5(det_sys_setresuid,current_task,save_ruid,save_euid,save_suid,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1191 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_ruid
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_euid
	mov	r11d, DWORD PTR 88[rsp]	# __p4, save_suid
	mov	edi, 53	#,
	call	vmcall	#
# handlers.c:1192: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE79:
	.size	sys_setresuid, .-sys_setresuid
	.align 16
	.globl	pre_sys_setresuid
	.type	pre_sys_setresuid, @function
pre_sys_setresuid:
.LFB80:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1198:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1199:     *save_ruid=ruid;
	mov	rax, QWORD PTR 48[rsp]	# save_ruid, save_ruid
	mov	DWORD PTR [rax], edi	# *save_ruid_4(D), ruid
# handlers.c:1200:     *save_euid=euid;
	mov	rax, QWORD PTR 56[rsp]	# save_euid, save_euid
	mov	DWORD PTR [rax], esi	# *save_euid_7(D), euid
# handlers.c:1201:     *save_suid=suid;
	mov	rax, QWORD PTR 64[rsp]	# save_suid, save_suid
	mov	DWORD PTR [rax], edx	# *save_suid_10(D), suid
# handlers.c:1202: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE80:
	.size	pre_sys_setresuid, .-pre_sys_setresuid
	.align 16
	.globl	sys_chdir
	.type	sys_chdir, @function
sys_chdir:
.LFB81:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1207:     long save_rax = __read_reg("rax");
#APP
# 1207 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1209:     vmcall_3(det_sys_chdir,current_task,save_filename,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1209 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_filename
	mov	edi, 54	#,
	call	vmcall	#
# handlers.c:1210: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE81:
	.size	sys_chdir, .-sys_chdir
	.align 16
	.globl	pre_sys_chdir
	.type	pre_sys_chdir, @function
pre_sys_chdir:
.LFB82:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:1216:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1217:     *save_filename=filename;
	mov	rax, QWORD PTR 32[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_4(D), filename
# handlers.c:1218: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:
	.size	pre_sys_chdir, .-pre_sys_chdir
	.align 16
	.globl	sys_alarm
	.type	sys_alarm, @function
sys_alarm:
.LFB83:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1224:     long save_rax = __read_reg("rax");
#APP
# 1224 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1226:     vmcall_3(det_sys_alarm,current_task,save_seconds,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1226 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 56[rsp]	# __p2, save_seconds
	mov	edi, 55	#,
	call	vmcall	#
# handlers.c:1227: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE83:
	.size	sys_alarm, .-sys_alarm
	.align 16
	.globl	pre_sys_alarm
	.type	pre_sys_alarm, @function
pre_sys_alarm:
.LFB84:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:1233:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1234:     *save_seconds=seconds;
	mov	rax, QWORD PTR 32[rsp]	# save_seconds, save_seconds
	mov	DWORD PTR [rax], edi	# *save_seconds_4(D), seconds
# handlers.c:1235: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE84:
	.size	pre_sys_alarm, .-pre_sys_alarm
	.align 16
	.globl	sys_ptrace
	.type	sys_ptrace, @function
sys_ptrace:
.LFB85:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:1241:     long save_rax = __read_reg("rax");
#APP
# 1241 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1243:     vmcall_6(det_sys_ptrace,current_task,save_request,save_pid,save_addr,save_data,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1243 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 80[rsp]	# __p2, save_request
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_pid
	mov	r11, QWORD PTR 96[rsp]	# __p4, save_addr
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_data
	mov	edi, 56	#,
	call	vmcall	#
# handlers.c:1244: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE85:
	.size	sys_ptrace, .-sys_ptrace
	.align 16
	.globl	pre_sys_ptrace
	.type	pre_sys_ptrace, @function
pre_sys_ptrace:
.LFB86:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1250:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1251:     *save_request=request;
	mov	rax, QWORD PTR 56[rsp]	# save_request, save_request
	mov	QWORD PTR [rax], rdi	# *save_request_4(D), request
# handlers.c:1252:     *save_pid=pid;
	mov	rax, QWORD PTR 64[rsp]	# save_pid, save_pid
	mov	QWORD PTR [rax], rsi	# *save_pid_7(D), pid
# handlers.c:1253:     *save_addr=addr;
	mov	rax, QWORD PTR 72[rsp]	# save_addr, save_addr
	mov	QWORD PTR [rax], rdx	# *save_addr_10(D), addr
# handlers.c:1254:     *save_data=data;
	mov	rax, QWORD PTR 80[rsp]	# save_data, save_data
	mov	QWORD PTR [rax], rcx	# *save_data_13(D), data
# handlers.c:1255: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE86:
	.size	pre_sys_ptrace, .-pre_sys_ptrace
	.align 16
	.globl	sys_time
	.type	sys_time, @function
sys_time:
.LFB87:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1261:     long save_rax = __read_reg("rax");
#APP
# 1261 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1263:     vmcall_3(det_sys_time,current_task,save_tloc,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1263 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_tloc
	mov	edi, 57	#,
	call	vmcall	#
# handlers.c:1264: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE87:
	.size	sys_time, .-sys_time
	.align 16
	.globl	pre_sys_time
	.type	pre_sys_time, @function
pre_sys_time:
.LFB88:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:1270:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1271:     *save_tloc=tloc;
	mov	rax, QWORD PTR 32[rsp]	# save_tloc, save_tloc
	mov	QWORD PTR [rax], rdi	# *save_tloc_4(D), tloc
# handlers.c:1272: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE88:
	.size	pre_sys_time, .-pre_sys_time
	.align 16
	.globl	sys_chroot
	.type	sys_chroot, @function
sys_chroot:
.LFB89:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1278:     long save_rax = __read_reg("rax");
#APP
# 1278 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1280:     vmcall_3(det_sys_chroot,current_task,save_filename,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1280 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_filename
	mov	edi, 58	#,
	call	vmcall	#
# handlers.c:1281: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE89:
	.size	sys_chroot, .-sys_chroot
	.align 16
	.globl	pre_sys_chroot
	.type	pre_sys_chroot, @function
pre_sys_chroot:
.LFB226:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 32[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_9(D), filename
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE226:
	.size	pre_sys_chroot, .-pre_sys_chroot
	.align 16
	.globl	sys_kill
	.type	sys_kill, @function
sys_kill:
.LFB91:
	.cfi_startproc
# handlers.c:1294: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1295:     long save_rax = __read_reg("rax");
#APP
# 1295 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1297:     vmcall_4(det_sys_kill,current_task,save_pid,save_sig,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1297 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_pid
	movsx	r10, DWORD PTR 72[rsp]	# __p3, save_sig
	mov	edi, 59	#,
	call	vmcall	#
# handlers.c:1298: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE91:
	.size	sys_kill, .-sys_kill
	.align 16
	.globl	pre_sys_kill
	.type	pre_sys_kill, @function
pre_sys_kill:
.LFB92:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:1304:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1305:     *save_pid=pid;
	mov	rax, QWORD PTR 40[rsp]	# save_pid, save_pid
	mov	QWORD PTR [rax], rdi	# *save_pid_4(D), pid
# handlers.c:1306:     *save_sig=sig;
	mov	rax, QWORD PTR 48[rsp]	# save_sig, save_sig
	mov	DWORD PTR [rax], esi	# *save_sig_7(D), sig
# handlers.c:1307: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE92:
	.size	pre_sys_kill, .-pre_sys_kill
	.align 16
	.globl	sys_fchdir
	.type	sys_fchdir, @function
sys_fchdir:
.LFB93:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1313:     long save_rax = __read_reg("rax");
#APP
# 1313 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1315:     vmcall_3(det_sys_fchdir,current_task,save_fd,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1315 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 56[rsp]	# __p2, save_fd
	mov	edi, 60	#,
	call	vmcall	#
# handlers.c:1316: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	sys_fchdir, .-sys_fchdir
	.align 16
	.globl	pre_sys_fchdir
	.type	pre_sys_fchdir, @function
pre_sys_fchdir:
.LFB256:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 32[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_9(D), fd
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE256:
	.size	pre_sys_fchdir, .-pre_sys_fchdir
	.align 16
	.globl	sys_chmod
	.type	sys_chmod, @function
sys_chmod:
.LFB95:
	.cfi_startproc
# handlers.c:1329: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1330:     long save_rax = __read_reg("rax");
#APP
# 1330 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1332:     vmcall_4(det_sys_chmod,current_task,save_filename,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1332 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_filename
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 61	#,
	call	vmcall	#
# handlers.c:1333: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	sys_chmod, .-sys_chmod
	.align 16
	.globl	pre_sys_chmod
	.type	pre_sys_chmod, @function
pre_sys_chmod:
.LFB96:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:1339:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1340:     *save_filename=filename;
	mov	rax, QWORD PTR 40[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_4(D), filename
# handlers.c:1341:     *save_mode=mode;
	mov	rax, QWORD PTR 48[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rsi	# *save_mode_7(D), mode
# handlers.c:1342: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	pre_sys_chmod, .-pre_sys_chmod
	.align 16
	.globl	sys_chown
	.type	sys_chown, @function
sys_chown:
.LFB97:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1348:     long save_rax = __read_reg("rax");
#APP
# 1348 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1350:     vmcall_5(det_sys_chown,current_task,save_filename,save_user,save_group,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1350 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_filename
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_user
	mov	r11d, DWORD PTR 88[rsp]	# __p4, save_group
	mov	edi, 62	#,
	call	vmcall	#
# handlers.c:1351: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	sys_chown, .-sys_chown
	.align 16
	.globl	pre_sys_chown
	.type	pre_sys_chown, @function
pre_sys_chown:
.LFB98:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1357:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1358:     *save_filename=filename;
	mov	rax, QWORD PTR 48[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_4(D), filename
# handlers.c:1359:     *save_user=user;
	mov	rax, QWORD PTR 56[rsp]	# save_user, save_user
	mov	DWORD PTR [rax], esi	# *save_user_7(D), user
# handlers.c:1360:     *save_group=group;
	mov	rax, QWORD PTR 64[rsp]	# save_group, save_group
	mov	DWORD PTR [rax], edx	# *save_group_10(D), group
# handlers.c:1361: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	pre_sys_chown, .-pre_sys_chown
	.align 16
	.globl	sys_fchmodat
	.type	sys_fchmodat, @function
sys_fchmodat:
.LFB99:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1366:     long save_rax = __read_reg("rax");
#APP
# 1366 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1368:     vmcall_5(det_sys_fchmodat,current_task,save_dfd,save_filename,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1368 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_dfd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_filename
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_mode
	mov	edi, 63	#,
	call	vmcall	#
# handlers.c:1369: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	sys_fchmodat, .-sys_fchmodat
	.align 16
	.globl	pre_sys_fchmodat
	.type	pre_sys_fchmodat, @function
pre_sys_fchmodat:
.LFB100:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1375:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1376:     *save_dfd=dfd;
	mov	rax, QWORD PTR 48[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_4(D), dfd
# handlers.c:1377:     *save_filename=filename;
	mov	rax, QWORD PTR 56[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rsi	# *save_filename_7(D), filename
# handlers.c:1378:     *save_mode=mode;
	mov	rax, QWORD PTR 64[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rdx	# *save_mode_10(D), mode
# handlers.c:1379: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	pre_sys_fchmodat, .-pre_sys_fchmodat
	.align 16
	.globl	sys_fchmod
	.type	sys_fchmod, @function
sys_fchmod:
.LFB101:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1384:     long save_rax = __read_reg("rax");
#APP
# 1384 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1386:     vmcall_4(det_sys_fchmod,current_task,save_fd,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1386 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 64	#,
	call	vmcall	#
# handlers.c:1387: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	sys_fchmod, .-sys_fchmod
	.align 16
	.globl	pre_sys_fchmod
	.type	pre_sys_fchmod, @function
pre_sys_fchmod:
.LFB102:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:1393:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1394:     *save_fd=fd;
	mov	rax, QWORD PTR 40[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:1395:     *save_mode=mode;
	mov	rax, QWORD PTR 48[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rsi	# *save_mode_7(D), mode
# handlers.c:1396: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	pre_sys_fchmod, .-pre_sys_fchmod
	.align 16
	.globl	sys_fchown
	.type	sys_fchown, @function
sys_fchown:
.LFB103:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1402:     long save_rax = __read_reg("rax");
#APP
# 1402 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1404:     vmcall_5(det_sys_fchown,current_task,save_fd,save_user,save_group,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1404 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_user
	mov	r11d, DWORD PTR 88[rsp]	# __p4, save_group
	mov	edi, 65	#,
	call	vmcall	#
# handlers.c:1405: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	sys_fchown, .-sys_fchown
	.align 16
	.globl	pre_sys_fchown
	.type	pre_sys_fchown, @function
pre_sys_fchown:
.LFB282:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_9(D), fd
	mov	rax, QWORD PTR 56[rsp]	# save_user, save_user
	mov	DWORD PTR [rax], esi	# *save_user_10(D), user
	mov	rax, QWORD PTR 64[rsp]	# save_group, save_group
	mov	DWORD PTR [rax], edx	# *save_group_11(D), group
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE282:
	.size	pre_sys_fchown, .-pre_sys_fchown
	.align 16
	.globl	sys_fchownat
	.type	sys_fchownat, @function
sys_fchownat:
.LFB105:
	.cfi_startproc
# handlers.c:1420: {
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	r11	#
	.cfi_def_cfa_offset 40
	.cfi_offset 11, -40
	push	r10	#
	.cfi_def_cfa_offset 48
	.cfi_offset 10, -48
	push	r9	#
	.cfi_def_cfa_offset 56
	.cfi_offset 9, -56
	push	r8	#
	.cfi_def_cfa_offset 64
	.cfi_offset 8, -64
	push	rdi	#
	.cfi_def_cfa_offset 72
	.cfi_offset 5, -72
	push	rax	#
	.cfi_def_cfa_offset 80
	.cfi_offset 0, -80
# handlers.c:1421:     long save_rax = __read_reg("rax");
#APP
# 1421 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:1423:     vmcall_7(det_sys_fchownat,current_task,save_dfd,save_filename,save_user,save_group,save_flag,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1423 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 88[rsp]	# __p2, save_dfd
	mov	r10, QWORD PTR 96[rsp]	# __p3, save_filename
	mov	r11d, DWORD PTR 104[rsp]	# __p4, save_user
	mov	r12d, DWORD PTR 112[rsp]	# __p5, save_group
	movsx	r13, DWORD PTR 120[rsp]	# __p6, save_flag
	mov	edi, 66	#,
	call	vmcall	#
# handlers.c:1424: }
	pop	rax	#
	.cfi_def_cfa_offset 72
	pop	rdi	#
	.cfi_def_cfa_offset 64
	pop	r8	#
	.cfi_def_cfa_offset 56
	pop	r9	#
	.cfi_def_cfa_offset 48
	pop	r10	#
	.cfi_def_cfa_offset 40
	pop	r11	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	sys_fchownat, .-sys_fchownat
	.align 16
	.globl	pre_sys_fchownat
	.type	pre_sys_fchownat, @function
pre_sys_fchownat:
.LFB106:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rsi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1430:     *skip_call=0;
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1431:     *save_dfd=dfd;
	mov	rax, QWORD PTR 64[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_4(D), dfd
# handlers.c:1432:     *save_filename=filename;
	mov	rax, QWORD PTR 72[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rsi	# *save_filename_7(D), filename
# handlers.c:1433:     *save_user=user;
	mov	rax, QWORD PTR 80[rsp]	# save_user, save_user
	mov	DWORD PTR [rax], edx	# *save_user_10(D), user
# handlers.c:1434:     *save_group=group;
	mov	rax, QWORD PTR 88[rsp]	# save_group, save_group
	mov	DWORD PTR [rax], ecx	# *save_group_13(D), group
# handlers.c:1435:     *save_flag=flag;
	mov	rax, QWORD PTR 96[rsp]	# save_flag, save_flag
	mov	DWORD PTR [rax], r8d	# *save_flag_16(D), flag
# handlers.c:1436: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rsi	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	pre_sys_fchownat, .-pre_sys_fchownat
	.align 16
	.globl	sys_rename
	.type	sys_rename, @function
sys_rename:
.LFB107:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1442:     long save_rax = __read_reg("rax");
#APP
# 1442 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1444:     vmcall_4(det_sys_rename,current_task,save_oldname,save_newname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1444 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_oldname
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_newname
	mov	edi, 67	#,
	call	vmcall	#
# handlers.c:1445: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	sys_rename, .-sys_rename
	.align 16
	.globl	pre_sys_rename
	.type	pre_sys_rename, @function
pre_sys_rename:
.LFB108:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:1451:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1452:     *save_oldname=oldname;
	mov	rax, QWORD PTR 40[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rdi	# *save_oldname_4(D), oldname
# handlers.c:1453:     *save_newname=newname;
	mov	rax, QWORD PTR 48[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rsi	# *save_newname_7(D), newname
# handlers.c:1454: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	pre_sys_rename, .-pre_sys_rename
	.align 16
	.globl	sys_renameat2
	.type	sys_renameat2, @function
sys_renameat2:
.LFB109:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	r11	#
	.cfi_def_cfa_offset 40
	.cfi_offset 11, -40
	push	r10	#
	.cfi_def_cfa_offset 48
	.cfi_offset 10, -48
	push	r9	#
	.cfi_def_cfa_offset 56
	.cfi_offset 9, -56
	push	r8	#
	.cfi_def_cfa_offset 64
	.cfi_offset 8, -64
	push	rdi	#
	.cfi_def_cfa_offset 72
	.cfi_offset 5, -72
	push	rax	#
	.cfi_def_cfa_offset 80
	.cfi_offset 0, -80
# handlers.c:1460:     long save_rax = __read_reg("rax");
#APP
# 1460 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:1462:     vmcall_7(det_sys_renameat2,current_task,save_olddfd,save_oldname,save_newdfd,save_newname,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1462 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 88[rsp]	# __p2, save_olddfd
	mov	r10, QWORD PTR 96[rsp]	# __p3, save_oldname
	movsx	r11, DWORD PTR 104[rsp]	# __p4, save_newdfd
	mov	r12, QWORD PTR 112[rsp]	# __p5, save_newname
	mov	r13d, DWORD PTR 120[rsp]	# __p6, save_flags
	mov	edi, 68	#,
	call	vmcall	#
# handlers.c:1463: }
	pop	rax	#
	.cfi_def_cfa_offset 72
	pop	rdi	#
	.cfi_def_cfa_offset 64
	pop	r8	#
	.cfi_def_cfa_offset 56
	pop	r9	#
	.cfi_def_cfa_offset 48
	pop	r10	#
	.cfi_def_cfa_offset 40
	pop	r11	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	sys_renameat2, .-sys_renameat2
	.align 16
	.globl	pre_sys_renameat2
	.type	pre_sys_renameat2, @function
pre_sys_renameat2:
.LFB110:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rsi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1469:     *skip_call=0;
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1470:     *save_olddfd=olddfd;
	mov	rax, QWORD PTR 64[rsp]	# save_olddfd, save_olddfd
	mov	DWORD PTR [rax], edi	# *save_olddfd_4(D), olddfd
# handlers.c:1471:     *save_oldname=oldname;
	mov	rax, QWORD PTR 72[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rsi	# *save_oldname_7(D), oldname
# handlers.c:1472:     *save_newdfd=newdfd;
	mov	rax, QWORD PTR 80[rsp]	# save_newdfd, save_newdfd
	mov	DWORD PTR [rax], edx	# *save_newdfd_10(D), newdfd
# handlers.c:1473:     *save_newname=newname;
	mov	rax, QWORD PTR 88[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rcx	# *save_newname_13(D), newname
# handlers.c:1474:     *save_flags=flags;
	mov	rax, QWORD PTR 96[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], r8d	# *save_flags_16(D), flags
# handlers.c:1475: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rsi	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	pre_sys_renameat2, .-pre_sys_renameat2
	.align 16
	.globl	sys_renameat
	.type	sys_renameat, @function
sys_renameat:
.LFB111:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:1481:     long save_rax = __read_reg("rax");
#APP
# 1481 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1483:     vmcall_6(det_sys_renameat,current_task,save_olddfd,save_oldname,save_newdfd,save_newname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1483 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 80[rsp]	# __p2, save_olddfd
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_oldname
	movsx	r11, DWORD PTR 96[rsp]	# __p4, save_newdfd
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_newname
	mov	edi, 69	#,
	call	vmcall	#
# handlers.c:1484: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	sys_renameat, .-sys_renameat
	.align 16
	.globl	pre_sys_renameat
	.type	pre_sys_renameat, @function
pre_sys_renameat:
.LFB112:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1490:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1491:     *save_olddfd=olddfd;
	mov	rax, QWORD PTR 56[rsp]	# save_olddfd, save_olddfd
	mov	DWORD PTR [rax], edi	# *save_olddfd_4(D), olddfd
# handlers.c:1492:     *save_oldname=oldname;
	mov	rax, QWORD PTR 64[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rsi	# *save_oldname_7(D), oldname
# handlers.c:1493:     *save_newdfd=newdfd;
	mov	rax, QWORD PTR 72[rsp]	# save_newdfd, save_newdfd
	mov	DWORD PTR [rax], edx	# *save_newdfd_10(D), newdfd
# handlers.c:1494:     *save_newname=newname;
	mov	rax, QWORD PTR 80[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rcx	# *save_newname_13(D), newname
# handlers.c:1495: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	pre_sys_renameat, .-pre_sys_renameat
	.align 16
	.globl	sys_mkdir
	.type	sys_mkdir, @function
sys_mkdir:
.LFB113:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1501:     long save_rax = __read_reg("rax");
#APP
# 1501 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1503:     vmcall_4(det_sys_mkdir,current_task,save_pathname,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1503 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_pathname
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 70	#,
	call	vmcall	#
# handlers.c:1504: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	sys_mkdir, .-sys_mkdir
	.align 16
	.globl	pre_sys_mkdir
	.type	pre_sys_mkdir, @function
pre_sys_mkdir:
.LFB284:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_pathname, save_pathname
	mov	QWORD PTR [rax], rdi	# *save_pathname_9(D), pathname
	mov	rax, QWORD PTR 48[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rsi	# *save_mode_10(D), mode
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE284:
	.size	pre_sys_mkdir, .-pre_sys_mkdir
	.align 16
	.globl	sys_creat
	.type	sys_creat, @function
sys_creat:
.LFB115:
	.cfi_startproc
# handlers.c:1518: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1519:     long save_rax = __read_reg("rax");
#APP
# 1519 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1521:     vmcall_4(det_sys_creat,current_task,save_pathname,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1521 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_pathname
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 71	#,
	call	vmcall	#
# handlers.c:1522: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	sys_creat, .-sys_creat
	.align 16
	.globl	pre_sys_creat
	.type	pre_sys_creat, @function
pre_sys_creat:
.LFB286:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_pathname, save_pathname
	mov	QWORD PTR [rax], rdi	# *save_pathname_9(D), pathname
	mov	rax, QWORD PTR 48[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rsi	# *save_mode_10(D), mode
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE286:
	.size	pre_sys_creat, .-pre_sys_creat
	.align 16
	.globl	sys_openat
	.type	sys_openat, @function
sys_openat:
.LFB117:
	.cfi_startproc
# handlers.c:1536: {
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:1537:     long save_rax = __read_reg("rax");
#APP
# 1537 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1539:     vmcall_6(det_sys_openat,current_task,save_dfd,save_filename,save_flags,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1539 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 80[rsp]	# __p2, save_dfd
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_filename
	movsx	r11, DWORD PTR 96[rsp]	# __p4, save_flags
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_mode
	mov	edi, 72	#,
	call	vmcall	#
# handlers.c:1540: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE117:
	.size	sys_openat, .-sys_openat
	.align 16
	.globl	pre_sys_openat
	.type	pre_sys_openat, @function
pre_sys_openat:
.LFB118:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1546:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1547:     *save_dfd=dfd;
	mov	rax, QWORD PTR 56[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_4(D), dfd
# handlers.c:1548:     *save_filename=filename;
	mov	rax, QWORD PTR 64[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rsi	# *save_filename_7(D), filename
# handlers.c:1549:     *save_flags=flags;
	mov	rax, QWORD PTR 72[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], edx	# *save_flags_10(D), flags
# handlers.c:1550:     *save_mode=mode;
	mov	rax, QWORD PTR 80[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rcx	# *save_mode_13(D), mode
# handlers.c:1551: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE118:
	.size	pre_sys_openat, .-pre_sys_openat
	.align 16
	.globl	sys_link
	.type	sys_link, @function
sys_link:
.LFB119:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1557:     long save_rax = __read_reg("rax");
#APP
# 1557 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1559:     vmcall_4(det_sys_link,current_task,save_oldname,save_newname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1559 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_oldname
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_newname
	mov	edi, 73	#,
	call	vmcall	#
# handlers.c:1560: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	sys_link, .-sys_link
	.align 16
	.globl	pre_sys_link
	.type	pre_sys_link, @function
pre_sys_link:
.LFB268:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rdi	# *save_oldname_9(D), oldname
	mov	rax, QWORD PTR 48[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rsi	# *save_newname_10(D), newname
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE268:
	.size	pre_sys_link, .-pre_sys_link
	.align 16
	.globl	sys_unlink
	.type	sys_unlink, @function
sys_unlink:
.LFB121:
	.cfi_startproc
# handlers.c:1574: {
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1575:     long save_rax = __read_reg("rax");
#APP
# 1575 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1577:     vmcall_3(det_sys_unlink,current_task,save_pathname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1577 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_pathname
	mov	edi, 74	#,
	call	vmcall	#
# handlers.c:1578: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE121:
	.size	sys_unlink, .-sys_unlink
	.align 16
	.globl	pre_sys_unlink
	.type	pre_sys_unlink, @function
pre_sys_unlink:
.LFB228:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 32[rsp]	# save_pathname, save_pathname
	mov	QWORD PTR [rax], rdi	# *save_pathname_9(D), pathname
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE228:
	.size	pre_sys_unlink, .-pre_sys_unlink
	.align 16
	.globl	sys_unlinkat
	.type	sys_unlinkat, @function
sys_unlinkat:
.LFB123:
	.cfi_startproc
# handlers.c:1591: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1592:     long save_rax = __read_reg("rax");
#APP
# 1592 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1594:     vmcall_5(det_sys_unlinkat,current_task,save_dfd,save_pathname,save_flag,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1594 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_dfd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_pathname
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_flag
	mov	edi, 75	#,
	call	vmcall	#
# handlers.c:1595: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE123:
	.size	sys_unlinkat, .-sys_unlinkat
	.align 16
	.globl	pre_sys_unlinkat
	.type	pre_sys_unlinkat, @function
pre_sys_unlinkat:
.LFB124:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1601:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1602:     *save_dfd=dfd;
	mov	rax, QWORD PTR 48[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_4(D), dfd
# handlers.c:1603:     *save_pathname=pathname;
	mov	rax, QWORD PTR 56[rsp]	# save_pathname, save_pathname
	mov	QWORD PTR [rax], rsi	# *save_pathname_7(D), pathname
# handlers.c:1604:     *save_flag=flag;
	mov	rax, QWORD PTR 64[rsp]	# save_flag, save_flag
	mov	DWORD PTR [rax], edx	# *save_flag_10(D), flag
# handlers.c:1605: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE124:
	.size	pre_sys_unlinkat, .-pre_sys_unlinkat
	.align 16
	.globl	sys_linkat
	.type	sys_linkat, @function
sys_linkat:
.LFB125:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	r11	#
	.cfi_def_cfa_offset 40
	.cfi_offset 11, -40
	push	r10	#
	.cfi_def_cfa_offset 48
	.cfi_offset 10, -48
	push	r9	#
	.cfi_def_cfa_offset 56
	.cfi_offset 9, -56
	push	r8	#
	.cfi_def_cfa_offset 64
	.cfi_offset 8, -64
	push	rdi	#
	.cfi_def_cfa_offset 72
	.cfi_offset 5, -72
	push	rax	#
	.cfi_def_cfa_offset 80
	.cfi_offset 0, -80
# handlers.c:1611:     long save_rax = __read_reg("rax");
#APP
# 1611 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:1613:     vmcall_7(det_sys_linkat,current_task,save_olddfd,save_oldname,save_newdfd,save_newname,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1613 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 88[rsp]	# __p2, save_olddfd
	mov	r10, QWORD PTR 96[rsp]	# __p3, save_oldname
	movsx	r11, DWORD PTR 104[rsp]	# __p4, save_newdfd
	mov	r12, QWORD PTR 112[rsp]	# __p5, save_newname
	mov	r13d, DWORD PTR 120[rsp]	# __p6, save_flags
	mov	edi, 76	#,
	call	vmcall	#
# handlers.c:1614: }
	pop	rax	#
	.cfi_def_cfa_offset 72
	pop	rdi	#
	.cfi_def_cfa_offset 64
	pop	r8	#
	.cfi_def_cfa_offset 56
	pop	r9	#
	.cfi_def_cfa_offset 48
	pop	r10	#
	.cfi_def_cfa_offset 40
	pop	r11	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE125:
	.size	sys_linkat, .-sys_linkat
	.align 16
	.globl	pre_sys_linkat
	.type	pre_sys_linkat, @function
pre_sys_linkat:
.LFB292:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rsi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 64[rsp]	# save_olddfd, save_olddfd
	mov	DWORD PTR [rax], edi	# *save_olddfd_9(D), olddfd
	mov	rax, QWORD PTR 72[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rsi	# *save_oldname_10(D), oldname
	mov	rax, QWORD PTR 80[rsp]	# save_newdfd, save_newdfd
	mov	DWORD PTR [rax], edx	# *save_newdfd_11(D), newdfd
	mov	rax, QWORD PTR 88[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rcx	# *save_newname_12(D), newname
	mov	rax, QWORD PTR 96[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], r8d	# *save_flags_13(D), flags
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rsi	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE292:
	.size	pre_sys_linkat, .-pre_sys_linkat
	.align 16
	.globl	sys_symlinkat
	.type	sys_symlinkat, @function
sys_symlinkat:
.LFB127:
	.cfi_startproc
# handlers.c:1631: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1632:     long save_rax = __read_reg("rax");
#APP
# 1632 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1634:     vmcall_5(det_sys_symlinkat,current_task,save_oldname,save_newdfd,save_newname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1634 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_oldname
	movsx	r10, DWORD PTR 80[rsp]	# __p3, save_newdfd
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_newname
	mov	edi, 78	#,
	call	vmcall	#
# handlers.c:1635: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE127:
	.size	sys_symlinkat, .-sys_symlinkat
	.align 16
	.globl	pre_sys_symlinkat
	.type	pre_sys_symlinkat, @function
pre_sys_symlinkat:
.LFB128:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1641:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1642:     *save_oldname=oldname;
	mov	rax, QWORD PTR 48[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rdi	# *save_oldname_4(D), oldname
# handlers.c:1643:     *save_newdfd=newdfd;
	mov	rax, QWORD PTR 56[rsp]	# save_newdfd, save_newdfd
	mov	DWORD PTR [rax], esi	# *save_newdfd_7(D), newdfd
# handlers.c:1644:     *save_newname=newname;
	mov	rax, QWORD PTR 64[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rdx	# *save_newname_10(D), newname
# handlers.c:1645: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE128:
	.size	pre_sys_symlinkat, .-pre_sys_symlinkat
	.align 16
	.globl	sys_symlink
	.type	sys_symlink, @function
sys_symlink:
.LFB129:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1651:     long save_rax = __read_reg("rax");
#APP
# 1651 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1653:     vmcall_4(det_sys_symlink,current_task,save_old,save_new,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1653 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_old
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_new
	mov	edi, 77	#,
	call	vmcall	#
# handlers.c:1654: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE129:
	.size	sys_symlink, .-sys_symlink
	.align 16
	.globl	pre_sys_symlink
	.type	pre_sys_symlink, @function
pre_sys_symlink:
.LFB270:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_old, save_old
	mov	QWORD PTR [rax], rdi	# *save_old_9(D), old
	mov	rax, QWORD PTR 48[rsp]	# save_new, save_new
	mov	QWORD PTR [rax], rsi	# *save_new_10(D), new
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE270:
	.size	pre_sys_symlink, .-pre_sys_symlink
	.align 16
	.globl	sys_access
	.type	sys_access, @function
sys_access:
.LFB131:
	.cfi_startproc
# handlers.c:1668: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1669:     long save_rax = __read_reg("rax");
#APP
# 1669 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1671:     vmcall_4(det_sys_access,current_task,save_filename,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1671 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_filename
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 79	#,
	call	vmcall	#
# handlers.c:1672: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE131:
	.size	sys_access, .-sys_access
	.align 16
	.globl	pre_sys_access
	.type	pre_sys_access, @function
pre_sys_access:
.LFB288:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_9(D), filename
	mov	rax, QWORD PTR 48[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rsi	# *save_mode_10(D), mode
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE288:
	.size	pre_sys_access, .-pre_sys_access
	.align 16
	.globl	sys_newfstat
	.type	sys_newfstat, @function
sys_newfstat:
.LFB133:
	.cfi_startproc
# handlers.c:1686: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1687:     long save_rax = __read_reg("rax");
#APP
# 1687 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1689:     vmcall_4(det_sys_newfstat,current_task,save_fd,save_statbuf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1689 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_statbuf
	mov	edi, 80	#,
	call	vmcall	#
# handlers.c:1690: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE133:
	.size	sys_newfstat, .-sys_newfstat
	.align 16
	.globl	pre_sys_newfstat
	.type	pre_sys_newfstat, @function
pre_sys_newfstat:
.LFB278:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_9(D), fd
	mov	rax, QWORD PTR 48[rsp]	# save_statbuf, save_statbuf
	mov	QWORD PTR [rax], rsi	# *save_statbuf_10(D), statbuf
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE278:
	.size	pre_sys_newfstat, .-pre_sys_newfstat
	.align 16
	.globl	sys_newstat
	.type	sys_newstat, @function
sys_newstat:
.LFB135:
	.cfi_startproc
# handlers.c:1704: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1705:     long save_rax = __read_reg("rax");
#APP
# 1705 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1707:     vmcall_4(det_sys_newstat,current_task,save_filename,save_statbuf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1707 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_filename
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_statbuf
	mov	edi, 81	#,
	call	vmcall	#
# handlers.c:1708: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE135:
	.size	sys_newstat, .-sys_newstat
	.align 16
	.globl	pre_sys_newstat
	.type	pre_sys_newstat, @function
pre_sys_newstat:
.LFB136:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:1714:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1715:     *save_filename=filename;
	mov	rax, QWORD PTR 40[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_4(D), filename
# handlers.c:1716:     *save_statbuf=statbuf;
	mov	rax, QWORD PTR 48[rsp]	# save_statbuf, save_statbuf
	mov	QWORD PTR [rax], rsi	# *save_statbuf_7(D), statbuf
# handlers.c:1717: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE136:
	.size	pre_sys_newstat, .-pre_sys_newstat
	.align 16
	.globl	sys_newlstat
	.type	sys_newlstat, @function
sys_newlstat:
.LFB137:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1723:     long save_rax = __read_reg("rax");
#APP
# 1723 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1725:     vmcall_4(det_sys_newlstat,current_task,save_filename,save_statbuf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1725 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_filename
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_statbuf
	mov	edi, 82	#,
	call	vmcall	#
# handlers.c:1726: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE137:
	.size	sys_newlstat, .-sys_newlstat
	.align 16
	.globl	pre_sys_newlstat
	.type	pre_sys_newlstat, @function
pre_sys_newlstat:
.LFB272:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_9(D), filename
	mov	rax, QWORD PTR 48[rsp]	# save_statbuf, save_statbuf
	mov	QWORD PTR [rax], rsi	# *save_statbuf_10(D), statbuf
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE272:
	.size	pre_sys_newlstat, .-pre_sys_newlstat
	.align 16
	.globl	sys_newfstatat
	.type	sys_newfstatat, @function
sys_newfstatat:
.LFB139:
	.cfi_startproc
# handlers.c:1741: {
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:1742:     long save_rax = __read_reg("rax");
#APP
# 1742 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1744:     vmcall_6(det_sys_newfstatat,current_task,save_dfd,save_filename,save_statbuf,save_flag,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1744 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 80[rsp]	# __p2, save_dfd
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_filename
	mov	r11, QWORD PTR 96[rsp]	# __p4, save_statbuf
	movsx	r12, DWORD PTR 104[rsp]	# __p5, save_flag
	mov	edi, 83	#,
	call	vmcall	#
# handlers.c:1745: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE139:
	.size	sys_newfstatat, .-sys_newfstatat
	.align 16
	.globl	pre_sys_newfstatat
	.type	pre_sys_newfstatat, @function
pre_sys_newfstatat:
.LFB140:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1752:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1753:     *save_dfd=dfd;
	mov	rax, QWORD PTR 56[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_4(D), dfd
# handlers.c:1754:     *save_filename=filename;
	mov	rax, QWORD PTR 64[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rsi	# *save_filename_7(D), filename
# handlers.c:1755:     *save_statbuf=statbuf;
	mov	rax, QWORD PTR 72[rsp]	# save_statbuf, save_statbuf
	mov	QWORD PTR [rax], rdx	# *save_statbuf_10(D), statbuf
# handlers.c:1756:     *save_flag=flag;
	mov	rax, QWORD PTR 80[rsp]	# save_flag, save_flag
	mov	DWORD PTR [rax], ecx	# *save_flag_13(D), flag
# handlers.c:1757: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE140:
	.size	pre_sys_newfstatat, .-pre_sys_newfstatat
	.align 16
	.globl	sys_pwrite64
	.type	sys_pwrite64, @function
sys_pwrite64:
.LFB141:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:1765:     long save_rax = __read_reg("rax");
#APP
# 1765 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1767:     vmcall_6(det_sys_pwrite64,current_task,save_fd,save_buf,save_count,save_pos,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1767 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 80[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_buf
	mov	r11d, DWORD PTR 96[rsp]	# __p4, save_count
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_pos
	mov	edi, 84	#,
	call	vmcall	#
# handlers.c:1768: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE141:
	.size	sys_pwrite64, .-sys_pwrite64
	.align 16
	.globl	pre_sys_pwrite64
	.type	pre_sys_pwrite64, @function
pre_sys_pwrite64:
.LFB142:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1775:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1776:     *save_fd=fd;
	mov	rax, QWORD PTR 56[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:1777:     *save_buf=buf;
	mov	rax, QWORD PTR 64[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:1778:     *save_count=count;
	mov	rax, QWORD PTR 72[rsp]	# save_count, save_count
	mov	DWORD PTR [rax], edx	# *save_count_10(D), count
# handlers.c:1779:     *save_pos=pos;
	mov	rax, QWORD PTR 80[rsp]	# save_pos, save_pos
	mov	QWORD PTR [rax], rcx	# *save_pos_13(D), pos
# handlers.c:1780: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE142:
	.size	pre_sys_pwrite64, .-pre_sys_pwrite64
	.align 16
	.globl	sys_pread64
	.type	sys_pread64, @function
sys_pread64:
.LFB143:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:1786:     long save_rax = __read_reg("rax");
#APP
# 1786 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1788:     vmcall_6(det_sys_pread64,current_task,save_fd,save_buf,save_count,save_pos,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1788 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 80[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_buf
	mov	r11d, DWORD PTR 96[rsp]	# __p4, save_count
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_pos
	mov	edi, 85	#,
	call	vmcall	#
# handlers.c:1789: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE143:
	.size	sys_pread64, .-sys_pread64
	.align 16
	.globl	pre_sys_pread64
	.type	pre_sys_pread64, @function
pre_sys_pread64:
.LFB294:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 56[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_9(D), fd
	mov	rax, QWORD PTR 64[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_10(D), buf
	mov	rax, QWORD PTR 72[rsp]	# save_count, save_count
	mov	DWORD PTR [rax], edx	# *save_count_11(D), count
	mov	rax, QWORD PTR 80[rsp]	# save_pos, save_pos
	mov	QWORD PTR [rax], rcx	# *save_pos_12(D), pos
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE294:
	.size	pre_sys_pread64, .-pre_sys_pread64
	.align 16
	.globl	sys_mmap_pgoff
	.type	sys_mmap_pgoff, @function
sys_mmap_pgoff:
.LFB145:
	.cfi_startproc
# handlers.c:1806: {
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	r11	#
	.cfi_def_cfa_offset 48
	.cfi_offset 11, -48
	push	r10	#
	.cfi_def_cfa_offset 56
	.cfi_offset 10, -56
	push	r9	#
	.cfi_def_cfa_offset 64
	.cfi_offset 9, -64
	push	r8	#
	.cfi_def_cfa_offset 72
	.cfi_offset 8, -72
	push	rdi	#
	.cfi_def_cfa_offset 80
	.cfi_offset 5, -80
	push	rax	#
	.cfi_def_cfa_offset 88
	.cfi_offset 0, -88
# handlers.c:1807:     long save_rax = __read_reg("rax");
#APP
# 1807 "handlers.c" 1
	mov r15, rax	# val
	
# 0 "" 2
# handlers.c:1809:     vmcall_8(det_sys_mmap_pgoff,current_task,save_addr,save_len,save_prot,save_flags,save_fd,save_pgoff,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1809 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 96[rsp]	# __p2, save_addr
	mov	r10, QWORD PTR 104[rsp]	# __p3, save_len
	mov	r11, QWORD PTR 112[rsp]	# __p4, save_prot
	mov	r12, QWORD PTR 120[rsp]	# __p5, save_flags
	mov	r13, QWORD PTR 128[rsp]	# __p6, save_fd
	mov	r14, QWORD PTR 136[rsp]	# __p7, save_pgoff
	mov	edi, 86	#,
	call	vmcall	#
# handlers.c:1810: }
	pop	rax	#
	.cfi_def_cfa_offset 80
	pop	rdi	#
	.cfi_def_cfa_offset 72
	pop	r8	#
	.cfi_def_cfa_offset 64
	pop	r9	#
	.cfi_def_cfa_offset 56
	pop	r10	#
	.cfi_def_cfa_offset 48
	pop	r11	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE145:
	.size	sys_mmap_pgoff, .-sys_mmap_pgoff
	.align 16
	.globl	pre_sys_mmap_pgoff
	.type	pre_sys_mmap_pgoff, @function
pre_sys_mmap_pgoff:
.LFB146:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rcx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 2, -48
	push	rdx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 1, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1817:     *skip_call=0;
	mov	rax, QWORD PTR 64[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1818:     *save_addr=addr;
	mov	rax, QWORD PTR 72[rsp]	# save_addr, save_addr
	mov	QWORD PTR [rax], rdi	# *save_addr_4(D), addr
# handlers.c:1819:     *save_len=len;
	mov	rax, QWORD PTR 80[rsp]	# save_len, save_len
	mov	QWORD PTR [rax], rsi	# *save_len_7(D), len
# handlers.c:1820:     *save_prot=prot;
	mov	rax, QWORD PTR 88[rsp]	# save_prot, save_prot
	mov	QWORD PTR [rax], rdx	# *save_prot_10(D), prot
# handlers.c:1821:     *save_flags=flags;
	mov	rax, QWORD PTR 96[rsp]	# save_flags, save_flags
	mov	QWORD PTR [rax], rcx	# *save_flags_13(D), flags
# handlers.c:1822:     *save_fd=fd;
	mov	rax, QWORD PTR 104[rsp]	# save_fd, save_fd
	mov	QWORD PTR [rax], r8	# *save_fd_16(D), fd
# handlers.c:1823:     *save_pgoff=pgoff;
	mov	rax, QWORD PTR 112[rsp]	# save_pgoff, save_pgoff
	mov	QWORD PTR [rax], r9	# *save_pgoff_19(D), pgoff
# handlers.c:1824: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdx	#
	.cfi_def_cfa_offset 48
	pop	rcx	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE146:
	.size	pre_sys_mmap_pgoff, .-pre_sys_mmap_pgoff
	.align 16
	.globl	sys_prctl
	.type	sys_prctl, @function
sys_prctl:
.LFB147:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	r11	#
	.cfi_def_cfa_offset 40
	.cfi_offset 11, -40
	push	r10	#
	.cfi_def_cfa_offset 48
	.cfi_offset 10, -48
	push	r9	#
	.cfi_def_cfa_offset 56
	.cfi_offset 9, -56
	push	r8	#
	.cfi_def_cfa_offset 64
	.cfi_offset 8, -64
	push	rdi	#
	.cfi_def_cfa_offset 72
	.cfi_offset 5, -72
	push	rax	#
	.cfi_def_cfa_offset 80
	.cfi_offset 0, -80
# handlers.c:1832:     long save_rax = __read_reg("rax");
#APP
# 1832 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:1834:     vmcall_7(det_sys_prctl,current_task,save_option,save_arg2,save_arg3,save_arg4,save_arg5,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1834 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 88[rsp]	# __p2, save_option
	mov	r10, QWORD PTR 96[rsp]	# __p3, save_arg2
	mov	r11, QWORD PTR 104[rsp]	# __p4, save_arg3
	mov	r12, QWORD PTR 112[rsp]	# __p5, save_arg4
	mov	r13, QWORD PTR 120[rsp]	# __p6, save_arg5
	mov	edi, 87	#,
	call	vmcall	#
# handlers.c:1835: }
	pop	rax	#
	.cfi_def_cfa_offset 72
	pop	rdi	#
	.cfi_def_cfa_offset 64
	pop	r8	#
	.cfi_def_cfa_offset 56
	pop	r9	#
	.cfi_def_cfa_offset 48
	pop	r10	#
	.cfi_def_cfa_offset 40
	pop	r11	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE147:
	.size	sys_prctl, .-sys_prctl
	.align 16
	.globl	pre_sys_prctl
	.type	pre_sys_prctl, @function
pre_sys_prctl:
.LFB148:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rsi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1842:     *skip_call=0;
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1843:     *save_option=option;
	mov	rax, QWORD PTR 64[rsp]	# save_option, save_option
	mov	DWORD PTR [rax], edi	# *save_option_4(D), option
# handlers.c:1844:     *save_arg2=arg2;
	mov	rax, QWORD PTR 72[rsp]	# save_arg2, save_arg2
	mov	QWORD PTR [rax], rsi	# *save_arg2_7(D), arg2
# handlers.c:1845:     *save_arg3=arg3;
	mov	rax, QWORD PTR 80[rsp]	# save_arg3, save_arg3
	mov	QWORD PTR [rax], rdx	# *save_arg3_10(D), arg3
# handlers.c:1846:     *save_arg4=arg4;
	mov	rax, QWORD PTR 88[rsp]	# save_arg4, save_arg4
	mov	QWORD PTR [rax], rcx	# *save_arg4_13(D), arg4
# handlers.c:1847:     *save_arg5=arg5;
	mov	rax, QWORD PTR 96[rsp]	# save_arg5, save_arg5
	mov	QWORD PTR [rax], r8	# *save_arg5_16(D), arg5
# handlers.c:1848: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rsi	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE148:
	.size	pre_sys_prctl, .-pre_sys_prctl
	.align 16
	.globl	do_sigaction
	.type	do_sigaction, @function
do_sigaction:
.LFB149:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1854:     long save_rax = __read_reg("rax");
#APP
# 1854 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1856:     vmcall_5(det_do_sigaction,current_task,save_a,save_b,save_c,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1856 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_a
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_b
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_c
	mov	edi, 88	#,
	call	vmcall	#
# handlers.c:1857: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE149:
	.size	do_sigaction, .-do_sigaction
	.align 16
	.globl	pre_do_sigaction
	.type	pre_do_sigaction, @function
pre_do_sigaction:
.LFB150:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1863:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1864:     *save_a=a;
	mov	rax, QWORD PTR 48[rsp]	# save_a, save_a
	mov	DWORD PTR [rax], edi	# *save_a_4(D), a
# handlers.c:1865:     *save_b=b;
	mov	rax, QWORD PTR 56[rsp]	# save_b, save_b
	mov	QWORD PTR [rax], rsi	# *save_b_7(D), b
# handlers.c:1866:     *save_c=c;
	mov	rax, QWORD PTR 64[rsp]	# save_c, save_c
	mov	QWORD PTR [rax], rdx	# *save_c_10(D), c
# handlers.c:1867: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE150:
	.size	pre_do_sigaction, .-pre_do_sigaction
	.align 16
	.globl	sys_select
	.type	sys_select, @function
sys_select:
.LFB151:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	r11	#
	.cfi_def_cfa_offset 40
	.cfi_offset 11, -40
	push	r10	#
	.cfi_def_cfa_offset 48
	.cfi_offset 10, -48
	push	r9	#
	.cfi_def_cfa_offset 56
	.cfi_offset 9, -56
	push	r8	#
	.cfi_def_cfa_offset 64
	.cfi_offset 8, -64
	push	rdi	#
	.cfi_def_cfa_offset 72
	.cfi_offset 5, -72
	push	rax	#
	.cfi_def_cfa_offset 80
	.cfi_offset 0, -80
# handlers.c:1873:     long save_rax = __read_reg("rax");
#APP
# 1873 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:1875:     vmcall_7(det_sys_select,current_task,save_n,save_inp,save_outp,save_exp,save_tvp,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1875 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 88[rsp]	# __p2, save_n
	mov	r10, QWORD PTR 96[rsp]	# __p3, save_inp
	mov	r11, QWORD PTR 104[rsp]	# __p4, save_outp
	mov	r12, QWORD PTR 112[rsp]	# __p5, save_exp
	mov	r13, QWORD PTR 120[rsp]	# __p6, save_tvp
	mov	edi, 89	#,
	call	vmcall	#
# handlers.c:1876: }
	pop	rax	#
	.cfi_def_cfa_offset 72
	pop	rdi	#
	.cfi_def_cfa_offset 64
	pop	r8	#
	.cfi_def_cfa_offset 56
	pop	r9	#
	.cfi_def_cfa_offset 48
	pop	r10	#
	.cfi_def_cfa_offset 40
	pop	r11	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE151:
	.size	sys_select, .-sys_select
	.align 16
	.globl	pre_sys_select
	.type	pre_sys_select, @function
pre_sys_select:
.LFB152:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rsi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1882:     *skip_call=0;
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1883:     *save_n=n;
	mov	rax, QWORD PTR 64[rsp]	# save_n, save_n
	mov	DWORD PTR [rax], edi	# *save_n_4(D), n
# handlers.c:1884:     *save_inp=inp;
	mov	rax, QWORD PTR 72[rsp]	# save_inp, save_inp
	mov	QWORD PTR [rax], rsi	# *save_inp_7(D), inp
# handlers.c:1885:     *save_outp=outp;
	mov	rax, QWORD PTR 80[rsp]	# save_outp, save_outp
	mov	QWORD PTR [rax], rdx	# *save_outp_10(D), outp
# handlers.c:1886:     *save_exp=exp;
	mov	rax, QWORD PTR 88[rsp]	# save_exp, save_exp
	mov	QWORD PTR [rax], rcx	# *save_exp_13(D), exp
# handlers.c:1887:     *save_tvp=tvp;
	mov	rax, QWORD PTR 96[rsp]	# save_tvp, save_tvp
	mov	QWORD PTR [rax], r8	# *save_tvp_16(D), tvp
# handlers.c:1888: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rsi	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE152:
	.size	pre_sys_select, .-pre_sys_select
	.align 16
	.globl	sys_clock_gettime
	.type	sys_clock_gettime, @function
sys_clock_gettime:
.LFB153:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1894:     long save_rax = __read_reg("rax");
#APP
# 1894 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1896:     vmcall_4(det_sys_clock_gettime,current_task,save_which_clock,save_tp,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1896 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_which_clock
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_tp
	mov	edi, 90	#,
	call	vmcall	#
# handlers.c:1897: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE153:
	.size	sys_clock_gettime, .-sys_clock_gettime
	.align 16
	.globl	pre_sys_clock_gettime
	.type	pre_sys_clock_gettime, @function
pre_sys_clock_gettime:
.LFB154:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:1903:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1904:     *save_which_clock=which_clock;
	mov	rax, QWORD PTR 40[rsp]	# save_which_clock, save_which_clock
	mov	QWORD PTR [rax], rdi	# *save_which_clock_4(D), which_clock
# handlers.c:1905:     *save_tp=tp;
	mov	rax, QWORD PTR 48[rsp]	# save_tp, save_tp
	mov	QWORD PTR [rax], rsi	# *save_tp_7(D), tp
# handlers.c:1906: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE154:
	.size	pre_sys_clock_gettime, .-pre_sys_clock_gettime
	.align 16
	.globl	sys_perf_event_open
	.type	sys_perf_event_open, @function
sys_perf_event_open:
.LFB155:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	r11	#
	.cfi_def_cfa_offset 40
	.cfi_offset 11, -40
	push	r10	#
	.cfi_def_cfa_offset 48
	.cfi_offset 10, -48
	push	r9	#
	.cfi_def_cfa_offset 56
	.cfi_offset 9, -56
	push	r8	#
	.cfi_def_cfa_offset 64
	.cfi_offset 8, -64
	push	rdi	#
	.cfi_def_cfa_offset 72
	.cfi_offset 5, -72
	push	rax	#
	.cfi_def_cfa_offset 80
	.cfi_offset 0, -80
# handlers.c:1913:     long save_rax = __read_reg("rax");
#APP
# 1913 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:1915:     vmcall_7(det_sys_clock_gettime,current_task,save_attr,save_pid,save_cpu,save_group_fd,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1915 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 88[rsp]	# __p2, save_attr
	mov	r10d, DWORD PTR 96[rsp]	# __p3, save_pid
	movsx	r11, DWORD PTR 104[rsp]	# __p4, save_cpu
	movsx	r12, DWORD PTR 112[rsp]	# __p5, save_group_fd
	mov	r13, QWORD PTR 120[rsp]	# __p6, save_flags
	mov	edi, 90	#,
	call	vmcall	#
# handlers.c:1916: }
	pop	rax	#
	.cfi_def_cfa_offset 72
	pop	rdi	#
	.cfi_def_cfa_offset 64
	pop	r8	#
	.cfi_def_cfa_offset 56
	pop	r9	#
	.cfi_def_cfa_offset 48
	pop	r10	#
	.cfi_def_cfa_offset 40
	pop	r11	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE155:
	.size	sys_perf_event_open, .-sys_perf_event_open
	.align 16
	.globl	pre_sys_perf_event_open
	.type	pre_sys_perf_event_open, @function
pre_sys_perf_event_open:
.LFB156:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rsi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1923:     *skip_call=0;
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1924:     *save_attr=attr;
	mov	rax, QWORD PTR 64[rsp]	# save_attr, save_attr
	mov	QWORD PTR [rax], rdi	# *save_attr_4(D), attr
# handlers.c:1925:     *save_pid=pid;
	mov	rax, QWORD PTR 72[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], esi	# *save_pid_7(D), pid
# handlers.c:1926:     *save_cpu=cpu;
	mov	rax, QWORD PTR 80[rsp]	# save_cpu, save_cpu
	mov	DWORD PTR [rax], edx	# *save_cpu_10(D), cpu
# handlers.c:1927:     *save_group_fd=group_fd;
	mov	rax, QWORD PTR 88[rsp]	# save_group_fd, save_group_fd
	mov	DWORD PTR [rax], ecx	# *save_group_fd_13(D), group_fd
# handlers.c:1928:     *save_flags=flags;
	mov	rax, QWORD PTR 96[rsp]	# save_flags, save_flags
	mov	QWORD PTR [rax], r8	# *save_flags_16(D), flags
# handlers.c:1929: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rsi	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE156:
	.size	pre_sys_perf_event_open, .-pre_sys_perf_event_open
	.align 16
	.globl	sys_newuname
	.type	sys_newuname, @function
sys_newuname:
.LFB157:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1935:     long save_rax = __read_reg("rax");
#APP
# 1935 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1937:     vmcall_3(det_sys_newuname,current_task,save_a,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1937 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_a
	mov	edi, 92	#,
	call	vmcall	#
# handlers.c:1938: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE157:
	.size	sys_newuname, .-sys_newuname
	.align 16
	.globl	pre_sys_newuname
	.type	pre_sys_newuname, @function
pre_sys_newuname:
.LFB232:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 32[rsp]	# save_a, save_a
	mov	QWORD PTR [rax], rdi	# *save_a_9(D), a
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE232:
	.size	pre_sys_newuname, .-pre_sys_newuname
	.align 16
	.globl	sys_reboot
	.type	sys_reboot, @function
sys_reboot:
.LFB159:
	.cfi_startproc
# handlers.c:1951: {
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:1952:     long save_rax = __read_reg("rax");
#APP
# 1952 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1954:     vmcall_6(det_sys_reboot,current_task,save_magic1,save_magic2,save_cmd,save_arg,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1954 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 80[rsp]	# __p2, save_magic1
	movsx	r10, DWORD PTR 88[rsp]	# __p3, save_magic2
	mov	r11d, DWORD PTR 96[rsp]	# __p4, save_cmd
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_arg
	mov	edi, 93	#,
	call	vmcall	#
# handlers.c:1955: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE159:
	.size	sys_reboot, .-sys_reboot
	.align 16
	.globl	pre_sys_reboot
	.type	pre_sys_reboot, @function
pre_sys_reboot:
.LFB160:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:1961:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1962:     *save_magic1=magic1;
	mov	rax, QWORD PTR 56[rsp]	# save_magic1, save_magic1
	mov	DWORD PTR [rax], edi	# *save_magic1_4(D), magic1
# handlers.c:1963:     *save_magic2=magic2;
	mov	rax, QWORD PTR 64[rsp]	# save_magic2, save_magic2
	mov	DWORD PTR [rax], esi	# *save_magic2_7(D), magic2
# handlers.c:1964:     *save_cmd=cmd;
	mov	rax, QWORD PTR 72[rsp]	# save_cmd, save_cmd
	mov	DWORD PTR [rax], edx	# *save_cmd_10(D), cmd
# handlers.c:1965:     *save_arg=arg;
	mov	rax, QWORD PTR 80[rsp]	# save_arg, save_arg
	mov	QWORD PTR [rax], rcx	# *save_arg_13(D), arg
# handlers.c:1966: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE160:
	.size	pre_sys_reboot, .-pre_sys_reboot
	.align 16
	.globl	sys_init_module
	.type	sys_init_module, @function
sys_init_module:
.LFB161:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:1972:     long save_rax = __read_reg("rax");
#APP
# 1972 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1974:     vmcall_5(det_sys_init_module,current_task,save_umod,save_len,save_uargs,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1974 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_umod
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_len
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_uargs
	mov	edi, 94	#,
	call	vmcall	#
# handlers.c:1975: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE161:
	.size	sys_init_module, .-sys_init_module
	.align 16
	.globl	pre_sys_init_module
	.type	pre_sys_init_module, @function
pre_sys_init_module:
.LFB162:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:1981:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1982:     *save_umod=umod;
	mov	rax, QWORD PTR 48[rsp]	# save_umod, save_umod
	mov	QWORD PTR [rax], rdi	# *save_umod_4(D), umod
# handlers.c:1983:     *save_len=len;
	mov	rax, QWORD PTR 56[rsp]	# save_len, save_len
	mov	QWORD PTR [rax], rsi	# *save_len_7(D), len
# handlers.c:1984:     *save_uargs=uargs;
	mov	rax, QWORD PTR 64[rsp]	# save_uargs, save_uargs
	mov	QWORD PTR [rax], rdx	# *save_uargs_10(D), uargs
# handlers.c:1985: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE162:
	.size	pre_sys_init_module, .-pre_sys_init_module
	.align 16
	.globl	sys_delete_module
	.type	sys_delete_module, @function
sys_delete_module:
.LFB163:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:1991:     long save_rax = __read_reg("rax");
#APP
# 1991 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1993:     vmcall_4(det_sys_delete_module,current_task,save_name_user,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1993 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_name_user
	mov	r10d, DWORD PTR 72[rsp]	# __p3, save_flags
	mov	edi, 95	#,
	call	vmcall	#
# handlers.c:1994: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE163:
	.size	sys_delete_module, .-sys_delete_module
	.align 16
	.globl	pre_sys_delete_module
	.type	pre_sys_delete_module, @function
pre_sys_delete_module:
.LFB164:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:2000:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2001:     *save_name_user=name_user;
	mov	rax, QWORD PTR 40[rsp]	# save_name_user, save_name_user
	mov	QWORD PTR [rax], rdi	# *save_name_user_4(D), name_user
# handlers.c:2002:     *save_flags=flags;
	mov	rax, QWORD PTR 48[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], esi	# *save_flags_7(D), flags
# handlers.c:2003: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE164:
	.size	pre_sys_delete_module, .-pre_sys_delete_module
	.align 16
	.globl	sys_finit_module
	.type	sys_finit_module, @function
sys_finit_module:
.LFB165:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2009:     long save_rax = __read_reg("rax");
#APP
# 2009 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:2011:     vmcall_5(det_sys_finit_module,current_task,save_fd,save_uargs,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2011 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_uargs
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_flags
	mov	edi, 96	#,
	call	vmcall	#
# handlers.c:2012: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE165:
	.size	sys_finit_module, .-sys_finit_module
	.align 16
	.globl	pre_sys_finit_module
	.type	pre_sys_finit_module, @function
pre_sys_finit_module:
.LFB236:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_9(D), fd
	mov	rax, QWORD PTR 56[rsp]	# save_uargs, save_uargs
	mov	QWORD PTR [rax], rsi	# *save_uargs_10(D), uargs
	mov	rax, QWORD PTR 64[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], edx	# *save_flags_11(D), flags
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE236:
	.size	pre_sys_finit_module, .-pre_sys_finit_module
	.align 16
	.globl	sys_write
	.type	sys_write, @function
sys_write:
.LFB167:
	.cfi_startproc
# handlers.c:2028: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2029:     long save_rax = __read_reg("rax");
#APP
# 2029 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:2030:     vmcall_5(det_sys_write,current_task,save_fd, save_buf, save_count,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2030 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_buf
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_count
	mov	edi, 97	#,
	call	vmcall	#
# handlers.c:2031: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE167:
	.size	sys_write, .-sys_write
	.align 16
	.globl	pre_sys_write
	.type	pre_sys_write, @function
pre_sys_write:
.LFB234:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_9(D), fd
	mov	rax, QWORD PTR 56[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_10(D), buf
	mov	rax, QWORD PTR 64[rsp]	# save_count, save_count
	mov	DWORD PTR [rax], edx	# *save_count_11(D), count
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE234:
	.size	pre_sys_write, .-pre_sys_write
	.align 16
	.globl	pre_do_sys_open
	.type	pre_do_sys_open, @function
pre_do_sys_open:
.LFB169:
	.cfi_startproc
# handlers.c:2045: {
	push	rsi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	push	rcx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 2, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:2046:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2047:     *save_filename=filename;
	mov	rax, QWORD PTR 48[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rsi	# *save_filename_4(D), filename
# handlers.c:2048:     *save_flags=flags;
	mov	rax, QWORD PTR 56[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], edx	# *save_flags_7(D), flags
# handlers.c:2049:     *save_mode=mode;
	mov	rax, QWORD PTR 64[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rcx	# *save_mode_10(D), mode
# handlers.c:2050: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rcx	#
	.cfi_def_cfa_offset 16
	pop	rsi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE169:
	.size	pre_do_sys_open, .-pre_do_sys_open
	.align 16
	.globl	do_sys_open
	.type	do_sys_open, @function
do_sys_open:
.LFB170:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2056:     long save_rax = __read_reg("rax");
#APP
# 2056 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:2057:     vmcall_5(det_do_sys_open, current_task, save_filename, save_flags,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2057 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_filename
	movsx	r10, DWORD PTR 80[rsp]	# __p3, save_flags
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_mode
	mov	edi, 98	#,
	call	vmcall	#
# handlers.c:2058: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE170:
	.size	do_sys_open, .-do_sys_open
	.align 16
	.globl	pre_sys_accept
	.type	pre_sys_accept, @function
pre_sys_accept:
.LFB171:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:2064:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2065:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:2066:     *save_upeer_sockaddr=upeer_sockaddr;
	mov	rax, QWORD PTR 56[rsp]	# save_upeer_sockaddr, save_upeer_sockaddr
	mov	QWORD PTR [rax], rsi	# *save_upeer_sockaddr_7(D), upeer_sockaddr
# handlers.c:2067:     *save_upeer_addrlen=upeer_addrlen;
	mov	rax, QWORD PTR 64[rsp]	# save_upeer_addrlen, save_upeer_addrlen
	mov	QWORD PTR [rax], rdx	# *save_upeer_addrlen_10(D), upeer_addrlen
# handlers.c:2068: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE171:
	.size	pre_sys_accept, .-pre_sys_accept
	.align 16
	.globl	sys_accept
	.type	sys_accept, @function
sys_accept:
.LFB172:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2074:     long save_rax = __read_reg("rax");
#APP
# 2074 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:2075:     vmcall_5(det_sys_accept, current_task, save_fd,save_upeer_sockaddr,save_upeer_addrlen,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2075 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_upeer_sockaddr
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_upeer_addrlen
	mov	edi, 99	#,
	call	vmcall	#
# handlers.c:2076: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE172:
	.size	sys_accept, .-sys_accept
	.align 16
	.globl	pre_sys_accept4
	.type	pre_sys_accept4, @function
pre_sys_accept4:
.LFB173:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2082:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2083:     *save_fd=fd;
	mov	rax, QWORD PTR 56[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:2084:     *save_upeer_sockaddr=upeer_sockaddr;
	mov	rax, QWORD PTR 64[rsp]	# save_upeer_sockaddr, save_upeer_sockaddr
	mov	QWORD PTR [rax], rsi	# *save_upeer_sockaddr_7(D), upeer_sockaddr
# handlers.c:2085:     *save_upeer_addrlen=upeer_addrlen;
	mov	rax, QWORD PTR 72[rsp]	# save_upeer_addrlen, save_upeer_addrlen
	mov	QWORD PTR [rax], rdx	# *save_upeer_addrlen_10(D), upeer_addrlen
# handlers.c:2086:     *save_flags=flags;
	mov	rax, QWORD PTR 80[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], ecx	# *save_flags_13(D), flags
# handlers.c:2087: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE173:
	.size	pre_sys_accept4, .-pre_sys_accept4
	.align 16
	.globl	sys_accept4
	.type	sys_accept4, @function
sys_accept4:
.LFB174:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:2093:     long save_rax = __read_reg("rax");
#APP
# 2093 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:2094:     vmcall_6(det_sys_accept4, current_task, save_fd,save_upeer_sockaddr,save_upeer_addrlen,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2094 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 80[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_upeer_sockaddr
	mov	r11, QWORD PTR 96[rsp]	# __p4, save_upeer_addrlen
	movsx	r12, DWORD PTR 104[rsp]	# __p5, save_flags
	mov	edi, 100	#,
	call	vmcall	#
# handlers.c:2095: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE174:
	.size	sys_accept4, .-sys_accept4
	.align 16
	.globl	pre_sys_bind
	.type	pre_sys_bind, @function
pre_sys_bind:
.LFB175:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:2101:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2102:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:2103:     *save_umyaddr=umyaddr;
	mov	rax, QWORD PTR 56[rsp]	# save_umyaddr, save_umyaddr
	mov	QWORD PTR [rax], rsi	# *save_umyaddr_7(D), umyaddr
# handlers.c:2104:     *save_addrlen=addrlen;
	mov	rax, QWORD PTR 64[rsp]	# save_addrlen, save_addrlen
	mov	DWORD PTR [rax], edx	# *save_addrlen_10(D), addrlen
# handlers.c:2105: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE175:
	.size	pre_sys_bind, .-pre_sys_bind
	.align 16
	.globl	sys_bind
	.type	sys_bind, @function
sys_bind:
.LFB176:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2111:     long save_rax = __read_reg("rax");
#APP
# 2111 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:2112:     vmcall_5(det_sys_bind, current_task, save_fd,save_umyaddr,save_addrlen,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2112 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_umyaddr
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_addrlen
	mov	edi, 101	#,
	call	vmcall	#
# handlers.c:2113: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE176:
	.size	sys_bind, .-sys_bind
	.align 16
	.globl	pre_sys_connect
	.type	pre_sys_connect, @function
pre_sys_connect:
.LFB238:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_9(D), fd
	mov	rax, QWORD PTR 56[rsp]	# save_uservaddr, save_uservaddr
	mov	QWORD PTR [rax], rsi	# *save_uservaddr_10(D), uservaddr
	mov	rax, QWORD PTR 64[rsp]	# save_addrlen, save_addrlen
	mov	DWORD PTR [rax], edx	# *save_addrlen_11(D), addrlen
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE238:
	.size	pre_sys_connect, .-pre_sys_connect
	.align 16
	.globl	sys_connect
	.type	sys_connect, @function
sys_connect:
.LFB178:
	.cfi_startproc
# handlers.c:2128: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2129:     long save_rax = __read_reg("rax");
#APP
# 2129 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:2130:     vmcall_5(det_sys_connect, current_task, save_fd,save_uservaddr,save_addrlen,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2130 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_uservaddr
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_addrlen
	mov	edi, 102	#,
	call	vmcall	#
# handlers.c:2131: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE178:
	.size	sys_connect, .-sys_connect
	.align 16
	.globl	pre_sys_sendto
	.type	pre_sys_sendto, @function
pre_sys_sendto:
.LFB179:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rcx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 2, -48
	push	rdx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 1, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2139:     *skip_call=0;
	mov	rax, QWORD PTR 64[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2140:     *save_fd=fd;
	mov	rax, QWORD PTR 72[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:2141:     *save_buff=buff;
	mov	rax, QWORD PTR 80[rsp]	# save_buff, save_buff
	mov	QWORD PTR [rax], rsi	# *save_buff_7(D), buff
# handlers.c:2142:     *save_len=len;
	mov	rax, QWORD PTR 88[rsp]	# save_len, save_len
	mov	QWORD PTR [rax], rdx	# *save_len_10(D), len
# handlers.c:2143:     *save_flags=flags;
	mov	rax, QWORD PTR 96[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], ecx	# *save_flags_13(D), flags
# handlers.c:2144:     *save_addr=addr;
	mov	rax, QWORD PTR 104[rsp]	# save_addr, save_addr
	mov	QWORD PTR [rax], r8	# *save_addr_16(D), addr
# handlers.c:2145:     *save_addr_len=addr_len;
	mov	rax, QWORD PTR 112[rsp]	# save_addr_len, save_addr_len
	mov	DWORD PTR [rax], r9d	# *save_addr_len_19(D), addr_len
# handlers.c:2146: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdx	#
	.cfi_def_cfa_offset 48
	pop	rcx	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE179:
	.size	pre_sys_sendto, .-pre_sys_sendto
	.align 16
	.globl	sys_sendto
	.type	sys_sendto, @function
sys_sendto:
.LFB180:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	r11	#
	.cfi_def_cfa_offset 48
	.cfi_offset 11, -48
	push	r10	#
	.cfi_def_cfa_offset 56
	.cfi_offset 10, -56
	push	r9	#
	.cfi_def_cfa_offset 64
	.cfi_offset 9, -64
	push	r8	#
	.cfi_def_cfa_offset 72
	.cfi_offset 8, -72
	push	rdi	#
	.cfi_def_cfa_offset 80
	.cfi_offset 5, -80
	push	rax	#
	.cfi_def_cfa_offset 88
	.cfi_offset 0, -88
# handlers.c:2154:     long save_rax = __read_reg("rax");
#APP
# 2154 "handlers.c" 1
	mov r15, rax	# val
	
# 0 "" 2
# handlers.c:2155:     vmcall_8(det_sys_sendto, current_task, save_fd,save_buff,save_len,save_flags,save_addr,save_addr_len,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2155 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 96[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 104[rsp]	# __p3, save_buff
	mov	r11, QWORD PTR 112[rsp]	# __p4, save_len
	mov	r12d, DWORD PTR 120[rsp]	# __p5, save_flags
	mov	r13, QWORD PTR 128[rsp]	# __p6, save_addr
	movsx	r14, DWORD PTR 136[rsp]	# __p7, save_addr_len
	mov	edi, 103	#,
	call	vmcall	#
# handlers.c:2156: }
	pop	rax	#
	.cfi_def_cfa_offset 80
	pop	rdi	#
	.cfi_def_cfa_offset 72
	pop	r8	#
	.cfi_def_cfa_offset 64
	pop	r9	#
	.cfi_def_cfa_offset 56
	pop	r10	#
	.cfi_def_cfa_offset 48
	pop	r11	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE180:
	.size	sys_sendto, .-sys_sendto
	.align 16
	.globl	pre_sys_sendmsg
	.type	pre_sys_sendmsg, @function
pre_sys_sendmsg:
.LFB181:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:2163:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2164:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:2165:     *save_msg=msg;
	mov	rax, QWORD PTR 56[rsp]	# save_msg, save_msg
	mov	QWORD PTR [rax], rsi	# *save_msg_7(D), msg
# handlers.c:2166:     *save_flags=flags;
	mov	rax, QWORD PTR 64[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], edx	# *save_flags_10(D), flags
# handlers.c:2167: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE181:
	.size	pre_sys_sendmsg, .-pre_sys_sendmsg
	.align 16
	.globl	sys_sendmsg
	.type	sys_sendmsg, @function
sys_sendmsg:
.LFB182:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2174:     long save_rax = __read_reg("rax");
#APP
# 2174 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:2175:     vmcall_5(det_sys_sendmsg, current_task, save_fd,save_msg,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2175 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_msg
	mov	r11d, DWORD PTR 88[rsp]	# __p4, save_flags
	mov	edi, 104	#,
	call	vmcall	#
# handlers.c:2176: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE182:
	.size	sys_sendmsg, .-sys_sendmsg
	.align 16
	.globl	pre_sys_recvfrom
	.type	pre_sys_recvfrom, @function
pre_sys_recvfrom:
.LFB183:
	.cfi_startproc
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
# handlers.c:2190:     *save_addr_len=addr_len;
	movsx	r9, r9d	# addr_len, addr_len
# handlers.c:2183: {
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rsi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	push	rcx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 2, -48
	push	rdx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 1, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2184:     *skip_call=0;
	mov	rax, QWORD PTR 64[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_4(D),
# handlers.c:2185:     *save_fd=fd;
	mov	rax, QWORD PTR 72[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_6(D), fd
# handlers.c:2186:     *save_ubuf=ubuf;
	mov	rax, QWORD PTR 80[rsp]	# save_ubuf, save_ubuf
	mov	QWORD PTR [rax], rsi	# *save_ubuf_9(D), ubuf
# handlers.c:2187:     *save_size=size;
	mov	rax, QWORD PTR 88[rsp]	# save_size, save_size
	mov	QWORD PTR [rax], rdx	# *save_size_12(D), size
# handlers.c:2188:     *save_flags=flags;
	mov	rax, QWORD PTR 96[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], ecx	# *save_flags_15(D), flags
# handlers.c:2189:     *save_addr=addr;
	mov	rax, QWORD PTR 104[rsp]	# save_addr, save_addr
	mov	QWORD PTR [rax], r8	# *save_addr_18(D), addr
# handlers.c:2190:     *save_addr_len=addr_len;
	mov	rax, QWORD PTR 112[rsp]	# save_addr_len, save_addr_len
	mov	QWORD PTR [rax], r9	# *save_addr_len_22(D), addr_len
# handlers.c:2191: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdx	#
	.cfi_def_cfa_offset 48
	pop	rcx	#
	.cfi_def_cfa_offset 40
	pop	rsi	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE183:
	.size	pre_sys_recvfrom, .-pre_sys_recvfrom
	.align 16
	.globl	sys_recvfrom
	.type	sys_recvfrom, @function
sys_recvfrom:
.LFB184:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	r11	#
	.cfi_def_cfa_offset 48
	.cfi_offset 11, -48
	push	r10	#
	.cfi_def_cfa_offset 56
	.cfi_offset 10, -56
	push	r9	#
	.cfi_def_cfa_offset 64
	.cfi_offset 9, -64
	push	r8	#
	.cfi_def_cfa_offset 72
	.cfi_offset 8, -72
	push	rdi	#
	.cfi_def_cfa_offset 80
	.cfi_offset 5, -80
	push	rax	#
	.cfi_def_cfa_offset 88
	.cfi_offset 0, -88
# handlers.c:2199:     long save_rax = __read_reg("rax");
#APP
# 2199 "handlers.c" 1
	mov r15, rax	# val
	
# 0 "" 2
# handlers.c:2200:     vmcall_8(det_sys_recvfrom, current_task, save_fd,save_ubuf,save_size,save_flags,save_addr,save_addr_len,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2200 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 96[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 104[rsp]	# __p3, save_ubuf
	mov	r11, QWORD PTR 112[rsp]	# __p4, save_size
	mov	r12d, DWORD PTR 120[rsp]	# __p5, save_flags
	mov	r13, QWORD PTR 128[rsp]	# __p6, save_addr
	mov	r14, QWORD PTR 136[rsp]	# __p7, save_addr_len
	mov	edi, 105	#,
	call	vmcall	#
# handlers.c:2201: }
	pop	rax	#
	.cfi_def_cfa_offset 80
	pop	rdi	#
	.cfi_def_cfa_offset 72
	pop	r8	#
	.cfi_def_cfa_offset 64
	pop	r9	#
	.cfi_def_cfa_offset 56
	pop	r10	#
	.cfi_def_cfa_offset 48
	pop	r11	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE184:
	.size	sys_recvfrom, .-sys_recvfrom
	.align 16
	.globl	pre_sys_recvmsg
	.type	pre_sys_recvmsg, @function
pre_sys_recvmsg:
.LFB240:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_9(D), fd
	mov	rax, QWORD PTR 56[rsp]	# save_msg, save_msg
	mov	QWORD PTR [rax], rsi	# *save_msg_10(D), msg
	mov	rax, QWORD PTR 64[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], edx	# *save_flags_11(D), flags
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE240:
	.size	pre_sys_recvmsg, .-pre_sys_recvmsg
	.align 16
	.globl	sys_recvmsg
	.type	sys_recvmsg, @function
sys_recvmsg:
.LFB186:
	.cfi_startproc
# handlers.c:2218: {
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2219:     long save_rax = __read_reg("rax");
#APP
# 2219 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:2220:     vmcall_5(det_sys_recvmsg, current_task, save_fd,save_msg,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2220 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_msg
	mov	r11d, DWORD PTR 88[rsp]	# __p4, save_flags
	mov	edi, 106	#,
	call	vmcall	#
# handlers.c:2221: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE186:
	.size	sys_recvmsg, .-sys_recvmsg
	.align 16
	.globl	pre_sys_close
	.type	pre_sys_close, @function
pre_sys_close:
.LFB258:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 32[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_9(D), fd
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE258:
	.size	pre_sys_close, .-pre_sys_close
	.align 16
	.globl	sys_close
	.type	sys_close, @function
sys_close:
.LFB188:
	.cfi_startproc
# handlers.c:2235: {
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2236:     long save_rax = __read_reg("rax");
#APP
# 2236 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:2237:     vmcall_3(det_sys_close, current_task, save_fd,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2237 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 56[rsp]	# __p2, save_fd
	mov	edi, 109	#,
	call	vmcall	#
# handlers.c:2238: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE188:
	.size	sys_close, .-sys_close
	.align 16
	.globl	pre_sys_dup
	.type	pre_sys_dup, @function
pre_sys_dup:
.LFB260:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 32[rsp]	# save_fildes, save_fildes
	mov	DWORD PTR [rax], edi	# *save_fildes_9(D), fildes
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE260:
	.size	pre_sys_dup, .-pre_sys_dup
	.align 16
	.globl	sys_dup
	.type	sys_dup, @function
sys_dup:
.LFB190:
	.cfi_startproc
# handlers.c:2253: {
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2254:     long save_rax = __read_reg("rax");
#APP
# 2254 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:2255:     vmcall_3(det_sys_dup, current_task, save_fildes,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2255 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 56[rsp]	# __p2, save_fildes
	mov	edi, 107	#,
	call	vmcall	#
# handlers.c:2256: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE190:
	.size	sys_dup, .-sys_dup
	.align 16
	.globl	pre_sys_dup2
	.type	pre_sys_dup2, @function
pre_sys_dup2:
.LFB191:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rdx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 1, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
# handlers.c:2263:     *skip_call=0;
	mov	rdx, QWORD PTR 32[rsp]	# skip_call, skip_call
# handlers.c:2262: {
	mov	rax, QWORD PTR 48[rsp]	# save_newfd, save_newfd
# handlers.c:2263:     *skip_call=0;
	mov	QWORD PTR [rdx], 0	# *skip_call_4(D),
# handlers.c:2264:     *save_oldfd=oldfd;
	mov	rdx, QWORD PTR 40[rsp]	# save_oldfd, save_oldfd
	mov	DWORD PTR [rdx], edi	# *save_oldfd_6(D), oldfd
# handlers.c:2265:     *save_newfd=save_newfd;
	mov	DWORD PTR [rax], eax	# *save_newfd_9(D), save_newfd
# handlers.c:2266: }
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rdx	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE191:
	.size	pre_sys_dup2, .-pre_sys_dup2
	.align 16
	.globl	sys_dup2
	.type	sys_dup2, @function
sys_dup2:
.LFB192:
	.cfi_startproc
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:2273:     long save_rax = __read_reg("rax");
#APP
# 2273 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:2274:     vmcall_4(det_sys_dup2, current_task, save_oldfd,save_newfd,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2274 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_oldfd
	mov	r10d, DWORD PTR 72[rsp]	# __p3, save_newfd
	mov	edi, 108	#,
	call	vmcall	#
# handlers.c:2275: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE192:
	.size	sys_dup2, .-sys_dup2
	.align 16
	.globl	pre_sys_wait4
	.type	pre_sys_wait4, @function
pre_sys_wait4:
.LFB193:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2283:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2284:     *save_pid=pid;
	mov	rax, QWORD PTR 56[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], edi	# *save_pid_4(D), pid
# handlers.c:2285:     *save_stat_addr=stat_addr;
	mov	rax, QWORD PTR 64[rsp]	# save_stat_addr, save_stat_addr
	mov	QWORD PTR [rax], rsi	# *save_stat_addr_7(D), stat_addr
# handlers.c:2286:     *save_options=options;
	mov	rax, QWORD PTR 72[rsp]	# save_options, save_options
	mov	DWORD PTR [rax], edx	# *save_options_10(D), options
# handlers.c:2287:     *save_ru=ru;
	mov	rax, QWORD PTR 80[rsp]	# save_ru, save_ru
	mov	QWORD PTR [rax], rcx	# *save_ru_13(D), ru
# handlers.c:2288: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE193:
	.size	pre_sys_wait4, .-pre_sys_wait4
	.align 16
	.globl	sys_wait4
	.type	sys_wait4, @function
sys_wait4:
.LFB194:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:2295:     long save_rax = __read_reg("rax");
#APP
# 2295 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:2296:     vmcall_6(det_sys_wait4, current_task, save_pid,save_stat_addr,save_options,save_ru,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2296 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 80[rsp]	# __p2, save_pid
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_stat_addr
	movsx	r11, DWORD PTR 96[rsp]	# __p4, save_options
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_ru
	mov	edi, 111	#,
	call	vmcall	#
# handlers.c:2297: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE194:
	.size	sys_wait4, .-sys_wait4
	.align 16
	.globl	pre_sys_waitid
	.type	pre_sys_waitid, @function
pre_sys_waitid:
.LFB195:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rsi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:2304:     *skip_call=0;
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2305:     *save_which=which;
	mov	rax, QWORD PTR 64[rsp]	# save_which, save_which
	mov	DWORD PTR [rax], edi	# *save_which_4(D), which
# handlers.c:2306:     *save_pid=pid;
	mov	rax, QWORD PTR 72[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], esi	# *save_pid_7(D), pid
# handlers.c:2307:     *save_infop=infop;
	mov	rax, QWORD PTR 80[rsp]	# save_infop, save_infop
	mov	QWORD PTR [rax], rdx	# *save_infop_10(D), infop
# handlers.c:2308:     *save_options=options;
	mov	rax, QWORD PTR 88[rsp]	# save_options, save_options
	mov	DWORD PTR [rax], ecx	# *save_options_13(D), options
# handlers.c:2309:     *save_ru=ru;
	mov	rax, QWORD PTR 96[rsp]	# save_ru, save_ru
	mov	QWORD PTR [rax], r8	# *save_ru_16(D), ru
# handlers.c:2310: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rsi	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE195:
	.size	pre_sys_waitid, .-pre_sys_waitid
	.align 16
	.globl	sys_waitid
	.type	sys_waitid, @function
sys_waitid:
.LFB196:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	r11	#
	.cfi_def_cfa_offset 40
	.cfi_offset 11, -40
	push	r10	#
	.cfi_def_cfa_offset 48
	.cfi_offset 10, -48
	push	r9	#
	.cfi_def_cfa_offset 56
	.cfi_offset 9, -56
	push	r8	#
	.cfi_def_cfa_offset 64
	.cfi_offset 8, -64
	push	rdi	#
	.cfi_def_cfa_offset 72
	.cfi_offset 5, -72
	push	rax	#
	.cfi_def_cfa_offset 80
	.cfi_offset 0, -80
# handlers.c:2317:     long save_rax = __read_reg("rax");
#APP
# 2317 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:2318:     vmcall_7(det_sys_waitid, current_task, save_which,save_pid,save_infop,save_options,save_ru,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2318 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 88[rsp]	# __p2, save_which
	mov	r10d, DWORD PTR 96[rsp]	# __p3, save_pid
	mov	r11, QWORD PTR 104[rsp]	# __p4, save_infop
	movsx	r12, DWORD PTR 112[rsp]	# __p5, save_options
	mov	r13, QWORD PTR 120[rsp]	# __p6, save_ru
	mov	edi, 110	#,
	call	vmcall	#
# handlers.c:2319: }
	pop	rax	#
	.cfi_def_cfa_offset 72
	pop	rdi	#
	.cfi_def_cfa_offset 64
	pop	r8	#
	.cfi_def_cfa_offset 56
	pop	r9	#
	.cfi_def_cfa_offset 48
	pop	r10	#
	.cfi_def_cfa_offset 40
	pop	r11	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE196:
	.size	sys_waitid, .-sys_waitid
	.align 16
	.globl	pre_sys_sched_rr_get_interval
	.type	pre_sys_sched_rr_get_interval, @function
pre_sys_sched_rr_get_interval:
.LFB280:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], edi	# *save_pid_9(D), pid
	mov	rax, QWORD PTR 48[rsp]	# save_interval, save_interval
	mov	QWORD PTR [rax], rsi	# *save_interval_10(D), interval
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE280:
	.size	pre_sys_sched_rr_get_interval, .-pre_sys_sched_rr_get_interval
	.align 16
	.globl	sys_sched_rr_get_interval
	.type	sys_sched_rr_get_interval, @function
sys_sched_rr_get_interval:
.LFB198:
	.cfi_startproc
# handlers.c:2336: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:2337:     long save_rax = __read_reg("rax");
#APP
# 2337 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:2338:     vmcall_4(det_sys_sched_rr_get_interval, current_task, save_pid,save_interval,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2338 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_pid
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_interval
	mov	edi, 112	#,
	call	vmcall	#
# handlers.c:2339: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE198:
	.size	sys_sched_rr_get_interval, .-sys_sched_rr_get_interval
	.align 16
	.globl	pre_sys_execve
	.type	pre_sys_execve, @function
pre_sys_execve:
.LFB199:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:2347:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2348:     *save_filename=filename;
	mov	rax, QWORD PTR 48[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_4(D), filename
# handlers.c:2349:     *save_argv=argv;
	mov	rax, QWORD PTR 56[rsp]	# save_argv, save_argv
	mov	QWORD PTR [rax], rsi	# *save_argv_7(D), argv
# handlers.c:2350:     *save_envp=envp;
	mov	rax, QWORD PTR 64[rsp]	# save_envp, save_envp
	mov	QWORD PTR [rax], rdx	# *save_envp_10(D), envp
# handlers.c:2351: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE199:
	.size	pre_sys_execve, .-pre_sys_execve
	.align 16
	.globl	sys_execve
	.type	sys_execve, @function
sys_execve:
.LFB200:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	r11	#
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	push	r10	#
	.cfi_def_cfa_offset 32
	.cfi_offset 10, -32
	push	r9	#
	.cfi_def_cfa_offset 40
	.cfi_offset 9, -40
	push	r8	#
	.cfi_def_cfa_offset 48
	.cfi_offset 8, -48
	push	rdi	#
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	push	rax	#
	.cfi_def_cfa_offset 64
	.cfi_offset 0, -64
# handlers.c:2358:     long save_rax = __read_reg("rax");
#APP
# 2358 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:2360:     vmcall_5(det_sys_execve, current_task,save_filename,save_argv,save_envp,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2360 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_filename
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_argv
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_envp
	mov	edi, 113	#,
	call	vmcall	#
# handlers.c:2361: }
	pop	rax	#
	.cfi_def_cfa_offset 56
	pop	rdi	#
	.cfi_def_cfa_offset 48
	pop	r8	#
	.cfi_def_cfa_offset 40
	pop	r9	#
	.cfi_def_cfa_offset 32
	pop	r10	#
	.cfi_def_cfa_offset 24
	pop	r11	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE200:
	.size	sys_execve, .-sys_execve
	.align 16
	.globl	pre_sys_execveat
	.type	pre_sys_execveat, @function
pre_sys_execveat:
.LFB201:
	.cfi_startproc
	push	r8	#
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	push	rdi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	push	rsi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:2368:     *skip_call=0;
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_6(D),
# handlers.c:2369:     *save_dfd=dfd;
	mov	rax, QWORD PTR 64[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_8(D), dfd
# handlers.c:2370:     *save_filename=filename;
	mov	rax, QWORD PTR 72[rsp]	# save_filename, save_filename
	mov	BYTE PTR [rax], sil	# *save_filename_12(D), filename
# handlers.c:2371:     *save_argv=argv;
	mov	rax, QWORD PTR 80[rsp]	# save_argv, save_argv
	mov	QWORD PTR [rax], rdx	# *save_argv_15(D), argv
# handlers.c:2372:     *save_envp=envp;
	mov	rax, QWORD PTR 88[rsp]	# save_envp, save_envp
	mov	QWORD PTR [rax], rcx	# *save_envp_18(D), envp
# handlers.c:2373:     *save_flags=flags;
	mov	rax, QWORD PTR 96[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], r8d	# *save_flags_20(D), flags
# handlers.c:2374: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdx	#
	.cfi_def_cfa_offset 40
	pop	rcx	#
	.cfi_def_cfa_offset 32
	pop	rsi	#
	.cfi_def_cfa_offset 24
	pop	rdi	#
	.cfi_def_cfa_offset 16
	pop	r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE201:
	.size	pre_sys_execveat, .-pre_sys_execveat
	.align 16
	.globl	sys_execveat
	.type	sys_execveat, @function
sys_execveat:
.LFB202:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	r11	#
	.cfi_def_cfa_offset 40
	.cfi_offset 11, -40
	push	r10	#
	.cfi_def_cfa_offset 48
	.cfi_offset 10, -48
	push	r9	#
	.cfi_def_cfa_offset 56
	.cfi_offset 9, -56
	push	r8	#
	.cfi_def_cfa_offset 64
	.cfi_offset 8, -64
	push	rdi	#
	.cfi_def_cfa_offset 72
	.cfi_offset 5, -72
	push	rax	#
	.cfi_def_cfa_offset 80
	.cfi_offset 0, -80
# handlers.c:2381:     long save_rax = __read_reg("rax");
#APP
# 2381 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:2382:     vmcall_7(det_sys_execveat, current_task,save_dfd,save_filename,save_argv,save_envp,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2382 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 88[rsp]	# __p2, save_dfd
	mov	r10, QWORD PTR 96[rsp]	# __p3, save_filename
	mov	r11, QWORD PTR 104[rsp]	# __p4, save_argv
	mov	r12, QWORD PTR 112[rsp]	# __p5, save_envp
	movsx	r13, DWORD PTR 120[rsp]	# __p6, save_flags
	mov	edi, 114	#,
	call	vmcall	#
# handlers.c:2383: }
	pop	rax	#
	.cfi_def_cfa_offset 72
	pop	rdi	#
	.cfi_def_cfa_offset 64
	pop	r8	#
	.cfi_def_cfa_offset 56
	pop	r9	#
	.cfi_def_cfa_offset 48
	pop	r10	#
	.cfi_def_cfa_offset 40
	pop	r11	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE202:
	.size	sys_execveat, .-sys_execveat
	.align 16
	.globl	pre_sys_setuid16
	.type	pre_sys_setuid16, @function
pre_sys_setuid16:
.LFB203:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:2389:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_3(D),
# handlers.c:2390:     *save_uid=uid;
	mov	rax, QWORD PTR 32[rsp]	# save_uid, save_uid
	mov	DWORD PTR [rax], edi	# *save_uid_6(D), uid
# handlers.c:2391: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE203:
	.size	pre_sys_setuid16, .-pre_sys_setuid16
	.align 16
	.globl	sys_setuid16
	.type	sys_setuid16, @function
sys_setuid16:
.LFB204:
	.cfi_startproc
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2398:     long save_rax = __read_reg("rax");
#APP
# 2398 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:2399:     vmcall_3(det_sys_setuid16, current_task,save_uid,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2399 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 56[rsp]	# __p2, save_uid
	mov	edi, 115	#,
	call	vmcall	#
# handlers.c:2400: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE204:
	.size	sys_setuid16, .-sys_setuid16
	.align 16
	.globl	pre_sys_sched_yield
	.type	pre_sys_sched_yield, @function
pre_sys_sched_yield:
.LFB248:
	.cfi_startproc
	push	rax	#
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	pop	rax	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE248:
	.size	pre_sys_sched_yield, .-pre_sys_sched_yield
	.align 16
	.globl	sys_sched_yield
	.type	sys_sched_yield, @function
sys_sched_yield:
.LFB206:
	.cfi_startproc
# handlers.c:2411: {
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:2412:     long save_rax = __read_reg("rax");
#APP
# 2412 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:2413:     vmcall_2(det_sys_sched_yield, current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2413 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 116	#,
	call	vmcall	#
# handlers.c:2414: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE206:
	.size	sys_sched_yield, .-sys_sched_yield
	.align 16
	.globl	pre_sys_sendmmsg
	.type	pre_sys_sendmmsg, @function
pre_sys_sendmmsg:
.LFB207:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2421:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2422:     *save_fd=fd;
	mov	rax, QWORD PTR 56[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:2423:     *save_msg=msg;
	mov	rax, QWORD PTR 64[rsp]	# save_msg, save_msg
	mov	QWORD PTR [rax], rsi	# *save_msg_7(D), msg
# handlers.c:2424:     *save_vlen=vlen;
	mov	rax, QWORD PTR 72[rsp]	# save_vlen, save_vlen
	mov	DWORD PTR [rax], edx	# *save_vlen_10(D), vlen
# handlers.c:2425:     *save_flags=flags;
	mov	rax, QWORD PTR 80[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], ecx	# *save_flags_13(D), flags
# handlers.c:2426: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE207:
	.size	pre_sys_sendmmsg, .-pre_sys_sendmmsg
	.align 16
	.globl	sys_sendmmsg
	.type	sys_sendmmsg, @function
sys_sendmmsg:
.LFB208:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:2434:     long save_rax = __read_reg("rax");
#APP
# 2434 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:2435:     vmcall_6(det_sys_sendmmsg, current_task,save_fd,save_msg,save_vlen,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2435 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 80[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_msg
	mov	r11d, DWORD PTR 96[rsp]	# __p4, save_vlen
	mov	r12d, DWORD PTR 104[rsp]	# __p5, save_flags
	mov	edi, 117	#,
	call	vmcall	#
# handlers.c:2436: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE208:
	.size	sys_sendmmsg, .-sys_sendmmsg
	.align 16
	.globl	pre_sys_getpid
	.type	pre_sys_getpid, @function
pre_sys_getpid:
.LFB250:
	.cfi_startproc
	push	rax	#
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	pop	rax	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE250:
	.size	pre_sys_getpid, .-pre_sys_getpid
	.align 16
	.globl	sys_getpid
	.type	sys_getpid, @function
sys_getpid:
.LFB210:
	.cfi_startproc
# handlers.c:2448: {
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:2449:     long save_rax = __read_reg("rax");
#APP
# 2449 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:2450:     vmcall_2(det_sys_getpid, current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2450 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 118	#,
	call	vmcall	#
# handlers.c:2451: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE210:
	.size	sys_getpid, .-sys_getpid
	.align 16
	.globl	pre_sys_gettid
	.type	pre_sys_gettid, @function
pre_sys_gettid:
.LFB252:
	.cfi_startproc
	push	rax	#
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	pop	rax	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE252:
	.size	pre_sys_gettid, .-pre_sys_gettid
	.align 16
	.globl	sys_gettid
	.type	sys_gettid, @function
sys_gettid:
.LFB212:
	.cfi_startproc
# handlers.c:2463: {
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:2464:     long save_rax = __read_reg("rax");
#APP
# 2464 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:2465:     vmcall_2(det_sys_gettid, current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2465 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 119	#,
	call	vmcall	#
# handlers.c:2466: }
	pop	rax	#
	.cfi_def_cfa_offset 32
	pop	rdi	#
	.cfi_def_cfa_offset 24
	pop	r8	#
	.cfi_def_cfa_offset 16
	pop	r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE212:
	.size	sys_gettid, .-sys_gettid
	.align 16
	.globl	pre_sys_oldumount
	.type	pre_sys_oldumount, @function
pre_sys_oldumount:
.LFB230:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 32[rsp]	# save_name, save_name
	mov	QWORD PTR [rax], rdi	# *save_name_9(D), name
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE230:
	.size	pre_sys_oldumount, .-pre_sys_oldumount
	.align 16
	.globl	sys_oldumount
	.type	sys_oldumount, @function
sys_oldumount:
.LFB214:
	.cfi_startproc
# handlers.c:2479: {
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2480:     long save_rax = __read_reg("rax");
#APP
# 2480 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:2481:     vmcall_3(det_sys_oldumount, current_task,save_name,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2481 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_name
	mov	edi, 120	#,
	call	vmcall	#
# handlers.c:2482: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE214:
	.size	sys_oldumount, .-sys_oldumount
	.align 16
	.globl	pre_sys_setgid16
	.type	pre_sys_setgid16, @function
pre_sys_setgid16:
.LFB296:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 32[rsp]	# save_gid, save_gid
	mov	DWORD PTR [rax], edi	# *save_gid_9(D), gid
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE296:
	.size	pre_sys_setgid16, .-pre_sys_setgid16
	.align 16
	.globl	sys_setgid16
	.type	sys_setgid16, @function
sys_setgid16:
.LFB216:
	.cfi_startproc
# handlers.c:2495: {
	push	r10	#
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	push	r9	#
	.cfi_def_cfa_offset 24
	.cfi_offset 9, -24
	push	r8	#
	.cfi_def_cfa_offset 32
	.cfi_offset 8, -32
	push	rdi	#
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2496:     long save_rax = __read_reg("rax");
#APP
# 2496 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:2497:     vmcall_3(det_sys_setgid16, current_task,save_gid,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2497 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 56[rsp]	# __p2, save_gid
	mov	edi, 121	#,
	call	vmcall	#
# handlers.c:2498: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdi	#
	.cfi_def_cfa_offset 32
	pop	r8	#
	.cfi_def_cfa_offset 24
	pop	r9	#
	.cfi_def_cfa_offset 16
	pop	r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE216:
	.size	sys_setgid16, .-sys_setgid16
	.align 16
	.globl	pre_sys_getcwd
	.type	pre_sys_getcwd, @function
pre_sys_getcwd:
.LFB290:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rax	#
	.cfi_def_cfa_offset 32
	.cfi_offset 0, -32
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
	mov	rax, QWORD PTR 40[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rdi	# *save_buf_9(D), buf
	mov	rax, QWORD PTR 48[rsp]	# save_size, save_size
	mov	QWORD PTR [rax], rsi	# *save_size_10(D), size
	pop	rax	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE290:
	.size	pre_sys_getcwd, .-pre_sys_getcwd
	.align 16
	.globl	sys_getcwd
	.type	sys_getcwd, @function
sys_getcwd:
.LFB218:
	.cfi_startproc
# handlers.c:2512: {
	push	r11	#
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	push	r10	#
	.cfi_def_cfa_offset 24
	.cfi_offset 10, -24
	push	r9	#
	.cfi_def_cfa_offset 32
	.cfi_offset 9, -32
	push	r8	#
	.cfi_def_cfa_offset 40
	.cfi_offset 8, -40
	push	rdi	#
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	push	rax	#
	.cfi_def_cfa_offset 56
	.cfi_offset 0, -56
# handlers.c:2513:     long save_rax = __read_reg("rax");
#APP
# 2513 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:2514:     vmcall_4(det_sys_getcwd, current_task,save_buf,save_size,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2514 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_buf
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_size
	mov	edi, 122	#,
	call	vmcall	#
# handlers.c:2515: }
	pop	rax	#
	.cfi_def_cfa_offset 48
	pop	rdi	#
	.cfi_def_cfa_offset 40
	pop	r8	#
	.cfi_def_cfa_offset 32
	pop	r9	#
	.cfi_def_cfa_offset 24
	pop	r10	#
	.cfi_def_cfa_offset 16
	pop	r11	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE218:
	.size	sys_getcwd, .-sys_getcwd
	.align 16
	.globl	pre_hrtimer_nanosleep
	.type	pre_hrtimer_nanosleep, @function
pre_hrtimer_nanosleep:
.LFB219:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2521:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2522:     *save_req=req;
	mov	rax, QWORD PTR 56[rsp]	# save_req, save_req
	mov	QWORD PTR [rax], rdi	# *save_req_4(D), req
# handlers.c:2523:     *save_rem=rem;
	mov	rax, QWORD PTR 64[rsp]	# save_rem, save_rem
	mov	QWORD PTR [rax], rsi	# *save_rem_7(D), rem
# handlers.c:2524:     *save_mode=mode;
	mov	rax, QWORD PTR 72[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rdx	# *save_mode_10(D), mode
# handlers.c:2525:     *save_clockid=clockid;
	mov	rax, QWORD PTR 80[rsp]	# save_clockid, save_clockid
	mov	QWORD PTR [rax], rcx	# *save_clockid_13(D), clockid
# handlers.c:2526: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE219:
	.size	pre_hrtimer_nanosleep, .-pre_hrtimer_nanosleep
	.align 16
	.globl	hrtimer_nanosleep
	.type	hrtimer_nanosleep, @function
hrtimer_nanosleep:
.LFB220:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:2532:     long save_rax = __read_reg("rax");
#APP
# 2532 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:2533:     vmcall_6(det_hrtimer_nanosleep, current_task,save_req,save_rem,save_mode,save_clockid,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2533 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 80[rsp]	# __p2, save_req
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_rem
	mov	r11, QWORD PTR 96[rsp]	# __p4, save_mode
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_clockid
	mov	edi, 123	#,
	call	vmcall	#
# handlers.c:2534: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE220:
	.size	hrtimer_nanosleep, .-hrtimer_nanosleep
	.align 16
	.globl	pre_sys_clock_nanosleep
	.type	pre_sys_clock_nanosleep, @function
pre_sys_clock_nanosleep:
.LFB221:
	.cfi_startproc
	push	rdi	#
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rcx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 2, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:2541:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:2542:     *save_which_clock=which_clock;
	mov	rax, QWORD PTR 56[rsp]	# save_which_clock, save_which_clock
	mov	QWORD PTR [rax], rdi	# *save_which_clock_4(D), which_clock
# handlers.c:2543:     *save_flags=flags;
	mov	rax, QWORD PTR 64[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], esi	# *save_flags_7(D), flags
# handlers.c:2544:     *save_req=req;
	mov	rax, QWORD PTR 72[rsp]	# save_req, save_req
	mov	QWORD PTR [rax], rdx	# *save_req_10(D), req
# handlers.c:2545:     *save_rem=rem;
	mov	rax, QWORD PTR 80[rsp]	# save_rem, save_rem
	mov	QWORD PTR [rax], rcx	# *save_rem_13(D), rem
# handlers.c:2546: }
	pop	rax	#
	.cfi_def_cfa_offset 40
	pop	rdx	#
	.cfi_def_cfa_offset 32
	pop	rcx	#
	.cfi_def_cfa_offset 24
	pop	rsi	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE221:
	.size	pre_sys_clock_nanosleep, .-pre_sys_clock_nanosleep
	.align 16
	.globl	sys_clock_nanosleep
	.type	sys_clock_nanosleep, @function
sys_clock_nanosleep:
.LFB222:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	r11	#
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -32
	push	r10	#
	.cfi_def_cfa_offset 40
	.cfi_offset 10, -40
	push	r9	#
	.cfi_def_cfa_offset 48
	.cfi_offset 9, -48
	push	r8	#
	.cfi_def_cfa_offset 56
	.cfi_offset 8, -56
	push	rdi	#
	.cfi_def_cfa_offset 64
	.cfi_offset 5, -64
	push	rax	#
	.cfi_def_cfa_offset 72
	.cfi_offset 0, -72
# handlers.c:2552:     long save_rax = __read_reg("rax");
#APP
# 2552 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:2553:     vmcall_6(det_sys_clock_nanosleep, current_task,save_which_clock,save_flags,save_req,save_rem,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+12096]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 2553 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 80[rsp]	# __p2, save_which_clock
	movsx	r10, DWORD PTR 88[rsp]	# __p3, save_flags
	mov	r11, QWORD PTR 96[rsp]	# __p4, save_req
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_rem
	mov	edi, 124	#,
	call	vmcall	#
# handlers.c:2554: }
	pop	rax	#
	.cfi_def_cfa_offset 64
	pop	rdi	#
	.cfi_def_cfa_offset 56
	pop	r8	#
	.cfi_def_cfa_offset 48
	pop	r9	#
	.cfi_def_cfa_offset 40
	pop	r10	#
	.cfi_def_cfa_offset 32
	pop	r11	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE222:
	.size	sys_clock_nanosleep, .-sys_clock_nanosleep
	.globl	__asm_defines
	.type	__asm_defines, @function
__asm_defines:
.LFB223:
	.cfi_startproc
# handlers.c:2559:     def_detour_asm_vars(commit_creds);
#APP
# 2559 "handlers.c" 1
	#define commit_creds_jmp 96	#
# 0 "" 2
# handlers.c:2560:     def_detour_asm_vars(arch_jump_label_transform);
# 2560 "handlers.c" 1
	#define arch_jump_label_transform_jmp 192	#
# 0 "" 2
# handlers.c:2561:     def_detour_asm_vars(module_param_sysfs_setup);
# 2561 "handlers.c" 1
	#define module_param_sysfs_setup_jmp 288	#
# 0 "" 2
# handlers.c:2562:     def_detour_asm_vars(module_param_sysfs_remove);
# 2562 "handlers.c" 1
	#define module_param_sysfs_remove_jmp 384	#
# 0 "" 2
# handlers.c:2563:     def_detour_asm_vars(wake_up_new_task);
# 2563 "handlers.c" 1
	#define wake_up_new_task_jmp 480	#
# 0 "" 2
# handlers.c:2564:     def_detour_asm_vars(flush_old_exec);
# 2564 "handlers.c" 1
	#define flush_old_exec_jmp 576	#
# 0 "" 2
# handlers.c:2565:     def_detour_asm_vars(begin_new_exec);
# 2565 "handlers.c" 1
	#define begin_new_exec_jmp 672	#
# 0 "" 2
# handlers.c:2566:     def_detour_asm_vars(do_exit);
# 2566 "handlers.c" 1
	#define do_exit_jmp 768	#
# 0 "" 2
# handlers.c:2567:     def_detour_asm_vars(arch_ptrace);
# 2567 "handlers.c" 1
	#define arch_ptrace_jmp 864	#
# 0 "" 2
# handlers.c:2568:     def_detour_asm_vars(compat_arch_ptrace);
# 2568 "handlers.c" 1
	#define compat_arch_ptrace_jmp 960	#
# 0 "" 2
# handlers.c:2569:     def_detour_asm_vars(process_vm_rw_core);
# 2569 "handlers.c" 1
	#define process_vm_rw_core_jmp 1056	#
# 0 "" 2
# handlers.c:2570:     def_detour_asm_vars(__vma_link_rb);
# 2570 "handlers.c" 1
	#define __vma_link_rb_jmp 1152	#
# 0 "" 2
# handlers.c:2571:     def_detour_asm_vars(change_protection);
# 2571 "handlers.c" 1
	#define change_protection_jmp 1248	#
# 0 "" 2
# handlers.c:2572:     def_detour_asm_vars(vma_adjust);
# 2572 "handlers.c" 1
	#define vma_adjust_jmp 1344	#
# 0 "" 2
# handlers.c:2573:     def_detour_asm_vars(__vma_adjust);
# 2573 "handlers.c" 1
	#define __vma_adjust_jmp 1440	#
# 0 "" 2
# handlers.c:2574:     def_detour_asm_vars(vma_rb_erase);
# 2574 "handlers.c" 1
	#define vma_rb_erase_jmp 1536	#
# 0 "" 2
# handlers.c:2575:     def_detour_asm_vars(__vma_rb_erase);
# 2575 "handlers.c" 1
	#define __vma_rb_erase_jmp 1632	#
# 0 "" 2
# handlers.c:2576:     def_detour_asm_vars(expand_downwards);
# 2576 "handlers.c" 1
	#define expand_downwards_jmp 1728	#
# 0 "" 2
# handlers.c:2577:     def_detour_asm_vars(complete_signal);
# 2577 "handlers.c" 1
	#define complete_signal_jmp 1824	#
# 0 "" 2
# handlers.c:2578:     def_detour_asm_vars(text_poke);
# 2578 "handlers.c" 1
	#define text_poke_jmp 1920	#
# 0 "" 2
# handlers.c:2579:     def_detour_asm_vars(__text_poke);
# 2579 "handlers.c" 1
	#define __text_poke_jmp 2016	#
# 0 "" 2
# handlers.c:2580:     def_detour_asm_vars(ftrace_write);
# 2580 "handlers.c" 1
	#define ftrace_write_jmp 2112	#
# 0 "" 2
# handlers.c:2581:     def_detour_asm_vars(panic);
# 2581 "handlers.c" 1
	#define panic_jmp 2208	#
# 0 "" 2
# handlers.c:2582:     def_detour_asm_vars(crash_kexec);
# 2582 "handlers.c" 1
	#define crash_kexec_jmp 2304	#
# 0 "" 2
# handlers.c:2583:     def_detour_asm_vars(__access_remote_vm);
# 2583 "handlers.c" 1
	#define __access_remote_vm_jmp 2400	#
# 0 "" 2
# handlers.c:2585:     def_detour_hijack_asm_vars(mprotect_fixup, vma_wants_writenotify);
# 2585 "handlers.c" 1
	#define mprotect_fixup_vma_wants_writenotify_jmp 2496	#
# 0 "" 2
# handlers.c:2586:     def_detour_hijack_asm_vars(do_munmap, rb_erase);
# 2586 "handlers.c" 1
	#define do_munmap_rb_erase_jmp 2592	#
# 0 "" 2
# handlers.c:2587:     def_detour_hijack_asm_vars(vma_adjust, rb_erase);
# 2587 "handlers.c" 1
	#define vma_adjust_rb_erase_jmp 2688	#
# 0 "" 2
# handlers.c:2589:     def_detour_asm_vars(do_rmdir);
# 2589 "handlers.c" 1
	#define do_rmdir_jmp 2784	#
# 0 "" 2
# handlers.c:2590:     def_detour_asm_vars(sys_sysfs);
# 2590 "handlers.c" 1
	#define sys_sysfs_jmp 2880	#
# 0 "" 2
# handlers.c:2591:     def_detour_asm_vars(sys_read);
# 2591 "handlers.c" 1
	#define sys_read_jmp 2976	#
# 0 "" 2
# handlers.c:2592:     def_detour_asm_vars(sys_getppid);
# 2592 "handlers.c" 1
	#define sys_getppid_jmp 3072	#
# 0 "" 2
# handlers.c:2593:     def_detour_asm_vars(sys_getsid);
# 2593 "handlers.c" 1
	#define sys_getsid_jmp 3168	#
# 0 "" 2
# handlers.c:2594:     def_detour_asm_vars(sys_getuid);
# 2594 "handlers.c" 1
	#define sys_getuid_jmp 3264	#
# 0 "" 2
# handlers.c:2595:     def_detour_asm_vars(sys_geteuid);
# 2595 "handlers.c" 1
	#define sys_geteuid_jmp 3360	#
# 0 "" 2
# handlers.c:2596:     def_detour_asm_vars(sys_shutdown);
# 2596 "handlers.c" 1
	#define sys_shutdown_jmp 3456	#
# 0 "" 2
# handlers.c:2597:     def_detour_asm_vars(do_sysinfo);
# 2597 "handlers.c" 1
	#define do_sysinfo_jmp 3552	#
# 0 "" 2
# handlers.c:2598:     def_detour_asm_vars(sys_capget);
# 2598 "handlers.c" 1
	#define sys_capget_jmp 3648	#
# 0 "" 2
# handlers.c:2599:     def_detour_asm_vars(sys_capset);
# 2599 "handlers.c" 1
	#define sys_capset_jmp 3744	#
# 0 "" 2
# handlers.c:2600:     def_detour_asm_vars(sys_statfs);
# 2600 "handlers.c" 1
	#define sys_statfs_jmp 3840	#
# 0 "" 2
# handlers.c:2601:     def_detour_asm_vars(sys_fstatfs);
# 2601 "handlers.c" 1
	#define sys_fstatfs_jmp 3936	#
# 0 "" 2
# handlers.c:2602:     def_detour_asm_vars(sys_setsid);
# 2602 "handlers.c" 1
	#define sys_setsid_jmp 4032	#
# 0 "" 2
# handlers.c:2603:     def_detour_asm_vars(sys_seccomp);
# 2603 "handlers.c" 1
	#define sys_seccomp_jmp 4128	#
# 0 "" 2
# handlers.c:2604:     def_detour_asm_vars(sys_tgkill);
# 2604 "handlers.c" 1
	#define sys_tgkill_jmp 4224	#
# 0 "" 2
# handlers.c:2605:     def_detour_asm_vars(sys_tkill);
# 2605 "handlers.c" 1
	#define sys_tkill_jmp 4320	#
# 0 "" 2
# handlers.c:2606:     def_detour_asm_vars(sys_ustat);
# 2606 "handlers.c" 1
	#define sys_ustat_jmp 4416	#
# 0 "" 2
# handlers.c:2607:     def_detour_asm_vars(sys_poll);
# 2607 "handlers.c" 1
	#define sys_poll_jmp 4512	#
# 0 "" 2
# handlers.c:2608:     def_detour_asm_vars(sys_sigprocmask);
# 2608 "handlers.c" 1
	#define sys_sigprocmask_jmp 4608	#
# 0 "" 2
# handlers.c:2609:     def_detour_asm_vars(sys_getrlimit);
# 2609 "handlers.c" 1
	#define sys_getrlimit_jmp 4704	#
# 0 "" 2
# handlers.c:2610:     def_detour_asm_vars(sys_umask);
# 2610 "handlers.c" 1
	#define sys_umask_jmp 4800	#
# 0 "" 2
# handlers.c:2611:     def_detour_asm_vars(sys_ioctl);
# 2611 "handlers.c" 1
	#define sys_ioctl_jmp 4896	#
# 0 "" 2
# handlers.c:2612:     def_detour_asm_vars(sys_brk);
# 2612 "handlers.c" 1
	#define sys_brk_jmp 4992	#
# 0 "" 2
# handlers.c:2613:     def_detour_asm_vars(sys_gettimeofday);
# 2613 "handlers.c" 1
	#define sys_gettimeofday_jmp 5088	#
# 0 "" 2
# handlers.c:2614:     def_detour_asm_vars(sys_setresuid);
# 2614 "handlers.c" 1
	#define sys_setresuid_jmp 5184	#
# 0 "" 2
# handlers.c:2615:     def_detour_asm_vars(sys_chdir);
# 2615 "handlers.c" 1
	#define sys_chdir_jmp 5280	#
# 0 "" 2
# handlers.c:2616:     def_detour_asm_vars(sys_alarm);
# 2616 "handlers.c" 1
	#define sys_alarm_jmp 5376	#
# 0 "" 2
# handlers.c:2617:     def_detour_asm_vars(sys_ptrace);
# 2617 "handlers.c" 1
	#define sys_ptrace_jmp 5472	#
# 0 "" 2
# handlers.c:2618:     def_detour_asm_vars(sys_time);
# 2618 "handlers.c" 1
	#define sys_time_jmp 5568	#
# 0 "" 2
# handlers.c:2619:     def_detour_asm_vars(sys_chroot);
# 2619 "handlers.c" 1
	#define sys_chroot_jmp 5664	#
# 0 "" 2
# handlers.c:2620:     def_detour_asm_vars(sys_kill);
# 2620 "handlers.c" 1
	#define sys_kill_jmp 5760	#
# 0 "" 2
# handlers.c:2621:     def_detour_asm_vars(sys_fchdir);
# 2621 "handlers.c" 1
	#define sys_fchdir_jmp 5856	#
# 0 "" 2
# handlers.c:2622:     def_detour_asm_vars(sys_chmod);
# 2622 "handlers.c" 1
	#define sys_chmod_jmp 5952	#
# 0 "" 2
# handlers.c:2623:     def_detour_asm_vars(sys_chown);
# 2623 "handlers.c" 1
	#define sys_chown_jmp 6048	#
# 0 "" 2
# handlers.c:2624:     def_detour_asm_vars(sys_fchmodat);
# 2624 "handlers.c" 1
	#define sys_fchmodat_jmp 6144	#
# 0 "" 2
# handlers.c:2625:     def_detour_asm_vars(sys_fchmod);
# 2625 "handlers.c" 1
	#define sys_fchmod_jmp 6240	#
# 0 "" 2
# handlers.c:2626:     def_detour_asm_vars(sys_fchown);
# 2626 "handlers.c" 1
	#define sys_fchown_jmp 6336	#
# 0 "" 2
# handlers.c:2627:     def_detour_asm_vars(sys_fchownat);
# 2627 "handlers.c" 1
	#define sys_fchownat_jmp 6432	#
# 0 "" 2
# handlers.c:2628:     def_detour_asm_vars(sys_rename);
# 2628 "handlers.c" 1
	#define sys_rename_jmp 6528	#
# 0 "" 2
# handlers.c:2629:     def_detour_asm_vars(sys_renameat2);
# 2629 "handlers.c" 1
	#define sys_renameat2_jmp 6624	#
# 0 "" 2
# handlers.c:2630:     def_detour_asm_vars(sys_renameat);
# 2630 "handlers.c" 1
	#define sys_renameat_jmp 6720	#
# 0 "" 2
# handlers.c:2631:     def_detour_asm_vars(sys_mkdir);
# 2631 "handlers.c" 1
	#define sys_mkdir_jmp 6816	#
# 0 "" 2
# handlers.c:2632:     def_detour_asm_vars(sys_creat);
# 2632 "handlers.c" 1
	#define sys_creat_jmp 6912	#
# 0 "" 2
# handlers.c:2633:     def_detour_asm_vars(sys_openat);
# 2633 "handlers.c" 1
	#define sys_openat_jmp 7008	#
# 0 "" 2
# handlers.c:2634:     def_detour_asm_vars(sys_link);
# 2634 "handlers.c" 1
	#define sys_link_jmp 7104	#
# 0 "" 2
# handlers.c:2635:     def_detour_asm_vars(sys_unlink);
# 2635 "handlers.c" 1
	#define sys_unlink_jmp 7200	#
# 0 "" 2
# handlers.c:2636:     def_detour_asm_vars(sys_unlinkat);
# 2636 "handlers.c" 1
	#define sys_unlinkat_jmp 7296	#
# 0 "" 2
# handlers.c:2637:     def_detour_asm_vars(sys_linkat);
# 2637 "handlers.c" 1
	#define sys_linkat_jmp 7392	#
# 0 "" 2
# handlers.c:2638:     def_detour_asm_vars(sys_symlink);
# 2638 "handlers.c" 1
	#define sys_symlink_jmp 7488	#
# 0 "" 2
# handlers.c:2639:     def_detour_asm_vars(sys_symlinkat);
# 2639 "handlers.c" 1
	#define sys_symlinkat_jmp 7584	#
# 0 "" 2
# handlers.c:2640:     def_detour_asm_vars(sys_access);
# 2640 "handlers.c" 1
	#define sys_access_jmp 7680	#
# 0 "" 2
# handlers.c:2641:     def_detour_asm_vars(sys_newfstat);
# 2641 "handlers.c" 1
	#define sys_newfstat_jmp 7776	#
# 0 "" 2
# handlers.c:2642:     def_detour_asm_vars(sys_newstat);
# 2642 "handlers.c" 1
	#define sys_newstat_jmp 7872	#
# 0 "" 2
# handlers.c:2643:     def_detour_asm_vars(sys_newlstat);
# 2643 "handlers.c" 1
	#define sys_newlstat_jmp 7968	#
# 0 "" 2
# handlers.c:2644:     def_detour_asm_vars(sys_newfstatat);
# 2644 "handlers.c" 1
	#define sys_newfstatat_jmp 8064	#
# 0 "" 2
# handlers.c:2645:     def_detour_asm_vars(sys_pwrite64);
# 2645 "handlers.c" 1
	#define sys_pwrite64_jmp 8160	#
# 0 "" 2
# handlers.c:2646:     def_detour_asm_vars(sys_pread64);
# 2646 "handlers.c" 1
	#define sys_pread64_jmp 8256	#
# 0 "" 2
# handlers.c:2647:     def_detour_asm_vars(sys_mmap_pgoff);
# 2647 "handlers.c" 1
	#define sys_mmap_pgoff_jmp 8352	#
# 0 "" 2
# handlers.c:2648:     def_detour_asm_vars(sys_prctl);
# 2648 "handlers.c" 1
	#define sys_prctl_jmp 8448	#
# 0 "" 2
# handlers.c:2649:     def_detour_asm_vars(do_sigaction);
# 2649 "handlers.c" 1
	#define do_sigaction_jmp 8544	#
# 0 "" 2
# handlers.c:2650:     def_detour_asm_vars(sys_select);
# 2650 "handlers.c" 1
	#define sys_select_jmp 8640	#
# 0 "" 2
# handlers.c:2651:     def_detour_asm_vars(sys_clock_gettime);
# 2651 "handlers.c" 1
	#define sys_clock_gettime_jmp 8736	#
# 0 "" 2
# handlers.c:2652:     def_detour_asm_vars(sys_perf_event_open);
# 2652 "handlers.c" 1
	#define sys_perf_event_open_jmp 8832	#
# 0 "" 2
# handlers.c:2653:     def_detour_asm_vars(sys_newuname);
# 2653 "handlers.c" 1
	#define sys_newuname_jmp 8928	#
# 0 "" 2
# handlers.c:2654:     def_detour_asm_vars(sys_reboot);
# 2654 "handlers.c" 1
	#define sys_reboot_jmp 9024	#
# 0 "" 2
# handlers.c:2655:     def_detour_asm_vars(sys_init_module);
# 2655 "handlers.c" 1
	#define sys_init_module_jmp 9120	#
# 0 "" 2
# handlers.c:2656:     def_detour_asm_vars(sys_delete_module);
# 2656 "handlers.c" 1
	#define sys_delete_module_jmp 9216	#
# 0 "" 2
# handlers.c:2657:     def_detour_asm_vars(sys_finit_module);
# 2657 "handlers.c" 1
	#define sys_finit_module_jmp 9312	#
# 0 "" 2
# handlers.c:2658:     def_detour_asm_vars(sys_write);
# 2658 "handlers.c" 1
	#define sys_write_jmp 9408	#
# 0 "" 2
# handlers.c:2659:     def_detour_asm_vars(do_sys_open);
# 2659 "handlers.c" 1
	#define do_sys_open_jmp 9504	#
# 0 "" 2
# handlers.c:2660:     def_detour_asm_vars(sys_accept);
# 2660 "handlers.c" 1
	#define sys_accept_jmp 9600	#
# 0 "" 2
# handlers.c:2661:     def_detour_asm_vars(sys_accept4);
# 2661 "handlers.c" 1
	#define sys_accept4_jmp 9696	#
# 0 "" 2
# handlers.c:2662:     def_detour_asm_vars(sys_bind);
# 2662 "handlers.c" 1
	#define sys_bind_jmp 9792	#
# 0 "" 2
# handlers.c:2663:     def_detour_asm_vars(sys_connect);
# 2663 "handlers.c" 1
	#define sys_connect_jmp 9888	#
# 0 "" 2
# handlers.c:2664:     def_detour_asm_vars(sys_sendto);
# 2664 "handlers.c" 1
	#define sys_sendto_jmp 9984	#
# 0 "" 2
# handlers.c:2665:     def_detour_asm_vars(sys_sendmsg);
# 2665 "handlers.c" 1
	#define sys_sendmsg_jmp 10080	#
# 0 "" 2
# handlers.c:2666:     def_detour_asm_vars(sys_recvmsg);
# 2666 "handlers.c" 1
	#define sys_recvmsg_jmp 10272	#
# 0 "" 2
# handlers.c:2667:     def_detour_asm_vars(sys_recvfrom);
# 2667 "handlers.c" 1
	#define sys_recvfrom_jmp 10176	#
# 0 "" 2
# handlers.c:2668:     def_detour_asm_vars(sys_close);
# 2668 "handlers.c" 1
	#define sys_close_jmp 10560	#
# 0 "" 2
# handlers.c:2669:     def_detour_asm_vars(sys_dup);
# 2669 "handlers.c" 1
	#define sys_dup_jmp 10368	#
# 0 "" 2
# handlers.c:2670:     def_detour_asm_vars(sys_dup2);
# 2670 "handlers.c" 1
	#define sys_dup2_jmp 10464	#
# 0 "" 2
# handlers.c:2672:     def_detour_asm_vars(sys_waitid);
# 2672 "handlers.c" 1
	#define sys_waitid_jmp 10656	#
# 0 "" 2
# handlers.c:2673:     def_detour_asm_vars(sys_wait4);
# 2673 "handlers.c" 1
	#define sys_wait4_jmp 10752	#
# 0 "" 2
# handlers.c:2674:     def_detour_asm_vars(sys_sched_rr_get_interval);
# 2674 "handlers.c" 1
	#define sys_sched_rr_get_interval_jmp 10848	#
# 0 "" 2
# handlers.c:2675:     def_detour_asm_vars(sys_execve);
# 2675 "handlers.c" 1
	#define sys_execve_jmp 10944	#
# 0 "" 2
# handlers.c:2676:     def_detour_asm_vars(sys_execveat);
# 2676 "handlers.c" 1
	#define sys_execveat_jmp 11040	#
# 0 "" 2
# handlers.c:2677:     def_detour_asm_vars(sys_setuid16);
# 2677 "handlers.c" 1
	#define sys_setuid16_jmp 11136	#
# 0 "" 2
# handlers.c:2678:     def_detour_asm_vars(sys_sched_yield);
# 2678 "handlers.c" 1
	#define sys_sched_yield_jmp 11232	#
# 0 "" 2
# handlers.c:2679:     def_detour_asm_vars(sys_sendmmsg);
# 2679 "handlers.c" 1
	#define sys_sendmmsg_jmp 11328	#
# 0 "" 2
# handlers.c:2680:     def_detour_asm_vars(sys_getpid);
# 2680 "handlers.c" 1
	#define sys_getpid_jmp 11424	#
# 0 "" 2
# handlers.c:2681:     def_detour_asm_vars(sys_gettid);
# 2681 "handlers.c" 1
	#define sys_gettid_jmp 11520	#
# 0 "" 2
# handlers.c:2682:     def_detour_asm_vars(sys_oldumount);
# 2682 "handlers.c" 1
	#define sys_oldumount_jmp 11616	#
# 0 "" 2
# handlers.c:2683:     def_detour_asm_vars(sys_setgid16);
# 2683 "handlers.c" 1
	#define sys_setgid16_jmp 11712	#
# 0 "" 2
# handlers.c:2684:     def_detour_asm_vars(sys_getcwd);
# 2684 "handlers.c" 1
	#define sys_getcwd_jmp 11808	#
# 0 "" 2
# handlers.c:2685:     def_detour_asm_vars(hrtimer_nanosleep);
# 2685 "handlers.c" 1
	#define hrtimer_nanosleep_jmp 11904	#
# 0 "" 2
# handlers.c:2686:     def_detour_asm_vars(sys_clock_nanosleep);
# 2686 "handlers.c" 1
	#define sys_clock_nanosleep_jmp 12000	#
# 0 "" 2
# handlers.c:2687: }
#NO_APP
	ret
	.cfi_endproc
.LFE223:
	.size	__asm_defines, .-__asm_defines
	.globl	hypercall_info
	.section	.detours,"aw",@progbits
	.align 32
	.type	hypercall_info, @object
	.size	hypercall_info, 12120
hypercall_info:
# DetoursCount:
	.zero	8
	.quad	125
# Detours:
# Name:
	.string	"commit_creds"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	commit_creds_trampoline
# RelocatedCode:
	.quad	commit_creds_reloc
	.zero	16
# Name:
	.string	"arch_jump_label_transform"
	.zero	6
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	arch_jump_label_transform_trampoline
# RelocatedCode:
	.quad	arch_jump_label_transform_reloc
	.zero	16
# Name:
	.string	"module_param_sysfs_setup"
	.zero	7
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	module_param_sysfs_setup_trampoline
# RelocatedCode:
	.quad	module_param_sysfs_setup_reloc
	.zero	16
# Name:
	.string	"module_param_sysfs_remove"
	.zero	6
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	module_param_sysfs_remove_trampoline
# RelocatedCode:
	.quad	module_param_sysfs_remove_reloc
	.zero	16
# Name:
	.string	"wake_up_new_task"
	.zero	15
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	wake_up_new_task_trampoline
# RelocatedCode:
	.quad	wake_up_new_task_reloc
	.zero	16
# Name:
	.string	"flush_old_exec"
	.zero	17
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	flush_old_exec_trampoline
# RelocatedCode:
	.quad	flush_old_exec_reloc
	.zero	16
# Name:
	.string	"begin_new_exec"
	.zero	17
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	begin_new_exec_trampoline
# RelocatedCode:
	.quad	begin_new_exec_reloc
	.zero	16
# Name:
	.string	"do_exit"
	.zero	24
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	do_exit_trampoline
# RelocatedCode:
	.quad	do_exit_reloc
	.zero	16
# Name:
	.string	"arch_ptrace"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	arch_ptrace_trampoline
# RelocatedCode:
	.quad	arch_ptrace_reloc
	.zero	16
# Name:
	.string	"compat_arch_ptrace"
	.zero	13
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	compat_arch_ptrace_trampoline
# RelocatedCode:
	.quad	compat_arch_ptrace_reloc
	.zero	16
# Name:
	.string	"process_vm_rw_core"
	.zero	13
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	process_vm_rw_core_trampoline
# RelocatedCode:
	.quad	process_vm_rw_core_reloc
	.zero	16
# Name:
	.string	"__vma_link_rb"
	.zero	18
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	__vma_link_rb_trampoline
# RelocatedCode:
	.quad	__vma_link_rb_reloc
	.zero	16
# Name:
	.string	"change_protection"
	.zero	14
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	change_protection_trampoline
# RelocatedCode:
	.quad	change_protection_reloc
	.zero	16
# Name:
	.string	"vma_adjust"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	vma_adjust_trampoline
# RelocatedCode:
	.quad	vma_adjust_reloc
	.zero	16
# Name:
	.string	"__vma_adjust"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	__vma_adjust_trampoline
# RelocatedCode:
	.quad	__vma_adjust_reloc
	.zero	16
# Name:
	.string	"vma_rb_erase"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	vma_rb_erase_trampoline
# RelocatedCode:
	.quad	vma_rb_erase_reloc
	.zero	16
# Name:
	.string	"__vma_rb_erase"
	.zero	17
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	__vma_rb_erase_trampoline
# RelocatedCode:
	.quad	__vma_rb_erase_reloc
	.zero	16
# Name:
	.string	"expand_downwards"
	.zero	15
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	expand_downwards_trampoline
# RelocatedCode:
	.quad	expand_downwards_reloc
	.zero	16
# Name:
	.string	"complete_signal"
	.zero	16
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	complete_signal_trampoline
# RelocatedCode:
	.quad	complete_signal_reloc
	.zero	16
# Name:
	.string	"text_poke"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	text_poke_trampoline
# RelocatedCode:
	.quad	text_poke_reloc
	.zero	16
# Name:
	.string	"__text_poke"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	__text_poke_trampoline
# RelocatedCode:
	.quad	__text_poke_reloc
	.zero	16
# Name:
	.string	"ftrace_write"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	ftrace_write_trampoline
# RelocatedCode:
	.quad	ftrace_write_reloc
	.zero	16
# Name:
	.string	"panic"
	.zero	26
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	panic_trampoline
# RelocatedCode:
	.quad	panic_reloc
	.zero	16
# Name:
	.string	"crash_kexec"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	crash_kexec_trampoline
# RelocatedCode:
	.quad	crash_kexec_reloc
	.zero	16
# Name:
	.string	"__access_remote_vm"
	.zero	13
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	__access_remote_vm_trampoline
# RelocatedCode:
	.quad	__access_remote_vm_reloc
	.zero	16
# Name:
	.string	"mprotect_fixup"
	.zero	17
# HijackName:
	.string	"vma_wants_writenotify"
	.zero	10
# Address:
	.quad	mprotect_fixup_vma_wants_writenotify_trampoline
# RelocatedCode:
	.quad	mprotect_fixup_vma_wants_writenotify_reloc
	.zero	16
# Name:
	.string	"do_munmap"
	.zero	22
# HijackName:
	.string	"rb_erase"
	.zero	23
# Address:
	.quad	do_munmap_rb_erase_trampoline
# RelocatedCode:
	.quad	do_munmap_rb_erase_reloc
	.zero	16
# Name:
	.string	"vma_adjust"
	.zero	21
# HijackName:
	.string	"rb_erase"
	.zero	23
# Address:
	.quad	vma_adjust_rb_erase_trampoline
# RelocatedCode:
	.quad	vma_adjust_rb_erase_reloc
	.zero	16
# Name:
	.string	"do_rmdir"
	.zero	23
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	do_rmdir_trampoline
# RelocatedCode:
	.quad	do_rmdir_reloc
	.zero	16
# Name:
	.string	"sys_sysfs"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_sysfs_trampoline
# RelocatedCode:
	.quad	sys_sysfs_reloc
	.zero	16
# Name:
	.string	"sys_read"
	.zero	23
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_read_trampoline
# RelocatedCode:
	.quad	sys_read_reloc
	.zero	16
# Name:
	.string	"sys_getppid"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_getppid_trampoline
# RelocatedCode:
	.quad	sys_getppid_reloc
	.zero	16
# Name:
	.string	"sys_getsid"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_getsid_trampoline
# RelocatedCode:
	.quad	sys_getsid_reloc
	.zero	16
# Name:
	.string	"sys_getuid"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_getuid_trampoline
# RelocatedCode:
	.quad	sys_getuid_reloc
	.zero	16
# Name:
	.string	"sys_geteuid"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_geteuid_trampoline
# RelocatedCode:
	.quad	sys_geteuid_reloc
	.zero	16
# Name:
	.string	"sys_shutdown"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_shutdown_trampoline
# RelocatedCode:
	.quad	sys_shutdown_reloc
	.zero	16
# Name:
	.string	"do_sysinfo"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	do_sysinfo_trampoline
# RelocatedCode:
	.quad	do_sysinfo_reloc
	.zero	16
# Name:
	.string	"sys_capget"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_capget_trampoline
# RelocatedCode:
	.quad	sys_capget_reloc
	.zero	16
# Name:
	.string	"sys_capset"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_capset_trampoline
# RelocatedCode:
	.quad	sys_capset_reloc
	.zero	16
# Name:
	.string	"sys_statfs"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_statfs_trampoline
# RelocatedCode:
	.quad	sys_statfs_reloc
	.zero	16
# Name:
	.string	"sys_fstatfs"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_fstatfs_trampoline
# RelocatedCode:
	.quad	sys_fstatfs_reloc
	.zero	16
# Name:
	.string	"sys_setsid"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_setsid_trampoline
# RelocatedCode:
	.quad	sys_setsid_reloc
	.zero	16
# Name:
	.string	"sys_seccomp"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_seccomp_trampoline
# RelocatedCode:
	.quad	sys_seccomp_reloc
	.zero	16
# Name:
	.string	"sys_tgkill"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_tgkill_trampoline
# RelocatedCode:
	.quad	sys_tgkill_reloc
	.zero	16
# Name:
	.string	"sys_tkill"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_tkill_trampoline
# RelocatedCode:
	.quad	sys_tkill_reloc
	.zero	16
# Name:
	.string	"sys_ustat"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_ustat_trampoline
# RelocatedCode:
	.quad	sys_ustat_reloc
	.zero	16
# Name:
	.string	"sys_poll"
	.zero	23
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_poll_trampoline
# RelocatedCode:
	.quad	sys_poll_reloc
	.zero	16
# Name:
	.string	"sys_sigprocmask"
	.zero	16
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_sigprocmask_trampoline
# RelocatedCode:
	.quad	sys_sigprocmask_reloc
	.zero	16
# Name:
	.string	"sys_getrlimit"
	.zero	18
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_getrlimit_trampoline
# RelocatedCode:
	.quad	sys_getrlimit_reloc
	.zero	16
# Name:
	.string	"sys_umask"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_umask_trampoline
# RelocatedCode:
	.quad	sys_umask_reloc
	.zero	16
# Name:
	.string	"sys_ioctl"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_ioctl_trampoline
# RelocatedCode:
	.quad	sys_ioctl_reloc
	.zero	16
# Name:
	.string	"sys_brk"
	.zero	24
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_brk_trampoline
# RelocatedCode:
	.quad	sys_brk_reloc
	.zero	16
# Name:
	.string	"sys_gettimeofday"
	.zero	15
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_gettimeofday_trampoline
# RelocatedCode:
	.quad	sys_gettimeofday_reloc
	.zero	16
# Name:
	.string	"sys_setresuid"
	.zero	18
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_setresuid_trampoline
# RelocatedCode:
	.quad	sys_setresuid_reloc
	.zero	16
# Name:
	.string	"sys_chdir"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_chdir_trampoline
# RelocatedCode:
	.quad	sys_chdir_reloc
	.zero	16
# Name:
	.string	"sys_alarm"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_alarm_trampoline
# RelocatedCode:
	.quad	sys_alarm_reloc
	.zero	16
# Name:
	.string	"sys_ptrace"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_ptrace_trampoline
# RelocatedCode:
	.quad	sys_ptrace_reloc
	.zero	16
# Name:
	.string	"sys_time"
	.zero	23
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_time_trampoline
# RelocatedCode:
	.quad	sys_time_reloc
	.zero	16
# Name:
	.string	"sys_chroot"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_chroot_trampoline
# RelocatedCode:
	.quad	sys_chroot_reloc
	.zero	16
# Name:
	.string	"sys_kill"
	.zero	23
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_kill_trampoline
# RelocatedCode:
	.quad	sys_kill_reloc
	.zero	16
# Name:
	.string	"sys_fchdir"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_fchdir_trampoline
# RelocatedCode:
	.quad	sys_fchdir_reloc
	.zero	16
# Name:
	.string	"sys_chmod"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_chmod_trampoline
# RelocatedCode:
	.quad	sys_chmod_reloc
	.zero	16
# Name:
	.string	"sys_chown"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_chown_trampoline
# RelocatedCode:
	.quad	sys_chown_reloc
	.zero	16
# Name:
	.string	"sys_fchmodat"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_fchmodat_trampoline
# RelocatedCode:
	.quad	sys_fchmodat_reloc
	.zero	16
# Name:
	.string	"sys_fchmod"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_fchmod_trampoline
# RelocatedCode:
	.quad	sys_fchmod_reloc
	.zero	16
# Name:
	.string	"sys_fchown"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_fchown_trampoline
# RelocatedCode:
	.quad	sys_fchown_reloc
	.zero	16
# Name:
	.string	"sys_fchownat"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_fchownat_trampoline
# RelocatedCode:
	.quad	sys_fchownat_reloc
	.zero	16
# Name:
	.string	"sys_rename"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_rename_trampoline
# RelocatedCode:
	.quad	sys_rename_reloc
	.zero	16
# Name:
	.string	"sys_renameat2"
	.zero	18
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_renameat2_trampoline
# RelocatedCode:
	.quad	sys_renameat2_reloc
	.zero	16
# Name:
	.string	"sys_renameat"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_renameat_trampoline
# RelocatedCode:
	.quad	sys_renameat_reloc
	.zero	16
# Name:
	.string	"sys_mkdir"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_mkdir_trampoline
# RelocatedCode:
	.quad	sys_mkdir_reloc
	.zero	16
# Name:
	.string	"sys_creat"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_creat_trampoline
# RelocatedCode:
	.quad	sys_creat_reloc
	.zero	16
# Name:
	.string	"sys_openat"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_openat_trampoline
# RelocatedCode:
	.quad	sys_openat_reloc
	.zero	16
# Name:
	.string	"sys_link"
	.zero	23
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_link_trampoline
# RelocatedCode:
	.quad	sys_link_reloc
	.zero	16
# Name:
	.string	"sys_unlink"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_unlink_trampoline
# RelocatedCode:
	.quad	sys_unlink_reloc
	.zero	16
# Name:
	.string	"sys_unlinkat"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_unlinkat_trampoline
# RelocatedCode:
	.quad	sys_unlinkat_reloc
	.zero	16
# Name:
	.string	"sys_linkat"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_linkat_trampoline
# RelocatedCode:
	.quad	sys_linkat_reloc
	.zero	16
# Name:
	.string	"sys_symlink"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_symlink_trampoline
# RelocatedCode:
	.quad	sys_symlink_reloc
	.zero	16
# Name:
	.string	"sys_symlinkat"
	.zero	18
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_symlinkat_trampoline
# RelocatedCode:
	.quad	sys_symlinkat_reloc
	.zero	16
# Name:
	.string	"sys_access"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_access_trampoline
# RelocatedCode:
	.quad	sys_access_reloc
	.zero	16
# Name:
	.string	"sys_newfstat"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_newfstat_trampoline
# RelocatedCode:
	.quad	sys_newfstat_reloc
	.zero	16
# Name:
	.string	"sys_newstat"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_newstat_trampoline
# RelocatedCode:
	.quad	sys_newstat_reloc
	.zero	16
# Name:
	.string	"sys_newlstat"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_newlstat_trampoline
# RelocatedCode:
	.quad	sys_newlstat_reloc
	.zero	16
# Name:
	.string	"sys_newfstatat"
	.zero	17
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_newfstatat_trampoline
# RelocatedCode:
	.quad	sys_newfstatat_reloc
	.zero	16
# Name:
	.string	"sys_pwrite64"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_pwrite64_trampoline
# RelocatedCode:
	.quad	sys_pwrite64_reloc
	.zero	16
# Name:
	.string	"sys_pread64"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_pread64_trampoline
# RelocatedCode:
	.quad	sys_pread64_reloc
	.zero	16
# Name:
	.string	"sys_mmap_pgoff"
	.zero	17
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_mmap_pgoff_trampoline
# RelocatedCode:
	.quad	sys_mmap_pgoff_reloc
	.zero	16
# Name:
	.string	"sys_prctl"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_prctl_trampoline
# RelocatedCode:
	.quad	sys_prctl_reloc
	.zero	16
# Name:
	.string	"do_sigaction"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	do_sigaction_trampoline
# RelocatedCode:
	.quad	do_sigaction_reloc
	.zero	16
# Name:
	.string	"sys_select"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_select_trampoline
# RelocatedCode:
	.quad	sys_select_reloc
	.zero	16
# Name:
	.string	"sys_clock_gettime"
	.zero	14
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_clock_gettime_trampoline
# RelocatedCode:
	.quad	sys_clock_gettime_reloc
	.zero	16
# Name:
	.string	"sys_perf_event_open"
	.zero	12
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_perf_event_open_trampoline
# RelocatedCode:
	.quad	sys_perf_event_open_reloc
	.zero	16
# Name:
	.string	"sys_newuname"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_newuname_trampoline
# RelocatedCode:
	.quad	sys_newuname_reloc
	.zero	16
# Name:
	.string	"sys_reboot"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_reboot_trampoline
# RelocatedCode:
	.quad	sys_reboot_reloc
	.zero	16
# Name:
	.string	"sys_init_module"
	.zero	16
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_init_module_trampoline
# RelocatedCode:
	.quad	sys_init_module_reloc
	.zero	16
# Name:
	.string	"sys_delete_module"
	.zero	14
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_delete_module_trampoline
# RelocatedCode:
	.quad	sys_delete_module_reloc
	.zero	16
# Name:
	.string	"sys_finit_module"
	.zero	15
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_finit_module_trampoline
# RelocatedCode:
	.quad	sys_finit_module_reloc
	.zero	16
# Name:
	.string	"sys_write"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_write_trampoline
# RelocatedCode:
	.quad	sys_write_reloc
	.zero	16
# Name:
	.string	"do_sys_open"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	do_sys_open_trampoline
# RelocatedCode:
	.quad	do_sys_open_reloc
	.zero	16
# Name:
	.string	"sys_accept"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_accept_trampoline
# RelocatedCode:
	.quad	sys_accept_reloc
	.zero	16
# Name:
	.string	"sys_accept4"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_accept4_trampoline
# RelocatedCode:
	.quad	sys_accept4_reloc
	.zero	16
# Name:
	.string	"sys_bind"
	.zero	23
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_bind_trampoline
# RelocatedCode:
	.quad	sys_bind_reloc
	.zero	16
# Name:
	.string	"sys_connect"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_connect_trampoline
# RelocatedCode:
	.quad	sys_connect_reloc
	.zero	16
# Name:
	.string	"sys_sendto"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_sendto_trampoline
# RelocatedCode:
	.quad	sys_sendto_reloc
	.zero	16
# Name:
	.string	"sys_sendmsg"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_sendmsg_trampoline
# RelocatedCode:
	.quad	sys_sendmsg_reloc
	.zero	16
# Name:
	.string	"sys_recvfrom"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_recvfrom_trampoline
# RelocatedCode:
	.quad	sys_recvfrom_reloc
	.zero	16
# Name:
	.string	"sys_recvmsg"
	.zero	20
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_recvmsg_trampoline
# RelocatedCode:
	.quad	sys_recvmsg_reloc
	.zero	16
# Name:
	.string	"sys_dup"
	.zero	24
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_dup_trampoline
# RelocatedCode:
	.quad	sys_dup_reloc
	.zero	16
# Name:
	.string	"sys_dup2"
	.zero	23
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_dup2_trampoline
# RelocatedCode:
	.quad	sys_dup2_reloc
	.zero	16
# Name:
	.string	"sys_close"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_close_trampoline
# RelocatedCode:
	.quad	sys_close_reloc
	.zero	16
# Name:
	.string	"sys_waitid"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_waitid_trampoline
# RelocatedCode:
	.quad	sys_waitid_reloc
	.zero	16
# Name:
	.string	"sys_wait4"
	.zero	22
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_wait4_trampoline
# RelocatedCode:
	.quad	sys_wait4_reloc
	.zero	16
# Name:
	.string	"sys_sched_rr_get_interval"
	.zero	6
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_sched_rr_get_interval_trampoline
# RelocatedCode:
	.quad	sys_sched_rr_get_interval_reloc
	.zero	16
# Name:
	.string	"sys_execve"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_execve_trampoline
# RelocatedCode:
	.quad	sys_execve_reloc
	.zero	16
# Name:
	.string	"sys_execveat"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_execveat_trampoline
# RelocatedCode:
	.quad	sys_execveat_reloc
	.zero	16
# Name:
	.string	"sys_setuid16"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_setuid16_trampoline
# RelocatedCode:
	.quad	sys_setuid16_reloc
	.zero	16
# Name:
	.string	"sys_sched_yield"
	.zero	16
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_sched_yield_trampoline
# RelocatedCode:
	.quad	sys_sched_yield_reloc
	.zero	16
# Name:
	.string	"sys_sendmmsg"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_sendmmsg_trampoline
# RelocatedCode:
	.quad	sys_sendmmsg_reloc
	.zero	16
# Name:
	.string	"sys_getpid"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_getpid_trampoline
# RelocatedCode:
	.quad	sys_getpid_reloc
	.zero	16
# Name:
	.string	"sys_gettid"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_gettid_trampoline
# RelocatedCode:
	.quad	sys_gettid_reloc
	.zero	16
# Name:
	.string	"sys_oldumount"
	.zero	18
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_oldumount_trampoline
# RelocatedCode:
	.quad	sys_oldumount_reloc
	.zero	16
# Name:
	.string	"sys_setgid16"
	.zero	19
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_setgid16_trampoline
# RelocatedCode:
	.quad	sys_setgid16_reloc
	.zero	16
# Name:
	.string	"sys_getcwd"
	.zero	21
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_getcwd_trampoline
# RelocatedCode:
	.quad	sys_getcwd_reloc
	.zero	16
# Name:
	.string	"hrtimer_nanosleep"
	.zero	14
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	hrtimer_nanosleep_trampoline
# RelocatedCode:
	.quad	hrtimer_nanosleep_reloc
	.zero	16
# Name:
	.string	"sys_clock_nanosleep"
	.zero	12
# HijackName:
	.byte	0
	.zero	31
# Address:
	.quad	sys_clock_nanosleep_trampoline
# RelocatedCode:
	.quad	sys_clock_nanosleep_reloc
	.zero	16
	.zero	104
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
