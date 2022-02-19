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
# handlers.c:222:     return  (hypercall_info.Detours[id].EnableOptions == -1ULL)
	inc	rax	# tmp95
	imul	rax, rax, 96	# tmp96, tmp95,
# handlers.c:229: {
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
# handlers.c:222:     return  (hypercall_info.Detours[id].EnableOptions == -1ULL)
	lea	rdx, hypercall_info[rip]	# tmp93,
	mov	rax, QWORD PTR 8[rdx+rax]	# _8, hypercall_info.Detours[id_5(D)].EnableOptions
# handlers.c:223:         || ((hypercall_info.Detours[id].EnableOptions & hypercall_info.ProtectionOptions) != 0);
	cmp	rax, -1	# _8,
	je	.L2	#,
# handlers.c:231:         return 0;
	xor	esi, esi	# <retval>
# handlers.c:230:     if (!is_detour_enabled(id)) {
	test	QWORD PTR hypercall_info[rip], rax	# hypercall_info.ProtectionOptions, _8
	je	.L1	#,
.L2:
# handlers.c:236:     asm volatile("vmcall" : "+S" (_out_param), "+a"(_out_value) : "D"(24), "b"(id): );
	xor	esi, esi	# _out_param
	mov	eax, 34	# _out_value,
	mov	edi, 24	# tmp103,
#APP
# 236 "handlers.c" 1
	vmcall
# 0 "" 2
# handlers.c:239:     volatile struct inactive_task_frame _reserved = { 0 };
#NO_APP
	lea	rdi, -56[rsp]	# tmp106,
	mov	ecx, 14	# tmp108,
	xor	eax, eax	# tmp107
	rep stosd
.L1:
# handlers.c:243: }
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
# handlers.c:249:     void *path = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
	mov	esi, DWORD PTR hypercall_info[rip+7780]	# hypercall_info.OsSpecificFields.CurrentCpuOffset, hypercall_info.OsSpecificFields.CurrentCpuOffset
#APP
# 249 "handlers.c" 1
	mov esi, gs:[rsi]	# ret, hypercall_info.OsSpecificFields.CurrentCpuOffset
# 0 "" 2
# handlers.c:251:     return hypercall_info.OsSpecificFields.DPathFnPtr(path_struct, path, PAGE_SIZE);
#NO_APP
	mov	edx, 4096	#,
# handlers.c:249:     void *path = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
	sal	esi, 12	#,
	add	rsi, QWORD PTR hypercall_info[rip+7784]	# path, hypercall_info.OsSpecificFields.PercpuMemPtr
# handlers.c:251:     return hypercall_info.OsSpecificFields.DPathFnPtr(path_struct, path, PAGE_SIZE);
	call	[QWORD PTR hypercall_info[rip+7792]]	# hypercall_info.OsSpecificFields.DPathFnPtr
# handlers.c:252: }
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
# handlers.c:261:     while (len--)
	xor	ecx, ecx	# ivtmp.318
# handlers.c:257: {
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
.L14:
# handlers.c:261:     while (len--)
	cmp	rdx, rcx	# len, ivtmp.318
	je	.L17	#,
# handlers.c:263:         *d++ = *s++;
	mov	dil, BYTE PTR [rsi+rcx]	# _1, MEM[base: src_7(D), index: ivtmp.318_14, offset: 0B]
	mov	BYTE PTR [rax+rcx], dil	# MEM[base: dest_6(D), index: ivtmp.318_14, offset: 0B], _1
	inc	rcx	# ivtmp.318
	jmp	.L14	#
.L17:
# handlers.c:267: }
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
# handlers.c:275:     regs.Rax = __read_reg("rax");
#APP
# 275 "handlers.c" 1
	mov rax, rax	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR [rsp], rax	# regs.Rax, val
# handlers.c:276:     regs.Rcx = __read_reg("rcx");
#APP
# 276 "handlers.c" 1
	mov rax, rcx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 8[rsp], rax	# regs.Rcx, val
# handlers.c:277:     regs.Rdx = __read_reg("rdx");
#APP
# 277 "handlers.c" 1
	mov rax, rdx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 16[rsp], rax	# regs.Rdx, val
# handlers.c:278:     regs.Rbx = __read_reg("rbx");
#APP
# 278 "handlers.c" 1
	mov rax, rbx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 24[rsp], rax	# regs.Rbx, val
# handlers.c:279:     regs.Rsp = __read_reg("rsp");
#APP
# 279 "handlers.c" 1
	mov rax, rsp	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 32[rsp], rax	# regs.Rsp, val
# handlers.c:280:     regs.Rbp = __read_reg("rbp");
#APP
# 280 "handlers.c" 1
	mov rax, rbp	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 40[rsp], rax	# regs.Rbp, val
# handlers.c:281:     regs.Rsi = __read_reg("rsi");
#APP
# 281 "handlers.c" 1
	mov rax, rsi	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 48[rsp], rax	# regs.Rsi, val
# handlers.c:282:     regs.Rdi = __read_reg("rdi");
#APP
# 282 "handlers.c" 1
	mov rax, rdi	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 56[rsp], rax	# regs.Rdi, val
# handlers.c:283:     regs.R8 = __read_reg("r8");
#APP
# 283 "handlers.c" 1
	mov rax, r8	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 64[rsp], rax	# regs.R8, val
# handlers.c:284:     regs.R9 = __read_reg("r9");
#APP
# 284 "handlers.c" 1
	mov rax, r9	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 72[rsp], rax	# regs.R9, val
# handlers.c:285:     regs.R10 = __read_reg("r10");
#APP
# 285 "handlers.c" 1
	mov rax, r10	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 80[rsp], rax	# regs.R10, val
# handlers.c:286:     regs.R11 = __read_reg("r11");
#APP
# 286 "handlers.c" 1
	mov rax, r11	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 88[rsp], rax	# regs.R11, val
# handlers.c:287:     regs.R12 = __read_reg("r12");
#APP
# 287 "handlers.c" 1
	mov rax, r12	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 96[rsp], rax	# regs.R12, val
# handlers.c:288:     regs.R13 = __read_reg("r13");
#APP
# 288 "handlers.c" 1
	mov rax, r13	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 104[rsp], rax	# regs.R13, val
# handlers.c:289:     regs.R14 = __read_reg("r14");
#APP
# 289 "handlers.c" 1
	mov rax, r14	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 112[rsp], rax	# regs.R14, val
# handlers.c:290:     regs.R15 = __read_reg("r15");
#APP
# 290 "handlers.c" 1
	mov rax, r15	# val
	
# 0 "" 2
# handlers.c:292:     void *dst = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
#NO_APP
	mov	edi, DWORD PTR hypercall_info[rip+7780]	# hypercall_info.OsSpecificFields.CurrentCpuOffset, hypercall_info.OsSpecificFields.CurrentCpuOffset
# handlers.c:290:     regs.R15 = __read_reg("r15");
	mov	QWORD PTR 120[rsp], rax	# regs.R15, val
# handlers.c:292:     void *dst = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
#APP
# 292 "handlers.c" 1
	mov edi, gs:[rdi]	# ret, hypercall_info.OsSpecificFields.CurrentCpuOffset
# 0 "" 2
#NO_APP
	sal	edi, 12	#,
	add	rdi, QWORD PTR hypercall_info[rip+7784]	# dst, hypercall_info.OsSpecificFields.PercpuMemPtr
# handlers.c:293:     _memcpy(dst, &regs, sizeof(regs));
	mov	rsi, rsp	# tmp131,
	mov	edx, 224	#,
	call	_memcpy	#
# handlers.c:294: }
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
# handlers.c:301:     void *current = current_task;
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:300: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:301:     void *current = current_task;
#APP
# 301 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
# handlers.c:303:     if (!hypercall_info.OsSpecificFields.Info.CredAltered) {
#NO_APP
	cmp	DWORD PTR hypercall_info[rip+7696], 0	# hypercall_info.OsSpecificFields.Info.CredAltered,
	jne	.L21	#,
# handlers.c:304:         uint32_t *in_execve = (uint32_t *)((unsigned long)(current) + hypercall_info.OsSpecificFields.Task.InExecve);
	mov	eax, DWORD PTR hypercall_info[rip+7740]	# hypercall_info.OsSpecificFields.Task.InExecve, hypercall_info.OsSpecificFields.Task.InExecve
# handlers.c:306:         if ((*in_execve & BIT(hypercall_info.OsSpecificFields.Task.InExecveBit))) {
	mov	edx, DWORD PTR [r8+rax]	# *in_execve_18, *in_execve_18
	mov	eax, DWORD PTR hypercall_info[rip+7744]	# hypercall_info.OsSpecificFields.Task.InExecveBit, hypercall_info.OsSpecificFields.Task.InExecveBit
	bt	rdx, rax	# *in_execve_18, hypercall_info.OsSpecificFields.Task.InExecveBit
	jc	.L20	#,
.L21:
	mov	r9, rdi	# creds, creds
# handlers.c:311:     vmcall_2(det_commit_creds, current, creds);
	xor	edi, edi	#
	call	vmcall	#
.L20:
# handlers.c:312: }
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
# handlers.c:319:     vmcall_1(det_module_param_sysfs_setup, module);
	mov	edi, 2	#,
	call	vmcall	#
# handlers.c:320: }
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
# handlers.c:327:     vmcall_1(det_module_param_sysfs_remove, module);
	mov	edi, 3	#,
	call	vmcall	#
# handlers.c:328: }
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
# handlers.c:335:     vmcall_2(det_wake_up_new_task, current_task, task);
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:334: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:335:     vmcall_2(det_wake_up_new_task, current_task, task);
#APP
# 335 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 4	#,
	call	vmcall	#
# handlers.c:336: }
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
# handlers.c:343:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7748]	# hypercall_info.OsSpecificFields.Binprm.FileOffset, hypercall_info.OsSpecificFields.Binprm.FileOffset
# handlers.c:342: {
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
# handlers.c:343:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	rdi, QWORD PTR [rax+rdi]	# file, *_4
# handlers.c:346:     if (!file) {
	test	rdi, rdi	# file
	je	.L31	#,
# handlers.c:350:     path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;
	mov	edx, DWORD PTR hypercall_info[rip+7756]	# hypercall_info.OsSpecificFields.File.PathOffset, hypercall_info.OsSpecificFields.File.PathOffset
	add	rdi, rdx	# file, hypercall_info.OsSpecificFields.File.PathOffset
.L31:
# handlers.c:353:     return vmcall_3(det_flush_old_exec, current_task, binprm, d_path((void *)path_struct));
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 353 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	call	d_path	#
	mov	r10, rax	# _12,
	mov	edi, 5	#,
	call	vmcall	#
# handlers.c:354: }
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
# handlers.c:361:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7748]	# hypercall_info.OsSpecificFields.Binprm.FileOffset, hypercall_info.OsSpecificFields.Binprm.FileOffset
# handlers.c:360: {
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
# handlers.c:361:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	rdi, QWORD PTR [rax+rdi]	# file, *_4
# handlers.c:364:     if (!file) {
	test	rdi, rdi	# file
	je	.L37	#,
# handlers.c:368:     path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;
	mov	edx, DWORD PTR hypercall_info[rip+7756]	# hypercall_info.OsSpecificFields.File.PathOffset, hypercall_info.OsSpecificFields.File.PathOffset
	add	rdi, rdx	# file, hypercall_info.OsSpecificFields.File.PathOffset
.L37:
# handlers.c:371:     return vmcall_3(det_begin_new_exec, current_task, binprm, d_path((void *)path_struct));
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 371 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	call	d_path	#
	mov	r10, rax	# _12,
	mov	edi, 6	#,
	call	vmcall	#
# handlers.c:372: }
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
# handlers.c:379:     vmcall_2(det_do_exit, current_task, code);
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:378: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:379:     vmcall_2(det_do_exit, current_task, code);
#APP
# 379 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 7	#,
	call	vmcall	#
# handlers.c:380: }
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
# handlers.c:396:     return 0;
	xor	eax, eax	# <retval>
# handlers.c:388:         || request == PTRACE_POKETEXT
	cmp	rsi, 19	# request,
	ja	.L49	#,
# handlers.c:386: {
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
# handlers.c:387:     if (request == PTRACE_POKEDATA
	mov	edx, 565296	# tmp99,
	bt	rdx, rsi	# tmp99, request
	jnc	.L44	#,
	mov	r9, rsi	# request, request
	mov	r8, rdi	# child, child
# handlers.c:393:         return vmcall_2(det_arch_ptrace, child, request);
	mov	edi, 8	#,
	call	vmcall	#
.L44:
# handlers.c:397: }
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
# handlers.c:405:     if (!vm_write) {
	test	r9d, r9d	# vm_write
	je	.L56	#,
# handlers.c:404: {
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
# handlers.c:409:     return vmcall_2(det_process_vm_rw_core, current_task, pid);
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:404: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
# handlers.c:409:     return vmcall_2(det_process_vm_rw_core, current_task, pid);
#APP
# 409 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, edi	# __p2, pid
	mov	edi, 10	#,
	call	vmcall	#
# handlers.c:410: }
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
# handlers.c:417:     long mm_flags = *(long *)((long)(mm) + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7728]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:419:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rdi+rax]	# *_5, *_5
	mov	eax, DWORD PTR hypercall_info[rip+7736]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_5, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L61	#,
# handlers.c:423:     long file = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7708]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:424:     if (file) {
	cmp	QWORD PTR [rax+rsi], 0	# *_14,
	jne	.L61	#,
# handlers.c:428:     long vm_flags = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7704]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:429:     if (!(vm_flags & VM_EXEC)) {
	test	BYTE PTR [rsi+rax], 4	# *_18,
	je	.L61	#,
	mov	r8, rsi	# vma, vma
	mov	r9, rdi	# mm, mm
# handlers.c:433:     vmcall_2(det___vma_link_rb, vma, mm);
	mov	edi, 11	#,
	call	vmcall	#
.L61:
# handlers.c:434: }
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
# handlers.c:442:     long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7708]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:443:     if (file) {
	cmp	QWORD PTR [rax+rdi], 0	# *_4,
	jne	.L70	#,
# handlers.c:447:     long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7700]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# mm, *_8
# handlers.c:448:     long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7728]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:450:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+r9]	# *_12, *_12
	mov	eax, DWORD PTR hypercall_info[rip+7736]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_12, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L70	#,
# handlers.c:454:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7704]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:456:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	mov	esi, DWORD PTR hypercall_info[rip+7724]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
# handlers.c:454:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	rdx, QWORD PTR [rax+rdi]	# vm_flags, *_20
	mov	rax, rdx	# _42, vm_flags
	and	eax, 4	# _42,
# handlers.c:456:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	bt	rdx, rsi	# vm_flags, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L72	#,
# handlers.c:456:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	test	rax, rax	# _42
	je	.L73	#,
	jmp	.L70	#
.L72:
# handlers.c:457:         || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {
	test	rax, rax	# _42
	je	.L70	#,
.L73:
	mov	r8, rdi	# vma, vma
# handlers.c:460:         vmcall_2(det_change_protection, vma, mm);
	mov	edi, 12	#,
	call	vmcall	#
.L70:
# handlers.c:462: }
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
# handlers.c:473:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	edx, DWORD PTR hypercall_info[rip+7704]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:470: {
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:470: {
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
# handlers.c:471:     *skip_call = 1;
	mov	QWORD PTR [rax], 1	# *skip_call_21(D),
# handlers.c:474:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rsi, QWORD PTR [rdx+rdi]	# *_4, *_4
	mov	edx, DWORD PTR hypercall_info[rip+7724]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rsi, rdx	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L84	#,
# handlers.c:478:     *saved_vma = vma;
	mov	rdx, QWORD PTR 48[rsp]	# saved_vma, saved_vma
	mov	QWORD PTR [rdx], rdi	# *saved_vma_25(D), vma
# handlers.c:479:     *next = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmNextOffset);
	mov	edx, DWORD PTR hypercall_info[rip+7712]	# hypercall_info.OsSpecificFields.Vma.VmNextOffset, hypercall_info.OsSpecificFields.Vma.VmNextOffset
	mov	rsi, QWORD PTR [rdx+rdi]	# _13, *_12
	mov	rdx, QWORD PTR 56[rsp]	# next, next
	mov	QWORD PTR [rdx], rsi	# *next_27(D), _13
# handlers.c:480:     *prev = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmPrevOffset);
	mov	edx, DWORD PTR hypercall_info[rip+7716]	# hypercall_info.OsSpecificFields.Vma.VmPrevOffset, hypercall_info.OsSpecificFields.Vma.VmPrevOffset
	mov	rsi, QWORD PTR [rdx+rdi]	# _18, *_17
	mov	rdx, QWORD PTR 64[rsp]	# prev, prev
	mov	QWORD PTR [rdx], rsi	# *prev_29(D), _18
# handlers.c:481:     *skip_call = 0;
	mov	QWORD PTR [rax], 0	# *skip_call_21(D),
.L84:
# handlers.c:484: }
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
# handlers.c:493:     long mm = *(long *)(saved_vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7700]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
# handlers.c:491: {
	mov	rcx, QWORD PTR 80[rsp]	# saved_vma, saved_vma
# handlers.c:493:     long mm = *(long *)(saved_vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	rbx, QWORD PTR [rax+rcx]	# mm, *_4
# handlers.c:495:     vmcall_4(det_vma_adjust, svma, mm, next, prev);
	mov	r8, rcx	# __p1, saved_vma
	mov	r9, rbx	# __p2, mm
	mov	r10, QWORD PTR 88[rsp]	# __p3, next
	mov	r11, QWORD PTR 96[rsp]	# __p4, prev
	mov	edi, 13	#,
	call	vmcall	#
# handlers.c:496:     vmcall_4(det___vma_adjust, svma, mm, next, prev);
	mov	r10, QWORD PTR 88[rsp]	# __p3, next
	mov	r11, QWORD PTR 96[rsp]	# __p4, prev
	mov	edi, 14	#,
	call	vmcall	#
# handlers.c:497: }
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
# handlers.c:504:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7704]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:505:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_4, *_4
	mov	eax, DWORD PTR hypercall_info[rip+7724]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L92	#,
	mov	rcx, rdi	# vma, vma
# handlers.c:509:     vmcall_2(det_vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
	mov	r8, rdi	# __p1, vma
	mov	eax, DWORD PTR hypercall_info[rip+7700]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# __p2, *_13
	mov	edi, 15	#,
	call	vmcall	#
# handlers.c:510:     vmcall_2(det___vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
	mov	eax, DWORD PTR hypercall_info[rip+7700]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rcx]	# __p2, *_19
	mov	edi, 16	#,
	call	vmcall	#
.L92:
# handlers.c:511: }
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
# handlers.c:518:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7704]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:519:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_4, *_4
	mov	eax, DWORD PTR hypercall_info[rip+7724]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L98	#,
	mov	r10, rsi	# address, address
# handlers.c:523:     vmcall_3(det_expand_downwards, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset), address);
	mov	r8, rdi	# __p1, vma
	mov	eax, DWORD PTR hypercall_info[rip+7700]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# __p2, *_13
	mov	edi, 17	#,
	call	vmcall	#
.L98:
# handlers.c:524: }
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
# handlers.c:532:         && sig != SIGILL
	cmp	edi, 11	# sig,
	ja	.L105	#,
# handlers.c:531:     if (sig != SIGQUIT
	mov	eax, 2520	# tmp100,
	bt	rax, rdi	# tmp100, sig
	jc	.L106	#,
.L105:
	mov	edx, ecx	# <retval>, sig
	jmp	.L104	#
.L106:
	mov	r8, rsi	# task, task
# handlers.c:541:     int new_sig = vmcall_3(det_complete_signal, task, sig, type);
	movsx	r9, edi	# __p2, sig
	mov	r10d, edx	# __p3, type
	mov	edi, 18	#,
	call	vmcall	#
	mov	edx, eax	# <retval>, _20
# handlers.c:542:     return new_sig ? new_sig : sig;
	test	eax, eax	# _20
	je	.L105	#,
.L104:
# handlers.c:543: }
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
# handlers.c:550:     vmcall_3(det_text_poke, addr, opcode, len);
	mov	r8, rdi	# __p1, addr
# handlers.c:549: {
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
# handlers.c:550:     vmcall_3(det_text_poke, addr, opcode, len);
	mov	r9, rsi	# __p2, opcode
	mov	r10, rdx	# __p3, len
	mov	edi, 19	#,
	call	vmcall	#
# handlers.c:551:     vmcall_3(det___text_poke, addr, opcode, len);
	mov	edi, 20	#,
	call	vmcall	#
# handlers.c:552: }
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
# handlers.c:559:     vmcall_3(det_ftrace_write, ip, val, size);
	movsx	r10, edx	# __p3, size
	mov	edi, 21	#,
	call	vmcall	#
# handlers.c:560: }
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
# handlers.c:567:     vmcall(det_panic);
	mov	edi, 22	#,
# handlers.c:566: {
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:567:     vmcall(det_panic);
	call	vmcall	#
# handlers.c:568: }
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
# handlers.c:575:     vmcall_2(det_arch_jump_label_transform, entry, type);
	mov	r9d, esi	# __p2, type
	mov	edi, 1	#,
	call	vmcall	#
# handlers.c:576: }
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
# handlers.c:584:     if ((gup_flags & 1) == 0) {
	test	r9b, 1	# gup_flags,
	je	.L123	#,
# handlers.c:583: {
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
# handlers.c:588:     vmcall_5(det___access_remote_vm, mm, addr, buf, len, gup_flags);
	mov	edi, 24	#,
	call	vmcall	#
# handlers.c:589: }
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
# handlers.c:596:     unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+7720]	# hypercall_info.OsSpecificFields.Vma.Rb, hypercall_info.OsSpecificFields.Vma.Rb
	sub	rdi, rax	# vma_vm_rb, hypercall_info.OsSpecificFields.Vma.Rb
# handlers.c:598:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7704]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:600:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_8, *_8
	mov	eax, DWORD PTR hypercall_info[rip+7724]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_8, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L126	#,
	mov	r8, rdi	# vma, vma_vm_rb
	mov	r9, rsi	# mm_mm_rb, mm_mm_rb
# handlers.c:604:     vmcall_2(det_do_munmap_rb_erase, vma, mm);
# handlers.c:597:     unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+7732]	# _3, hypercall_info.OsSpecificFields.Mm.Rb
	sub	r9, rax	# __p2, _3
# handlers.c:604:     vmcall_2(det_do_munmap_rb_erase, vma, mm);
	mov	edi, 26	#,
	call	vmcall	#
.L126:
# handlers.c:605: }
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
# handlers.c:612:     unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+7720]	# hypercall_info.OsSpecificFields.Vma.Rb, hypercall_info.OsSpecificFields.Vma.Rb
	sub	rdi, rax	# vma_vm_rb, hypercall_info.OsSpecificFields.Vma.Rb
# handlers.c:614:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7704]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:616:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_8, *_8
	mov	eax, DWORD PTR hypercall_info[rip+7724]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_8, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L132	#,
	mov	r8, rdi	# vma, vma_vm_rb
	mov	r9, rsi	# mm_mm_rb, mm_mm_rb
# handlers.c:620:     vmcall_2(det_vma_adjust_rb_erase, vma, mm);
# handlers.c:613:     unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+7732]	# _3, hypercall_info.OsSpecificFields.Mm.Rb
	sub	r9, rax	# __p2, _3
# handlers.c:620:     vmcall_2(det_vma_adjust_rb_erase, vma, mm);
	mov	edi, 27	#,
	call	vmcall	#
.L132:
# handlers.c:621: }
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
# handlers.c:628:     long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7708]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:629:     if (file) {
	cmp	QWORD PTR [rax+rdi], 0	# *_4,
	jne	.L138	#,
# handlers.c:633:     long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7700]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# mm, *_8
# handlers.c:634:     long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7728]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:636:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+r9]	# *_12, *_12
	mov	eax, DWORD PTR hypercall_info[rip+7736]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_12, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L138	#,
# handlers.c:640:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+7704]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:642:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	mov	esi, DWORD PTR hypercall_info[rip+7724]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
# handlers.c:640:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	rdx, QWORD PTR [rax+rdi]	# vm_flags, *_20
	mov	rax, rdx	# _41, vm_flags
	and	eax, 4	# _41,
# handlers.c:642:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	bt	rdx, rsi	# vm_flags, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L140	#,
# handlers.c:642:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	test	rax, rax	# _41
	je	.L141	#,
	jmp	.L138	#
.L140:
# handlers.c:643:         || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {
	test	rax, rax	# _41
	je	.L138	#,
.L141:
	mov	r8, rdi	# vma, vma
# handlers.c:646:         vmcall_2(det_mprotect_fixup_vma_wants_writenotify, vma, mm);
	mov	edi, 25	#,
	call	vmcall	#
.L138:
# handlers.c:648: }
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
# handlers.c:654:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:655:     *save_pathname=pathname;
	mov	rax, QWORD PTR 32[rsp]	# save_pathname, save_pathname
	mov	QWORD PTR [rax], rsi	# *save_pathname_4(D), pathname
# handlers.c:656: }
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
# handlers.c:662:     long save_rax = __read_reg("rax");
#APP
# 662 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:663:     vmcall_3(det_do_rmdir, current_task, save_pathname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 663 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_pathname
	mov	edi, 28	#,
	call	vmcall	#
# handlers.c:664: }
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
# handlers.c:670:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_5(D),
# handlers.c:671:     *save_option=option;
	mov	rax, QWORD PTR 48[rsp]	# save_option, save_option
	mov	BYTE PTR [rax], dil	# *save_option_8(D), option
# handlers.c:672:     *save_arg1=arg1;
	mov	rax, QWORD PTR 56[rsp]	# save_arg1, save_arg1
	mov	QWORD PTR [rax], rsi	# *save_arg1_11(D), arg1
# handlers.c:673:     *save_arg2=arg2;
	mov	rax, QWORD PTR 64[rsp]	# save_arg2, save_arg2
	mov	QWORD PTR [rax], rdx	# *save_arg2_14(D), arg2
# handlers.c:674: }
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
# handlers.c:680:     long x = __read_reg("rax");
#APP
# 680 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:681: 	vmcall_5(det_sys_sysfs,current_task,save_option,save_arg1,save_arg2,x);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 681 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_option
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_arg1
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_arg2
	mov	edi, 29	#,
	call	vmcall	#
# handlers.c:682: }
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
# handlers.c:688:     long save_rax = __read_reg("rax");
#APP
# 688 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:690:     vmcall_5(det_sys_read,current_task,save_fd, save_buf, save_count,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 690 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_buf
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_count
	mov	edi, 30	#,
	call	vmcall	#
# handlers.c:691: }
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
# handlers.c:697:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:698:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:699:     *save_buf=buf;
	mov	rax, QWORD PTR 56[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:700:     *save_count=count;
	mov	rax, QWORD PTR 64[rsp]	# save_count, save_count
	mov	DWORD PTR [rax], edx	# *save_count_10(D), count
# handlers.c:701: }
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
# handlers.c:707:     long save_rax = __read_reg("rax");
#APP
# 707 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:709:     vmcall_2(det_sys_getppid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 709 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 31	#,
	call	vmcall	#
# handlers.c:710: }
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
# handlers.c:716:     *skip_call=0;
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:717: }
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
# handlers.c:723:     long save_rax = __read_reg("rax");
#APP
# 723 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:725:     vmcall_3(det_sys_getsid,current_task,save_pid,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 725 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 56[rsp]	# __p2, save_pid
	mov	edi, 32	#,
	call	vmcall	#
# handlers.c:726: }
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
# handlers.c:732:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:733:     *save_pid=pid;
	mov	rax, QWORD PTR 32[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], edi	# *save_pid_4(D), pid
# handlers.c:734: }
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
# handlers.c:740:     long save_rax = __read_reg("rax");
#APP
# 740 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:742:     vmcall_2(det_sys_getuid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 742 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 33	#,
	call	vmcall	#
# handlers.c:743: }
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
.LFB140:
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
.LFE140:
	.size	pre_sys_getuid, .-pre_sys_getuid
	.align 16
	.globl	sys_geteuid
	.type	sys_geteuid, @function
sys_geteuid:
.LFB41:
	.cfi_startproc
# handlers.c:755: {
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
# handlers.c:756:     long save_rax = __read_reg("rax");
#APP
# 756 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:758:     vmcall_2(det_sys_geteuid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 758 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 34	#,
	call	vmcall	#
# handlers.c:759: }
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
.LFB142:
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
.LFE142:
	.size	pre_sys_geteuid, .-pre_sys_geteuid
	.align 16
	.globl	sys_shutdown
	.type	sys_shutdown, @function
sys_shutdown:
.LFB43:
	.cfi_startproc
# handlers.c:771: {
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
# handlers.c:772:     long save_rax = __read_reg("rax");
#APP
# 772 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:774:     vmcall_4(det_sys_shutdown,current_task,save_a,save_b,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 774 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 64[rsp]	# __p2, save_a
	movsx	r10, DWORD PTR 72[rsp]	# __p3, save_b
	mov	edi, 35	#,
	call	vmcall	#
# handlers.c:775: }
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
# handlers.c:781:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:782:     *save_a=a;
	mov	rax, QWORD PTR 40[rsp]	# save_a, save_a
	mov	DWORD PTR [rax], edi	# *save_a_4(D), a
# handlers.c:783:     *save_b=b;
	mov	rax, QWORD PTR 48[rsp]	# save_b, save_b
	mov	DWORD PTR [rax], esi	# *save_b_7(D), b
# handlers.c:784: }
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
# handlers.c:790:     long save_rax = __read_reg("rax");
#APP
# 790 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:792:     vmcall_3(det_do_sysinfo,current_task,save_a,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 792 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_a
	mov	edi, 36	#,
	call	vmcall	#
# handlers.c:793: }
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
# handlers.c:799:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:800:     *save_a=a;
	mov	rax, QWORD PTR 32[rsp]	# save_a, save_a
	mov	QWORD PTR [rax], rdi	# *save_a_4(D), a
# handlers.c:801: }
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
# handlers.c:807:     long save_rax = __read_reg("rax");
#APP
# 807 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:809:     vmcall_4(det_sys_capget,current_task,save_header,save_dataptr,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 809 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_header
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_dataptr
	mov	edi, 37	#,
	call	vmcall	#
# handlers.c:810: }
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
# handlers.c:816:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:817:     *save_header=header;
	mov	rax, QWORD PTR 40[rsp]	# save_header, save_header
	mov	QWORD PTR [rax], rdi	# *save_header_4(D), header
# handlers.c:818:     *save_dataptr=dataptr;
	mov	rax, QWORD PTR 48[rsp]	# save_dataptr, save_dataptr
	mov	QWORD PTR [rax], rsi	# *save_dataptr_7(D), dataptr
# handlers.c:819: }
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
# handlers.c:825:     long save_rax = __read_reg("rax");
#APP
# 825 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:827:     vmcall_4(det_sys_capset,current_task,save_header,save_data,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 827 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_header
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_data
	mov	edi, 38	#,
	call	vmcall	#
# handlers.c:828: }
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
.LFB152:
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
.LFE152:
	.size	pre_sys_capset, .-pre_sys_capset
	.align 16
	.globl	sys_statfs
	.type	sys_statfs, @function
sys_statfs:
.LFB51:
	.cfi_startproc
# handlers.c:842: {
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
# handlers.c:843:     long save_rax = __read_reg("rax");
#APP
# 843 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:845:     vmcall_4(det_sys_statfs,current_task,save_path,save_buf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 845 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_path
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_buf
	mov	edi, 39	#,
	call	vmcall	#
# handlers.c:846: }
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
# handlers.c:852:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:853:     *save_path=path;
	mov	rax, QWORD PTR 40[rsp]	# save_path, save_path
	mov	QWORD PTR [rax], rdi	# *save_path_4(D), path
# handlers.c:854:     *save_buf=buf;
	mov	rax, QWORD PTR 48[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:855: }
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
# handlers.c:861:     long save_rax = __read_reg("rax");
#APP
# 861 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:863:     vmcall_4(det_sys_fstatfs,current_task,save_fd,save_buf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 863 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_buf
	mov	edi, 40	#,
	call	vmcall	#
# handlers.c:864: }
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
# handlers.c:870:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:871:     *save_fd=fd;
	mov	rax, QWORD PTR 40[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:872:     *save_buf=buf;
	mov	rax, QWORD PTR 48[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:873: }
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
# handlers.c:879:     long save_rax = __read_reg("rax");
#APP
# 879 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:881:     vmcall_2(det_sys_setsid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 881 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 41	#,
	call	vmcall	#
# handlers.c:882: }
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
.LFB144:
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
.LFE144:
	.size	pre_sys_setsid, .-pre_sys_setsid
	.align 16
	.globl	sys_seccomp
	.type	sys_seccomp, @function
sys_seccomp:
.LFB57:
	.cfi_startproc
# handlers.c:894: {
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
# handlers.c:895:     long save_rax = __read_reg("rax");
#APP
# 895 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:897:     vmcall_5(det_sys_seccomp,current_task,save_op,save_flags,save_uargs,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 897 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_op
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_flags
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_uargs
	mov	edi, 42	#,
	call	vmcall	#
# handlers.c:898: }
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
# handlers.c:904:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:905:     *save_op=op;
	mov	rax, QWORD PTR 48[rsp]	# save_op, save_op
	mov	DWORD PTR [rax], edi	# *save_op_4(D), op
# handlers.c:906:     *save_flags=flags;
	mov	rax, QWORD PTR 56[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], esi	# *save_flags_7(D), flags
# handlers.c:907:     *save_uargs=uargs;
	mov	rax, QWORD PTR 64[rsp]	# save_uargs, save_uargs
	mov	QWORD PTR [rax], rdx	# *save_uargs_10(D), uargs
# handlers.c:908: }
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
# handlers.c:914:     long save_rax = __read_reg("rax");
#APP
# 914 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:916:     vmcall_5(det_sys_tgkill,current_task,save_tgid,save_pid,save_sig,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 916 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_tgid
	movsx	r10, DWORD PTR 80[rsp]	# __p3, save_pid
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_sig
	mov	edi, 43	#,
	call	vmcall	#
# handlers.c:917: }
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
# handlers.c:923:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:924:     *save_tgid=tgid;
	mov	rax, QWORD PTR 48[rsp]	# save_tgid, save_tgid
	mov	DWORD PTR [rax], edi	# *save_tgid_4(D), tgid
# handlers.c:925:     *save_pid=pid;
	mov	rax, QWORD PTR 56[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], esi	# *save_pid_7(D), pid
# handlers.c:926:     *save_sig=sig;
	mov	rax, QWORD PTR 64[rsp]	# save_sig, save_sig
	mov	DWORD PTR [rax], edx	# *save_sig_10(D), sig
# handlers.c:927: }
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
# handlers.c:933:     long save_rax = __read_reg("rax");
#APP
# 933 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:935:     vmcall_4(det_sys_tkill,current_task,save_pid,save_sig,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 935 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 64[rsp]	# __p2, save_pid
	movsx	r10, DWORD PTR 72[rsp]	# __p3, save_sig
	mov	edi, 44	#,
	call	vmcall	#
# handlers.c:936: }
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
.LFB150:
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
.LFE150:
	.size	pre_sys_tkill, .-pre_sys_tkill
	.align 16
	.globl	sys_ustat
	.type	sys_ustat, @function
sys_ustat:
.LFB63:
	.cfi_startproc
# handlers.c:950: {
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
# handlers.c:951:     long save_rax = __read_reg("rax");
#APP
# 951 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:953:     vmcall_4(det_sys_ustat,current_task,save_dev,save_ubuf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 953 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_dev
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_ubuf
	mov	edi, 45	#,
	call	vmcall	#
# handlers.c:954: }
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
.LFB160:
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
.LFE160:
	.size	pre_sys_ustat, .-pre_sys_ustat
	.align 16
	.globl	sys_poll
	.type	sys_poll, @function
sys_poll:
.LFB65:
	.cfi_startproc
# handlers.c:968: {
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
# handlers.c:969:     long save_rax = __read_reg("rax");
#APP
# 969 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:971:     vmcall_5(det_sys_poll,current_task,save_ufds,save_nfds,save_timeout,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 971 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_ufds
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_nfds
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_timeout
	mov	edi, 46	#,
	call	vmcall	#
# handlers.c:972: }
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
# handlers.c:978:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_3(D),
# handlers.c:979:     *save_ufds=ufds;
	mov	rax, QWORD PTR 40[rsp]	# save_ufds, save_ufds
	mov	QWORD PTR [rax], rdi	# *save_ufds_5(D), ufds
# handlers.c:981:     *save_nfds=timeout;
	mov	rax, QWORD PTR 48[rsp]	# save_nfds, save_nfds
	mov	DWORD PTR [rax], edx	# *save_nfds_8(D), timeout
# handlers.c:982: }
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
# handlers.c:988:     long save_rax = __read_reg("rax");
#APP
# 988 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:990:     vmcall_5(det_sys_sigprocmask,current_task,save_how,save_set,save_oset,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 990 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_how
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_set
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_oset
	mov	edi, 47	#,
	call	vmcall	#
# handlers.c:991: }
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
# handlers.c:998:     *save_how=how;
	movsx	rdi, edi	# how, how
# handlers.c:996: {
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:997:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
# handlers.c:998:     *save_how=how;
	mov	rax, QWORD PTR 48[rsp]	# save_how, save_how
	mov	QWORD PTR [rax], rdi	# *save_how_11(D), how
# handlers.c:999:     *save_set=set;
	mov	rax, QWORD PTR 56[rsp]	# save_set, save_set
	mov	DWORD PTR [rax], esi	# *save_set_14(D), set
# handlers.c:1000:     *save_oset=oset;
	mov	rax, QWORD PTR 64[rsp]	# save_oset, save_oset
	mov	DWORD PTR [rax], edx	# *save_oset_17(D), oset
# handlers.c:1001: }
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
# handlers.c:1007:     long save_rax = __read_reg("rax");
#APP
# 1007 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1009:     vmcall_4(det_sys_getrlimit,current_task,save_resource,save_rlim,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1009 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_resource
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_rlim
	mov	edi, 48	#,
	call	vmcall	#
# handlers.c:1010: }
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
.LFB162:
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
.LFE162:
	.size	pre_sys_getrlimit, .-pre_sys_getrlimit
	.align 16
	.globl	sys_umask
	.type	sys_umask, @function
sys_umask:
.LFB71:
	.cfi_startproc
# handlers.c:1024: {
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
# handlers.c:1025:     long save_rax = __read_reg("rax");
#APP
# 1025 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1027:     vmcall_3(det_sys_getrlimit,current_task,save_mask,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1027 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 56[rsp]	# __p2, save_mask
	mov	edi, 48	#,
	call	vmcall	#
# handlers.c:1028: }
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
.LFB146:
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
.LFE146:
	.size	pre_sys_umask, .-pre_sys_umask
	.align 16
	.globl	sys_ioctl
	.type	sys_ioctl, @function
sys_ioctl:
.LFB73:
	.cfi_startproc
# handlers.c:1042: {
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
# handlers.c:1043:     long save_rax = __read_reg("rax");
#APP
# 1043 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1045:     vmcall_5(det_sys_ioctl,current_task,save_fd,save_cmd,save_arg,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1045 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_cmd
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_arg
	mov	edi, 50	#,
	call	vmcall	#
# handlers.c:1046: }
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
# handlers.c:1052:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1053:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:1054:     *save_cmd=cmd;
	mov	rax, QWORD PTR 56[rsp]	# save_cmd, save_cmd
	mov	DWORD PTR [rax], esi	# *save_cmd_7(D), cmd
# handlers.c:1055:     *save_arg=arg;
	mov	rax, QWORD PTR 64[rsp]	# save_arg, save_arg
	mov	QWORD PTR [rax], rdx	# *save_arg_10(D), arg
# handlers.c:1056: }
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
# handlers.c:1062:     long save_rax = __read_reg("rax");
#APP
# 1062 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1064:     vmcall_3(det_sys_brk,current_task,save_brk,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1064 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_brk
	mov	edi, 51	#,
	call	vmcall	#
# handlers.c:1065: }
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
# handlers.c:1071:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1072:     *save_brk=brk;
	mov	rax, QWORD PTR 32[rsp]	# save_brk, save_brk
	mov	QWORD PTR [rax], rdi	# *save_brk_4(D), brk
# handlers.c:1073: }
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
# handlers.c:1079:     long save_rax = __read_reg("rax");
#APP
# 1079 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1081:     vmcall_4(det_sys_gettimeofday,current_task,save_tv,save_tz,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1081 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_tv
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_tz
	mov	edi, 52	#,
	call	vmcall	#
# handlers.c:1082: }
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
.LFE154:
	.size	pre_sys_gettimeofday, .-pre_sys_gettimeofday
	.align 16
	.globl	sys_setresuid
	.type	sys_setresuid, @function
sys_setresuid:
.LFB79:
	.cfi_startproc
# handlers.c:1096: {
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
# handlers.c:1097:     long save_rax = __read_reg("rax");
#APP
# 1097 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1099:     vmcall_5(det_sys_setresuid,current_task,save_ruid,save_euid,save_suid,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1099 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_ruid
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_euid
	mov	r11d, DWORD PTR 88[rsp]	# __p4, save_suid
	mov	edi, 53	#,
	call	vmcall	#
# handlers.c:1100: }
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
# handlers.c:1106:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1107:     *save_ruid=ruid;
	mov	rax, QWORD PTR 48[rsp]	# save_ruid, save_ruid
	mov	DWORD PTR [rax], edi	# *save_ruid_4(D), ruid
# handlers.c:1108:     *save_euid=euid;
	mov	rax, QWORD PTR 56[rsp]	# save_euid, save_euid
	mov	DWORD PTR [rax], esi	# *save_euid_7(D), euid
# handlers.c:1109:     *save_suid=suid;
	mov	rax, QWORD PTR 64[rsp]	# save_suid, save_suid
	mov	DWORD PTR [rax], edx	# *save_suid_10(D), suid
# handlers.c:1110: }
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
# handlers.c:1115:     long save_rax = __read_reg("rax");
#APP
# 1115 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1117:     vmcall_3(det_sys_chdir,current_task,save_filename,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1117 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_filename
	mov	edi, 54	#,
	call	vmcall	#
# handlers.c:1118: }
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
# handlers.c:1124:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1125:     *save_filename=filename;
	mov	rax, QWORD PTR 32[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_4(D), filename
# handlers.c:1126: }
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
# handlers.c:1132:     long save_rax = __read_reg("rax");
#APP
# 1132 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1134:     vmcall_3(det_sys_alarm,current_task,save_seconds,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1134 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 56[rsp]	# __p2, save_seconds
	mov	edi, 55	#,
	call	vmcall	#
# handlers.c:1135: }
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
# handlers.c:1141:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1142:     *save_seconds=seconds;
	mov	rax, QWORD PTR 32[rsp]	# save_seconds, save_seconds
	mov	DWORD PTR [rax], edi	# *save_seconds_4(D), seconds
# handlers.c:1143: }
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
# handlers.c:1149:     long save_rax = __read_reg("rax");
#APP
# 1149 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1151:     vmcall_6(det_sys_ptrace,current_task,save_request,save_pid,save_addr,save_data,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1151 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 80[rsp]	# __p2, save_request
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_pid
	mov	r11, QWORD PTR 96[rsp]	# __p4, save_addr
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_data
	mov	edi, 56	#,
	call	vmcall	#
# handlers.c:1152: }
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
# handlers.c:1158:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1159:     *save_request=request;
	mov	rax, QWORD PTR 56[rsp]	# save_request, save_request
	mov	QWORD PTR [rax], rdi	# *save_request_4(D), request
# handlers.c:1160:     *save_pid=pid;
	mov	rax, QWORD PTR 64[rsp]	# save_pid, save_pid
	mov	QWORD PTR [rax], rsi	# *save_pid_7(D), pid
# handlers.c:1161:     *save_addr=addr;
	mov	rax, QWORD PTR 72[rsp]	# save_addr, save_addr
	mov	QWORD PTR [rax], rdx	# *save_addr_10(D), addr
# handlers.c:1162:     *save_data=data;
	mov	rax, QWORD PTR 80[rsp]	# save_data, save_data
	mov	QWORD PTR [rax], rcx	# *save_data_13(D), data
# handlers.c:1163: }
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
# handlers.c:1169:     long save_rax = __read_reg("rax");
#APP
# 1169 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1171:     vmcall_3(det_sys_time,current_task,save_tloc,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1171 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_tloc
	mov	edi, 57	#,
	call	vmcall	#
# handlers.c:1172: }
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
# handlers.c:1178:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1179:     *save_tloc=tloc;
	mov	rax, QWORD PTR 32[rsp]	# save_tloc, save_tloc
	mov	QWORD PTR [rax], rdi	# *save_tloc_4(D), tloc
# handlers.c:1180: }
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
# handlers.c:1186:     long save_rax = __read_reg("rax");
#APP
# 1186 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1188:     vmcall_3(det_sys_chroot,current_task,save_filename,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1188 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_filename
	mov	edi, 58	#,
	call	vmcall	#
# handlers.c:1189: }
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
.LFB136:
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
.LFE136:
	.size	pre_sys_chroot, .-pre_sys_chroot
	.align 16
	.globl	sys_kill
	.type	sys_kill, @function
sys_kill:
.LFB91:
	.cfi_startproc
# handlers.c:1202: {
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
# handlers.c:1203:     long save_rax = __read_reg("rax");
#APP
# 1203 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1205:     vmcall_4(det_sys_kill,current_task,save_pid,save_sig,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1205 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_pid
	movsx	r10, DWORD PTR 72[rsp]	# __p3, save_sig
	mov	edi, 59	#,
	call	vmcall	#
# handlers.c:1206: }
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
# handlers.c:1212:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1213:     *save_pid=pid;
	mov	rax, QWORD PTR 40[rsp]	# save_pid, save_pid
	mov	QWORD PTR [rax], rdi	# *save_pid_4(D), pid
# handlers.c:1214:     *save_sig=sig;
	mov	rax, QWORD PTR 48[rsp]	# save_sig, save_sig
	mov	DWORD PTR [rax], esi	# *save_sig_7(D), sig
# handlers.c:1215: }
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
# handlers.c:1221:     long save_rax = __read_reg("rax");
#APP
# 1221 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1223:     vmcall_3(det_sys_fchdir,current_task,save_fd,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1223 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 56[rsp]	# __p2, save_fd
	mov	edi, 60	#,
	call	vmcall	#
# handlers.c:1224: }
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
.LFB148:
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
.LFE148:
	.size	pre_sys_fchdir, .-pre_sys_fchdir
	.align 16
	.globl	sys_chmod
	.type	sys_chmod, @function
sys_chmod:
.LFB95:
	.cfi_startproc
# handlers.c:1237: {
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
# handlers.c:1238:     long save_rax = __read_reg("rax");
#APP
# 1238 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1240:     vmcall_4(det_sys_chmod,current_task,save_filename,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1240 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_filename
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 61	#,
	call	vmcall	#
# handlers.c:1241: }
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
# handlers.c:1247:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1248:     *save_filename=filename;
	mov	rax, QWORD PTR 40[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_4(D), filename
# handlers.c:1249:     *save_mode=mode;
	mov	rax, QWORD PTR 48[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rsi	# *save_mode_7(D), mode
# handlers.c:1250: }
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
# handlers.c:1256:     long save_rax = __read_reg("rax");
#APP
# 1256 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1258:     vmcall_5(det_sys_chown,current_task,save_filename,save_user,save_group,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1258 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_filename
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_user
	mov	r11d, DWORD PTR 88[rsp]	# __p4, save_group
	mov	edi, 62	#,
	call	vmcall	#
# handlers.c:1259: }
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
# handlers.c:1265:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1266:     *save_filename=filename;
	mov	rax, QWORD PTR 48[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rdi	# *save_filename_4(D), filename
# handlers.c:1267:     *save_user=user;
	mov	rax, QWORD PTR 56[rsp]	# save_user, save_user
	mov	DWORD PTR [rax], esi	# *save_user_7(D), user
# handlers.c:1268:     *save_group=group;
	mov	rax, QWORD PTR 64[rsp]	# save_group, save_group
	mov	DWORD PTR [rax], edx	# *save_group_10(D), group
# handlers.c:1269: }
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
# handlers.c:1274:     long save_rax = __read_reg("rax");
#APP
# 1274 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1276:     vmcall_5(det_sys_fchmodat,current_task,save_dfd,save_filename,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1276 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_dfd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_filename
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_mode
	mov	edi, 63	#,
	call	vmcall	#
# handlers.c:1277: }
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
# handlers.c:1283:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1284:     *save_dfd=dfd;
	mov	rax, QWORD PTR 48[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_4(D), dfd
# handlers.c:1285:     *save_filename=filename;
	mov	rax, QWORD PTR 56[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rsi	# *save_filename_7(D), filename
# handlers.c:1286:     *save_mode=mode;
	mov	rax, QWORD PTR 64[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rdx	# *save_mode_10(D), mode
# handlers.c:1287: }
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
# handlers.c:1292:     long save_rax = __read_reg("rax");
#APP
# 1292 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1294:     vmcall_4(det_sys_fchmod,current_task,save_fd,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1294 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 64	#,
	call	vmcall	#
# handlers.c:1295: }
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
# handlers.c:1301:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1302:     *save_fd=fd;
	mov	rax, QWORD PTR 40[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:1303:     *save_mode=mode;
	mov	rax, QWORD PTR 48[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rsi	# *save_mode_7(D), mode
# handlers.c:1304: }
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
# handlers.c:1310:     long save_rax = __read_reg("rax");
#APP
# 1310 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1312:     vmcall_5(det_sys_fchown,current_task,save_fd,save_user,save_group,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1312 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_user
	mov	r11d, DWORD PTR 88[rsp]	# __p4, save_group
	mov	edi, 65	#,
	call	vmcall	#
# handlers.c:1313: }
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
.LFB164:
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
.LFE164:
	.size	pre_sys_fchown, .-pre_sys_fchown
	.align 16
	.globl	sys_fchownat
	.type	sys_fchownat, @function
sys_fchownat:
.LFB105:
	.cfi_startproc
# handlers.c:1328: {
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
# handlers.c:1329:     long save_rax = __read_reg("rax");
#APP
# 1329 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:1331:     vmcall_7(det_sys_fchownat,current_task,save_dfd,save_filename,save_user,save_group,save_flag,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1331 "handlers.c" 1
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
# handlers.c:1332: }
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
# handlers.c:1338:     *skip_call=0;
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1339:     *save_dfd=dfd;
	mov	rax, QWORD PTR 64[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_4(D), dfd
# handlers.c:1340:     *save_filename=filename;
	mov	rax, QWORD PTR 72[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rsi	# *save_filename_7(D), filename
# handlers.c:1341:     *save_user=user;
	mov	rax, QWORD PTR 80[rsp]	# save_user, save_user
	mov	DWORD PTR [rax], edx	# *save_user_10(D), user
# handlers.c:1342:     *save_group=group;
	mov	rax, QWORD PTR 88[rsp]	# save_group, save_group
	mov	DWORD PTR [rax], ecx	# *save_group_13(D), group
# handlers.c:1343:     *save_flag=flag;
	mov	rax, QWORD PTR 96[rsp]	# save_flag, save_flag
	mov	DWORD PTR [rax], r8d	# *save_flag_16(D), flag
# handlers.c:1344: }
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
# handlers.c:1350:     long save_rax = __read_reg("rax");
#APP
# 1350 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1352:     vmcall_4(det_sys_rename,current_task,save_oldname,save_newname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1352 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_oldname
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_newname
	mov	edi, 67	#,
	call	vmcall	#
# handlers.c:1353: }
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
# handlers.c:1359:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1360:     *save_oldname=oldname;
	mov	rax, QWORD PTR 40[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rdi	# *save_oldname_4(D), oldname
# handlers.c:1361:     *save_newname=newname;
	mov	rax, QWORD PTR 48[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rsi	# *save_newname_7(D), newname
# handlers.c:1362: }
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
# handlers.c:1368:     long save_rax = __read_reg("rax");
#APP
# 1368 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:1370:     vmcall_7(det_sys_renameat2,current_task,save_olddfd,save_oldname,save_newdfd,save_newname,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1370 "handlers.c" 1
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
# handlers.c:1371: }
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
# handlers.c:1377:     *skip_call=0;
	mov	rax, QWORD PTR 56[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1378:     *save_olddfd=olddfd;
	mov	rax, QWORD PTR 64[rsp]	# save_olddfd, save_olddfd
	mov	DWORD PTR [rax], edi	# *save_olddfd_4(D), olddfd
# handlers.c:1379:     *save_oldname=oldname;
	mov	rax, QWORD PTR 72[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rsi	# *save_oldname_7(D), oldname
# handlers.c:1380:     *save_newdfd=newdfd;
	mov	rax, QWORD PTR 80[rsp]	# save_newdfd, save_newdfd
	mov	DWORD PTR [rax], edx	# *save_newdfd_10(D), newdfd
# handlers.c:1381:     *save_newname=newname;
	mov	rax, QWORD PTR 88[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rcx	# *save_newname_13(D), newname
# handlers.c:1382:     *save_flags=flags;
	mov	rax, QWORD PTR 96[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], r8d	# *save_flags_16(D), flags
# handlers.c:1383: }
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
# handlers.c:1389:     long save_rax = __read_reg("rax");
#APP
# 1389 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1391:     vmcall_6(det_sys_renameat,current_task,save_olddfd,save_oldname,save_newdfd,save_newname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1391 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 80[rsp]	# __p2, save_olddfd
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_oldname
	movsx	r11, DWORD PTR 96[rsp]	# __p4, save_newdfd
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_newname
	mov	edi, 69	#,
	call	vmcall	#
# handlers.c:1392: }
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
# handlers.c:1398:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1399:     *save_olddfd=olddfd;
	mov	rax, QWORD PTR 56[rsp]	# save_olddfd, save_olddfd
	mov	DWORD PTR [rax], edi	# *save_olddfd_4(D), olddfd
# handlers.c:1400:     *save_oldname=oldname;
	mov	rax, QWORD PTR 64[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rsi	# *save_oldname_7(D), oldname
# handlers.c:1401:     *save_newdfd=newdfd;
	mov	rax, QWORD PTR 72[rsp]	# save_newdfd, save_newdfd
	mov	DWORD PTR [rax], edx	# *save_newdfd_10(D), newdfd
# handlers.c:1402:     *save_newname=newname;
	mov	rax, QWORD PTR 80[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rcx	# *save_newname_13(D), newname
# handlers.c:1403: }
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
# handlers.c:1409:     long save_rax = __read_reg("rax");
#APP
# 1409 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1411:     vmcall_4(det_sys_mkdir,current_task,save_pathname,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1411 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_pathname
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 70	#,
	call	vmcall	#
# handlers.c:1412: }
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
.LFB166:
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
.LFE166:
	.size	pre_sys_mkdir, .-pre_sys_mkdir
	.align 16
	.globl	sys_creat
	.type	sys_creat, @function
sys_creat:
.LFB115:
	.cfi_startproc
# handlers.c:1426: {
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
# handlers.c:1427:     long save_rax = __read_reg("rax");
#APP
# 1427 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1429:     vmcall_4(det_sys_creat,current_task,save_pathname,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1429 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_pathname
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 71	#,
	call	vmcall	#
# handlers.c:1430: }
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
.LFB168:
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
.LFE168:
	.size	pre_sys_creat, .-pre_sys_creat
	.align 16
	.globl	sys_openat
	.type	sys_openat, @function
sys_openat:
.LFB117:
	.cfi_startproc
# handlers.c:1444: {
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
# handlers.c:1445:     long save_rax = __read_reg("rax");
#APP
# 1445 "handlers.c" 1
	mov r13, rax	# val
	
# 0 "" 2
# handlers.c:1447:     vmcall_6(det_sys_openat,current_task,save_dfd,save_filename,save_flags,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1447 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 80[rsp]	# __p2, save_dfd
	mov	r10, QWORD PTR 88[rsp]	# __p3, save_filename
	movsx	r11, DWORD PTR 96[rsp]	# __p4, save_flags
	mov	r12, QWORD PTR 104[rsp]	# __p5, save_mode
	mov	edi, 72	#,
	call	vmcall	#
# handlers.c:1448: }
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
# handlers.c:1454:     *skip_call=0;
	mov	rax, QWORD PTR 48[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1455:     *save_dfd=dfd;
	mov	rax, QWORD PTR 56[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_4(D), dfd
# handlers.c:1456:     *save_filename=filename;
	mov	rax, QWORD PTR 64[rsp]	# save_filename, save_filename
	mov	QWORD PTR [rax], rsi	# *save_filename_7(D), filename
# handlers.c:1457:     *save_flags=flags;
	mov	rax, QWORD PTR 72[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], edx	# *save_flags_10(D), flags
# handlers.c:1458:     *save_mode=mode;
	mov	rax, QWORD PTR 80[rsp]	# save_mode, save_mode
	mov	QWORD PTR [rax], rcx	# *save_mode_13(D), mode
# handlers.c:1459: }
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
# handlers.c:1465:     long save_rax = __read_reg("rax");
#APP
# 1465 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1467:     vmcall_4(det_sys_link,current_task,save_oldname,save_newname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1467 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_oldname
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_newname
	mov	edi, 73	#,
	call	vmcall	#
# handlers.c:1468: }
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
.LFB156:
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
.LFE156:
	.size	pre_sys_link, .-pre_sys_link
	.align 16
	.globl	sys_unlink
	.type	sys_unlink, @function
sys_unlink:
.LFB121:
	.cfi_startproc
# handlers.c:1482: {
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
# handlers.c:1483:     long save_rax = __read_reg("rax");
#APP
# 1483 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:1485:     vmcall_3(det_sys_unlink,current_task,save_pathname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1485 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_pathname
	mov	edi, 74	#,
	call	vmcall	#
# handlers.c:1486: }
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
.LFB138:
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
.LFE138:
	.size	pre_sys_unlink, .-pre_sys_unlink
	.align 16
	.globl	sys_unlinkat
	.type	sys_unlinkat, @function
sys_unlinkat:
.LFB123:
	.cfi_startproc
# handlers.c:1499: {
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
# handlers.c:1500:     long save_rax = __read_reg("rax");
#APP
# 1500 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1502:     vmcall_5(det_sys_unlinkat,current_task,save_dfd,save_pathname,save_flag,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1502 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_dfd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_pathname
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_flag
	mov	edi, 75	#,
	call	vmcall	#
# handlers.c:1503: }
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
# handlers.c:1509:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1510:     *save_dfd=dfd;
	mov	rax, QWORD PTR 48[rsp]	# save_dfd, save_dfd
	mov	DWORD PTR [rax], edi	# *save_dfd_4(D), dfd
# handlers.c:1511:     *save_pathname=pathname;
	mov	rax, QWORD PTR 56[rsp]	# save_pathname, save_pathname
	mov	QWORD PTR [rax], rsi	# *save_pathname_7(D), pathname
# handlers.c:1512:     *save_flag=flag;
	mov	rax, QWORD PTR 64[rsp]	# save_flag, save_flag
	mov	DWORD PTR [rax], edx	# *save_flag_10(D), flag
# handlers.c:1513: }
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
# handlers.c:1519:     long save_rax = __read_reg("rax");
#APP
# 1519 "handlers.c" 1
	mov r14, rax	# val
	
# 0 "" 2
# handlers.c:1521:     vmcall_7(det_sys_linkat,current_task,save_olddfd,save_oldname,save_newdfd,save_newname,save_flags,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1521 "handlers.c" 1
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
# handlers.c:1522: }
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
.LFB172:
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
.LFE172:
	.size	pre_sys_linkat, .-pre_sys_linkat
	.align 16
	.globl	sys_symlinkat
	.type	sys_symlinkat, @function
sys_symlinkat:
.LFB127:
	.cfi_startproc
# handlers.c:1539: {
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
# handlers.c:1540:     long save_rax = __read_reg("rax");
#APP
# 1540 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:1542:     vmcall_5(det_sys_symlinkat,current_task,save_oldname,save_newdfd,save_newname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1542 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_oldname
	movsx	r10, DWORD PTR 80[rsp]	# __p3, save_newdfd
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_newname
	mov	edi, 78	#,
	call	vmcall	#
# handlers.c:1543: }
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
# handlers.c:1549:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:1550:     *save_oldname=oldname;
	mov	rax, QWORD PTR 48[rsp]	# save_oldname, save_oldname
	mov	QWORD PTR [rax], rdi	# *save_oldname_4(D), oldname
# handlers.c:1551:     *save_newdfd=newdfd;
	mov	rax, QWORD PTR 56[rsp]	# save_newdfd, save_newdfd
	mov	DWORD PTR [rax], esi	# *save_newdfd_7(D), newdfd
# handlers.c:1552:     *save_newname=newname;
	mov	rax, QWORD PTR 64[rsp]	# save_newname, save_newname
	mov	QWORD PTR [rax], rdx	# *save_newname_10(D), newname
# handlers.c:1553: }
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
# handlers.c:1559:     long save_rax = __read_reg("rax");
#APP
# 1559 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1561:     vmcall_4(det_sys_symlink,current_task,save_old,save_new,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1561 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_old
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_new
	mov	edi, 77	#,
	call	vmcall	#
# handlers.c:1562: }
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
.LFB158:
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
.LFE158:
	.size	pre_sys_symlink, .-pre_sys_symlink
	.align 16
	.globl	sys_access
	.type	sys_access, @function
sys_access:
.LFB131:
	.cfi_startproc
# handlers.c:1576: {
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
# handlers.c:1577:     long save_rax = __read_reg("rax");
#APP
# 1577 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:1579:     vmcall_4(det_sys_access,current_task,save_filename,save_mode,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+7776]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 1579 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_filename
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_mode
	mov	edi, 79	#,
	call	vmcall	#
# handlers.c:1580: }
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
.LFB170:
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
.LFE170:
	.size	pre_sys_access, .-pre_sys_access
	.globl	__asm_defines
	.type	__asm_defines, @function
__asm_defines:
.LFB133:
	.cfi_startproc
# handlers.c:1593:     def_detour_asm_vars(commit_creds);
#APP
# 1593 "handlers.c" 1
	#define commit_creds_jmp 96	#
# 0 "" 2
# handlers.c:1594:     def_detour_asm_vars(arch_jump_label_transform);
# 1594 "handlers.c" 1
	#define arch_jump_label_transform_jmp 192	#
# 0 "" 2
# handlers.c:1595:     def_detour_asm_vars(module_param_sysfs_setup);
# 1595 "handlers.c" 1
	#define module_param_sysfs_setup_jmp 288	#
# 0 "" 2
# handlers.c:1596:     def_detour_asm_vars(module_param_sysfs_remove);
# 1596 "handlers.c" 1
	#define module_param_sysfs_remove_jmp 384	#
# 0 "" 2
# handlers.c:1597:     def_detour_asm_vars(wake_up_new_task);
# 1597 "handlers.c" 1
	#define wake_up_new_task_jmp 480	#
# 0 "" 2
# handlers.c:1598:     def_detour_asm_vars(flush_old_exec);
# 1598 "handlers.c" 1
	#define flush_old_exec_jmp 576	#
# 0 "" 2
# handlers.c:1599:     def_detour_asm_vars(begin_new_exec);
# 1599 "handlers.c" 1
	#define begin_new_exec_jmp 672	#
# 0 "" 2
# handlers.c:1600:     def_detour_asm_vars(do_exit);
# 1600 "handlers.c" 1
	#define do_exit_jmp 768	#
# 0 "" 2
# handlers.c:1601:     def_detour_asm_vars(arch_ptrace);
# 1601 "handlers.c" 1
	#define arch_ptrace_jmp 864	#
# 0 "" 2
# handlers.c:1602:     def_detour_asm_vars(compat_arch_ptrace);
# 1602 "handlers.c" 1
	#define compat_arch_ptrace_jmp 960	#
# 0 "" 2
# handlers.c:1603:     def_detour_asm_vars(process_vm_rw_core);
# 1603 "handlers.c" 1
	#define process_vm_rw_core_jmp 1056	#
# 0 "" 2
# handlers.c:1604:     def_detour_asm_vars(__vma_link_rb);
# 1604 "handlers.c" 1
	#define __vma_link_rb_jmp 1152	#
# 0 "" 2
# handlers.c:1605:     def_detour_asm_vars(change_protection);
# 1605 "handlers.c" 1
	#define change_protection_jmp 1248	#
# 0 "" 2
# handlers.c:1606:     def_detour_asm_vars(vma_adjust);
# 1606 "handlers.c" 1
	#define vma_adjust_jmp 1344	#
# 0 "" 2
# handlers.c:1607:     def_detour_asm_vars(__vma_adjust);
# 1607 "handlers.c" 1
	#define __vma_adjust_jmp 1440	#
# 0 "" 2
# handlers.c:1608:     def_detour_asm_vars(vma_rb_erase);
# 1608 "handlers.c" 1
	#define vma_rb_erase_jmp 1536	#
# 0 "" 2
# handlers.c:1609:     def_detour_asm_vars(__vma_rb_erase);
# 1609 "handlers.c" 1
	#define __vma_rb_erase_jmp 1632	#
# 0 "" 2
# handlers.c:1610:     def_detour_asm_vars(expand_downwards);
# 1610 "handlers.c" 1
	#define expand_downwards_jmp 1728	#
# 0 "" 2
# handlers.c:1611:     def_detour_asm_vars(complete_signal);
# 1611 "handlers.c" 1
	#define complete_signal_jmp 1824	#
# 0 "" 2
# handlers.c:1612:     def_detour_asm_vars(text_poke);
# 1612 "handlers.c" 1
	#define text_poke_jmp 1920	#
# 0 "" 2
# handlers.c:1613:     def_detour_asm_vars(__text_poke);
# 1613 "handlers.c" 1
	#define __text_poke_jmp 2016	#
# 0 "" 2
# handlers.c:1614:     def_detour_asm_vars(ftrace_write);
# 1614 "handlers.c" 1
	#define ftrace_write_jmp 2112	#
# 0 "" 2
# handlers.c:1615:     def_detour_asm_vars(panic);
# 1615 "handlers.c" 1
	#define panic_jmp 2208	#
# 0 "" 2
# handlers.c:1616:     def_detour_asm_vars(crash_kexec);
# 1616 "handlers.c" 1
	#define crash_kexec_jmp 2304	#
# 0 "" 2
# handlers.c:1617:     def_detour_asm_vars(__access_remote_vm);
# 1617 "handlers.c" 1
	#define __access_remote_vm_jmp 2400	#
# 0 "" 2
# handlers.c:1619:     def_detour_hijack_asm_vars(mprotect_fixup, vma_wants_writenotify);
# 1619 "handlers.c" 1
	#define mprotect_fixup_vma_wants_writenotify_jmp 2496	#
# 0 "" 2
# handlers.c:1620:     def_detour_hijack_asm_vars(do_munmap, rb_erase);
# 1620 "handlers.c" 1
	#define do_munmap_rb_erase_jmp 2592	#
# 0 "" 2
# handlers.c:1621:     def_detour_hijack_asm_vars(vma_adjust, rb_erase);
# 1621 "handlers.c" 1
	#define vma_adjust_rb_erase_jmp 2688	#
# 0 "" 2
# handlers.c:1623:     def_detour_asm_vars(do_rmdir);
# 1623 "handlers.c" 1
	#define do_rmdir_jmp 2784	#
# 0 "" 2
# handlers.c:1624:     def_detour_asm_vars(sys_sysfs);
# 1624 "handlers.c" 1
	#define sys_sysfs_jmp 2880	#
# 0 "" 2
# handlers.c:1625:     def_detour_asm_vars(sys_read);
# 1625 "handlers.c" 1
	#define sys_read_jmp 2976	#
# 0 "" 2
# handlers.c:1626:     def_detour_asm_vars(sys_getppid);
# 1626 "handlers.c" 1
	#define sys_getppid_jmp 3072	#
# 0 "" 2
# handlers.c:1627:     def_detour_asm_vars(sys_getsid);
# 1627 "handlers.c" 1
	#define sys_getsid_jmp 3168	#
# 0 "" 2
# handlers.c:1628:     def_detour_asm_vars(sys_getuid);
# 1628 "handlers.c" 1
	#define sys_getuid_jmp 3264	#
# 0 "" 2
# handlers.c:1629:     def_detour_asm_vars(sys_geteuid);
# 1629 "handlers.c" 1
	#define sys_geteuid_jmp 3360	#
# 0 "" 2
# handlers.c:1630:     def_detour_asm_vars(sys_shutdown);
# 1630 "handlers.c" 1
	#define sys_shutdown_jmp 3456	#
# 0 "" 2
# handlers.c:1631:     def_detour_asm_vars(do_sysinfo);
# 1631 "handlers.c" 1
	#define do_sysinfo_jmp 3552	#
# 0 "" 2
# handlers.c:1632:     def_detour_asm_vars(sys_capget);
# 1632 "handlers.c" 1
	#define sys_capget_jmp 3648	#
# 0 "" 2
# handlers.c:1633:     def_detour_asm_vars(sys_capset);
# 1633 "handlers.c" 1
	#define sys_capset_jmp 3744	#
# 0 "" 2
# handlers.c:1634:     def_detour_asm_vars(sys_statfs);
# 1634 "handlers.c" 1
	#define sys_statfs_jmp 3840	#
# 0 "" 2
# handlers.c:1635:     def_detour_asm_vars(sys_fstatfs);
# 1635 "handlers.c" 1
	#define sys_fstatfs_jmp 3936	#
# 0 "" 2
# handlers.c:1636:     def_detour_asm_vars(sys_setsid);
# 1636 "handlers.c" 1
	#define sys_setsid_jmp 4032	#
# 0 "" 2
# handlers.c:1637:     def_detour_asm_vars(sys_seccomp);
# 1637 "handlers.c" 1
	#define sys_seccomp_jmp 4128	#
# 0 "" 2
# handlers.c:1638:     def_detour_asm_vars(sys_tgkill);
# 1638 "handlers.c" 1
	#define sys_tgkill_jmp 4224	#
# 0 "" 2
# handlers.c:1639:     def_detour_asm_vars(sys_tkill);
# 1639 "handlers.c" 1
	#define sys_tkill_jmp 4320	#
# 0 "" 2
# handlers.c:1640:     def_detour_asm_vars(sys_ustat);
# 1640 "handlers.c" 1
	#define sys_ustat_jmp 4416	#
# 0 "" 2
# handlers.c:1641:     def_detour_asm_vars(sys_poll);
# 1641 "handlers.c" 1
	#define sys_poll_jmp 4512	#
# 0 "" 2
# handlers.c:1642:     def_detour_asm_vars(sys_sigprocmask);
# 1642 "handlers.c" 1
	#define sys_sigprocmask_jmp 4608	#
# 0 "" 2
# handlers.c:1643:     def_detour_asm_vars(sys_getrlimit);
# 1643 "handlers.c" 1
	#define sys_getrlimit_jmp 4704	#
# 0 "" 2
# handlers.c:1644:     def_detour_asm_vars(sys_umask);
# 1644 "handlers.c" 1
	#define sys_umask_jmp 4800	#
# 0 "" 2
# handlers.c:1645:     def_detour_asm_vars(sys_ioctl);
# 1645 "handlers.c" 1
	#define sys_ioctl_jmp 4896	#
# 0 "" 2
# handlers.c:1646:     def_detour_asm_vars(sys_brk);
# 1646 "handlers.c" 1
	#define sys_brk_jmp 4992	#
# 0 "" 2
# handlers.c:1647:     def_detour_asm_vars(sys_gettimeofday);
# 1647 "handlers.c" 1
	#define sys_gettimeofday_jmp 5088	#
# 0 "" 2
# handlers.c:1648:     def_detour_asm_vars(sys_setresuid);
# 1648 "handlers.c" 1
	#define sys_setresuid_jmp 5184	#
# 0 "" 2
# handlers.c:1649:     def_detour_asm_vars(sys_chdir);
# 1649 "handlers.c" 1
	#define sys_chdir_jmp 5280	#
# 0 "" 2
# handlers.c:1650:     def_detour_asm_vars(sys_alarm);
# 1650 "handlers.c" 1
	#define sys_alarm_jmp 5376	#
# 0 "" 2
# handlers.c:1651:     def_detour_asm_vars(sys_ptrace);
# 1651 "handlers.c" 1
	#define sys_ptrace_jmp 5472	#
# 0 "" 2
# handlers.c:1652:     def_detour_asm_vars(sys_time);
# 1652 "handlers.c" 1
	#define sys_time_jmp 5568	#
# 0 "" 2
# handlers.c:1653:     def_detour_asm_vars(sys_chroot);
# 1653 "handlers.c" 1
	#define sys_chroot_jmp 5664	#
# 0 "" 2
# handlers.c:1654:     def_detour_asm_vars(sys_kill);
# 1654 "handlers.c" 1
	#define sys_kill_jmp 5760	#
# 0 "" 2
# handlers.c:1655:     def_detour_asm_vars(sys_fchdir);
# 1655 "handlers.c" 1
	#define sys_fchdir_jmp 5856	#
# 0 "" 2
# handlers.c:1656:     def_detour_asm_vars(sys_chmod);
# 1656 "handlers.c" 1
	#define sys_chmod_jmp 5952	#
# 0 "" 2
# handlers.c:1657:     def_detour_asm_vars(sys_chown);
# 1657 "handlers.c" 1
	#define sys_chown_jmp 6048	#
# 0 "" 2
# handlers.c:1658:     def_detour_asm_vars(sys_fchmodat);
# 1658 "handlers.c" 1
	#define sys_fchmodat_jmp 6144	#
# 0 "" 2
# handlers.c:1659:     def_detour_asm_vars(sys_fchmod);
# 1659 "handlers.c" 1
	#define sys_fchmod_jmp 6240	#
# 0 "" 2
# handlers.c:1660:     def_detour_asm_vars(sys_fchown);
# 1660 "handlers.c" 1
	#define sys_fchown_jmp 6336	#
# 0 "" 2
# handlers.c:1661:     def_detour_asm_vars(sys_fchownat);
# 1661 "handlers.c" 1
	#define sys_fchownat_jmp 6432	#
# 0 "" 2
# handlers.c:1662:     def_detour_asm_vars(sys_rename);
# 1662 "handlers.c" 1
	#define sys_rename_jmp 6528	#
# 0 "" 2
# handlers.c:1663:     def_detour_asm_vars(sys_renameat2);
# 1663 "handlers.c" 1
	#define sys_renameat2_jmp 6624	#
# 0 "" 2
# handlers.c:1664:     def_detour_asm_vars(sys_renameat);
# 1664 "handlers.c" 1
	#define sys_renameat_jmp 6720	#
# 0 "" 2
# handlers.c:1665:     def_detour_asm_vars(sys_mkdir);
# 1665 "handlers.c" 1
	#define sys_mkdir_jmp 6816	#
# 0 "" 2
# handlers.c:1666:     def_detour_asm_vars(sys_creat);
# 1666 "handlers.c" 1
	#define sys_creat_jmp 6912	#
# 0 "" 2
# handlers.c:1667:     def_detour_asm_vars(sys_openat);
# 1667 "handlers.c" 1
	#define sys_openat_jmp 7008	#
# 0 "" 2
# handlers.c:1668:     def_detour_asm_vars(sys_link);
# 1668 "handlers.c" 1
	#define sys_link_jmp 7104	#
# 0 "" 2
# handlers.c:1669:     def_detour_asm_vars(sys_unlink);
# 1669 "handlers.c" 1
	#define sys_unlink_jmp 7200	#
# 0 "" 2
# handlers.c:1670:     def_detour_asm_vars(sys_unlinkat);
# 1670 "handlers.c" 1
	#define sys_unlinkat_jmp 7296	#
# 0 "" 2
# handlers.c:1671:     def_detour_asm_vars(sys_linkat);
# 1671 "handlers.c" 1
	#define sys_linkat_jmp 7392	#
# 0 "" 2
# handlers.c:1672:     def_detour_asm_vars(sys_symlink);
# 1672 "handlers.c" 1
	#define sys_symlink_jmp 7488	#
# 0 "" 2
# handlers.c:1673:     def_detour_asm_vars(sys_symlinkat);
# 1673 "handlers.c" 1
	#define sys_symlinkat_jmp 7584	#
# 0 "" 2
# handlers.c:1674:     def_detour_asm_vars(sys_access);
# 1674 "handlers.c" 1
	#define sys_access_jmp 7680	#
# 0 "" 2
# handlers.c:1675: }
#NO_APP
	ret
	.cfi_endproc
.LFE133:
	.size	__asm_defines, .-__asm_defines
	.globl	hypercall_info
	.section	.detours,"aw",@progbits
	.align 32
	.type	hypercall_info, @object
	.size	hypercall_info, 7800
hypercall_info:
# DetoursCount:
	.zero	8
	.quad	80
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
	.zero	104
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
