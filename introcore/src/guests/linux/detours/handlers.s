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
# handlers.c:136:     return  (hypercall_info.Detours[id].EnableOptions == -1ULL)
	inc	rax	# tmp95
	imul	rax, rax, 96	# tmp96, tmp95,
# handlers.c:143: {
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
# handlers.c:136:     return  (hypercall_info.Detours[id].EnableOptions == -1ULL)
	lea	rdx, hypercall_info[rip]	# tmp93,
	mov	rax, QWORD PTR 8[rdx+rax]	# _8, hypercall_info.Detours[id_5(D)].EnableOptions
# handlers.c:137:         || ((hypercall_info.Detours[id].EnableOptions & hypercall_info.ProtectionOptions) != 0);
	cmp	rax, -1	# _8,
	je	.L2	#,
# handlers.c:145:         return 0;
	xor	esi, esi	# <retval>
# handlers.c:144:     if (!is_detour_enabled(id)) {
	test	QWORD PTR hypercall_info[rip], rax	# hypercall_info.ProtectionOptions, _8
	je	.L1	#,
.L2:
# handlers.c:150:     asm volatile("vmcall" : "+S" (_out_param), "+a"(_out_value) : "D"(24), "b"(id): );
	xor	esi, esi	# _out_param
	mov	eax, 34	# _out_value,
	mov	edi, 24	# tmp103,
#APP
# 150 "handlers.c" 1
	vmcall
# 0 "" 2
# handlers.c:153:     volatile struct inactive_task_frame _reserved = { 0 };
#NO_APP
	lea	rdi, -56[rsp]	# tmp106,
	mov	ecx, 14	# tmp108,
	xor	eax, eax	# tmp107
	rep stosd
.L1:
# handlers.c:157: }
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
# handlers.c:163:     void *path = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
	mov	esi, DWORD PTR hypercall_info[rip+3652]	# hypercall_info.OsSpecificFields.CurrentCpuOffset, hypercall_info.OsSpecificFields.CurrentCpuOffset
#APP
# 163 "handlers.c" 1
	mov esi, gs:[rsi]	# ret, hypercall_info.OsSpecificFields.CurrentCpuOffset
# 0 "" 2
# handlers.c:165:     return hypercall_info.OsSpecificFields.DPathFnPtr(path_struct, path, PAGE_SIZE);
#NO_APP
	mov	edx, 4096	#,
# handlers.c:163:     void *path = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
	sal	esi, 12	#,
	add	rsi, QWORD PTR hypercall_info[rip+3656]	# path, hypercall_info.OsSpecificFields.PercpuMemPtr
# handlers.c:165:     return hypercall_info.OsSpecificFields.DPathFnPtr(path_struct, path, PAGE_SIZE);
	call	[QWORD PTR hypercall_info[rip+3664]]	# hypercall_info.OsSpecificFields.DPathFnPtr
# handlers.c:166: }
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
# handlers.c:175:     while (len--)
	xor	ecx, ecx	# ivtmp.135
# handlers.c:171: {
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
.L14:
# handlers.c:175:     while (len--)
	cmp	rdx, rcx	# len, ivtmp.135
	je	.L17	#,
# handlers.c:177:         *d++ = *s++;
	mov	dil, BYTE PTR [rsi+rcx]	# _1, MEM[base: src_7(D), index: ivtmp.135_14, offset: 0B]
	mov	BYTE PTR [rax+rcx], dil	# MEM[base: dest_6(D), index: ivtmp.135_14, offset: 0B], _1
	inc	rcx	# ivtmp.135
	jmp	.L14	#
.L17:
# handlers.c:181: }
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
# handlers.c:189:     regs.Rax = __read_reg("rax");
#APP
# 189 "handlers.c" 1
	mov rax, rax	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR [rsp], rax	# regs.Rax, val
# handlers.c:190:     regs.Rcx = __read_reg("rcx");
#APP
# 190 "handlers.c" 1
	mov rax, rcx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 8[rsp], rax	# regs.Rcx, val
# handlers.c:191:     regs.Rdx = __read_reg("rdx");
#APP
# 191 "handlers.c" 1
	mov rax, rdx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 16[rsp], rax	# regs.Rdx, val
# handlers.c:192:     regs.Rbx = __read_reg("rbx");
#APP
# 192 "handlers.c" 1
	mov rax, rbx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 24[rsp], rax	# regs.Rbx, val
# handlers.c:193:     regs.Rsp = __read_reg("rsp");
#APP
# 193 "handlers.c" 1
	mov rax, rsp	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 32[rsp], rax	# regs.Rsp, val
# handlers.c:194:     regs.Rbp = __read_reg("rbp");
#APP
# 194 "handlers.c" 1
	mov rax, rbp	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 40[rsp], rax	# regs.Rbp, val
# handlers.c:195:     regs.Rsi = __read_reg("rsi");
#APP
# 195 "handlers.c" 1
	mov rax, rsi	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 48[rsp], rax	# regs.Rsi, val
# handlers.c:196:     regs.Rdi = __read_reg("rdi");
#APP
# 196 "handlers.c" 1
	mov rax, rdi	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 56[rsp], rax	# regs.Rdi, val
# handlers.c:197:     regs.R8 = __read_reg("r8");
#APP
# 197 "handlers.c" 1
	mov rax, r8	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 64[rsp], rax	# regs.R8, val
# handlers.c:198:     regs.R9 = __read_reg("r9");
#APP
# 198 "handlers.c" 1
	mov rax, r9	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 72[rsp], rax	# regs.R9, val
# handlers.c:199:     regs.R10 = __read_reg("r10");
#APP
# 199 "handlers.c" 1
	mov rax, r10	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 80[rsp], rax	# regs.R10, val
# handlers.c:200:     regs.R11 = __read_reg("r11");
#APP
# 200 "handlers.c" 1
	mov rax, r11	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 88[rsp], rax	# regs.R11, val
# handlers.c:201:     regs.R12 = __read_reg("r12");
#APP
# 201 "handlers.c" 1
	mov rax, r12	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 96[rsp], rax	# regs.R12, val
# handlers.c:202:     regs.R13 = __read_reg("r13");
#APP
# 202 "handlers.c" 1
	mov rax, r13	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 104[rsp], rax	# regs.R13, val
# handlers.c:203:     regs.R14 = __read_reg("r14");
#APP
# 203 "handlers.c" 1
	mov rax, r14	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 112[rsp], rax	# regs.R14, val
# handlers.c:204:     regs.R15 = __read_reg("r15");
#APP
# 204 "handlers.c" 1
	mov rax, r15	# val
	
# 0 "" 2
# handlers.c:206:     void *dst = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
#NO_APP
	mov	edi, DWORD PTR hypercall_info[rip+3652]	# hypercall_info.OsSpecificFields.CurrentCpuOffset, hypercall_info.OsSpecificFields.CurrentCpuOffset
# handlers.c:204:     regs.R15 = __read_reg("r15");
	mov	QWORD PTR 120[rsp], rax	# regs.R15, val
# handlers.c:206:     void *dst = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
#APP
# 206 "handlers.c" 1
	mov edi, gs:[rdi]	# ret, hypercall_info.OsSpecificFields.CurrentCpuOffset
# 0 "" 2
#NO_APP
	sal	edi, 12	#,
	add	rdi, QWORD PTR hypercall_info[rip+3656]	# dst, hypercall_info.OsSpecificFields.PercpuMemPtr
# handlers.c:207:     _memcpy(dst, &regs, sizeof(regs));
	mov	rsi, rsp	# tmp131,
	mov	edx, 224	#,
	call	_memcpy	#
# handlers.c:208: }
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
# handlers.c:215:     void *current = current_task;
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:214: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:215:     void *current = current_task;
#APP
# 215 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
# handlers.c:217:     if (!hypercall_info.OsSpecificFields.Info.CredAltered) {
#NO_APP
	cmp	DWORD PTR hypercall_info[rip+3568], 0	# hypercall_info.OsSpecificFields.Info.CredAltered,
	jne	.L21	#,
# handlers.c:218:         uint32_t *in_execve = (uint32_t *)((unsigned long)(current) + hypercall_info.OsSpecificFields.Task.InExecve);
	mov	eax, DWORD PTR hypercall_info[rip+3612]	# hypercall_info.OsSpecificFields.Task.InExecve, hypercall_info.OsSpecificFields.Task.InExecve
# handlers.c:220:         if ((*in_execve & BIT(hypercall_info.OsSpecificFields.Task.InExecveBit))) {
	mov	edx, DWORD PTR [r8+rax]	# *in_execve_18, *in_execve_18
	mov	eax, DWORD PTR hypercall_info[rip+3616]	# hypercall_info.OsSpecificFields.Task.InExecveBit, hypercall_info.OsSpecificFields.Task.InExecveBit
	bt	rdx, rax	# *in_execve_18, hypercall_info.OsSpecificFields.Task.InExecveBit
	jc	.L20	#,
.L21:
	mov	r9, rdi	# creds, creds
# handlers.c:225:     vmcall_2(det_commit_creds, current, creds);
	xor	edi, edi	#
	call	vmcall	#
.L20:
# handlers.c:226: }
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
# handlers.c:233:     vmcall_1(det_module_param_sysfs_setup, module);
	mov	edi, 2	#,
	call	vmcall	#
# handlers.c:234: }
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
# handlers.c:241:     vmcall_1(det_module_param_sysfs_remove, module);
	mov	edi, 3	#,
	call	vmcall	#
# handlers.c:242: }
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
# handlers.c:249:     vmcall_2(det_wake_up_new_task, current_task, task);
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:248: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:249:     vmcall_2(det_wake_up_new_task, current_task, task);
#APP
# 249 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 4	#,
	call	vmcall	#
# handlers.c:250: }
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
# handlers.c:257:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3620]	# hypercall_info.OsSpecificFields.Binprm.FileOffset, hypercall_info.OsSpecificFields.Binprm.FileOffset
# handlers.c:256: {
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
# handlers.c:257:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	rdi, QWORD PTR [rax+rdi]	# file, *_4
# handlers.c:260:     if (!file) {
	test	rdi, rdi	# file
	je	.L31	#,
# handlers.c:264:     path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;
	mov	edx, DWORD PTR hypercall_info[rip+3628]	# hypercall_info.OsSpecificFields.File.PathOffset, hypercall_info.OsSpecificFields.File.PathOffset
	add	rdi, rdx	# file, hypercall_info.OsSpecificFields.File.PathOffset
.L31:
# handlers.c:267:     return vmcall_3(det_flush_old_exec, current_task, binprm, d_path((void *)path_struct));
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 267 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	call	d_path	#
	mov	r10, rax	# _12,
	mov	edi, 5	#,
	call	vmcall	#
# handlers.c:268: }
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
# handlers.c:275:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3620]	# hypercall_info.OsSpecificFields.Binprm.FileOffset, hypercall_info.OsSpecificFields.Binprm.FileOffset
# handlers.c:274: {
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
# handlers.c:275:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	rdi, QWORD PTR [rax+rdi]	# file, *_4
# handlers.c:278:     if (!file) {
	test	rdi, rdi	# file
	je	.L37	#,
# handlers.c:282:     path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;
	mov	edx, DWORD PTR hypercall_info[rip+3628]	# hypercall_info.OsSpecificFields.File.PathOffset, hypercall_info.OsSpecificFields.File.PathOffset
	add	rdi, rdx	# file, hypercall_info.OsSpecificFields.File.PathOffset
.L37:
# handlers.c:285:     return vmcall_3(det_begin_new_exec, current_task, binprm, d_path((void *)path_struct));
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 285 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	call	d_path	#
	mov	r10, rax	# _12,
	mov	edi, 6	#,
	call	vmcall	#
# handlers.c:286: }
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
# handlers.c:293:     vmcall_2(det_do_exit, current_task, code);
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:292: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:293:     vmcall_2(det_do_exit, current_task, code);
#APP
# 293 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 7	#,
	call	vmcall	#
# handlers.c:294: }
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
# handlers.c:310:     return 0;
	xor	eax, eax	# <retval>
# handlers.c:302:         || request == PTRACE_POKETEXT
	cmp	rsi, 19	# request,
	ja	.L49	#,
# handlers.c:300: {
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
# handlers.c:301:     if (request == PTRACE_POKEDATA
	mov	edx, 565296	# tmp99,
	bt	rdx, rsi	# tmp99, request
	jnc	.L44	#,
	mov	r9, rsi	# request, request
	mov	r8, rdi	# child, child
# handlers.c:307:         return vmcall_2(det_arch_ptrace, child, request);
	mov	edi, 8	#,
	call	vmcall	#
.L44:
# handlers.c:311: }
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
# handlers.c:319:     if (!vm_write) {
	test	r9d, r9d	# vm_write
	je	.L56	#,
# handlers.c:318: {
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
# handlers.c:323:     return vmcall_2(det_process_vm_rw_core, current_task, pid);
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:318: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
# handlers.c:323:     return vmcall_2(det_process_vm_rw_core, current_task, pid);
#APP
# 323 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, edi	# __p2, pid
	mov	edi, 10	#,
	call	vmcall	#
# handlers.c:324: }
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
# handlers.c:331:     long mm_flags = *(long *)((long)(mm) + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3600]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:333:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rdi+rax]	# *_5, *_5
	mov	eax, DWORD PTR hypercall_info[rip+3608]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_5, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L61	#,
# handlers.c:337:     long file = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3580]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:338:     if (file) {
	cmp	QWORD PTR [rax+rsi], 0	# *_14,
	jne	.L61	#,
# handlers.c:342:     long vm_flags = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3576]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:343:     if (!(vm_flags & VM_EXEC)) {
	test	BYTE PTR [rsi+rax], 4	# *_18,
	je	.L61	#,
	mov	r8, rsi	# vma, vma
	mov	r9, rdi	# mm, mm
# handlers.c:347:     vmcall_2(det___vma_link_rb, vma, mm);
	mov	edi, 11	#,
	call	vmcall	#
.L61:
# handlers.c:348: }
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
# handlers.c:356:     long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3580]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:357:     if (file) {
	cmp	QWORD PTR [rax+rdi], 0	# *_4,
	jne	.L70	#,
# handlers.c:361:     long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3572]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# mm, *_8
# handlers.c:362:     long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3600]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:364:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+r9]	# *_12, *_12
	mov	eax, DWORD PTR hypercall_info[rip+3608]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_12, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L70	#,
# handlers.c:368:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3576]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:370:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	mov	esi, DWORD PTR hypercall_info[rip+3596]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
# handlers.c:368:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	rdx, QWORD PTR [rax+rdi]	# vm_flags, *_20
	mov	rax, rdx	# _42, vm_flags
	and	eax, 4	# _42,
# handlers.c:370:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	bt	rdx, rsi	# vm_flags, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L72	#,
# handlers.c:370:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	test	rax, rax	# _42
	je	.L73	#,
	jmp	.L70	#
.L72:
# handlers.c:371:         || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {
	test	rax, rax	# _42
	je	.L70	#,
.L73:
	mov	r8, rdi	# vma, vma
# handlers.c:374:         vmcall_2(det_change_protection, vma, mm);
	mov	edi, 12	#,
	call	vmcall	#
.L70:
# handlers.c:376: }
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
# handlers.c:387:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	edx, DWORD PTR hypercall_info[rip+3576]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:384: {
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:384: {
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
# handlers.c:385:     *skip_call = 1;
	mov	QWORD PTR [rax], 1	# *skip_call_21(D),
# handlers.c:388:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rsi, QWORD PTR [rdx+rdi]	# *_4, *_4
	mov	edx, DWORD PTR hypercall_info[rip+3596]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rsi, rdx	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L84	#,
# handlers.c:392:     *saved_vma = vma;
	mov	rdx, QWORD PTR 48[rsp]	# saved_vma, saved_vma
	mov	QWORD PTR [rdx], rdi	# *saved_vma_25(D), vma
# handlers.c:393:     *next = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmNextOffset);
	mov	edx, DWORD PTR hypercall_info[rip+3584]	# hypercall_info.OsSpecificFields.Vma.VmNextOffset, hypercall_info.OsSpecificFields.Vma.VmNextOffset
	mov	rsi, QWORD PTR [rdx+rdi]	# _13, *_12
	mov	rdx, QWORD PTR 56[rsp]	# next, next
	mov	QWORD PTR [rdx], rsi	# *next_27(D), _13
# handlers.c:394:     *prev = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmPrevOffset);
	mov	edx, DWORD PTR hypercall_info[rip+3588]	# hypercall_info.OsSpecificFields.Vma.VmPrevOffset, hypercall_info.OsSpecificFields.Vma.VmPrevOffset
	mov	rsi, QWORD PTR [rdx+rdi]	# _18, *_17
	mov	rdx, QWORD PTR 64[rsp]	# prev, prev
	mov	QWORD PTR [rdx], rsi	# *prev_29(D), _18
# handlers.c:395:     *skip_call = 0;
	mov	QWORD PTR [rax], 0	# *skip_call_21(D),
.L84:
# handlers.c:398: }
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
# handlers.c:407:     long mm = *(long *)(saved_vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3572]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
# handlers.c:405: {
	mov	rcx, QWORD PTR 80[rsp]	# saved_vma, saved_vma
# handlers.c:407:     long mm = *(long *)(saved_vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	rbx, QWORD PTR [rax+rcx]	# mm, *_4
# handlers.c:409:     vmcall_4(det_vma_adjust, svma, mm, next, prev);
	mov	r8, rcx	# __p1, saved_vma
	mov	r9, rbx	# __p2, mm
	mov	r10, QWORD PTR 88[rsp]	# __p3, next
	mov	r11, QWORD PTR 96[rsp]	# __p4, prev
	mov	edi, 13	#,
	call	vmcall	#
# handlers.c:410:     vmcall_4(det___vma_adjust, svma, mm, next, prev);
	mov	r10, QWORD PTR 88[rsp]	# __p3, next
	mov	r11, QWORD PTR 96[rsp]	# __p4, prev
	mov	edi, 14	#,
	call	vmcall	#
# handlers.c:411: }
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
# handlers.c:418:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3576]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:419:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_4, *_4
	mov	eax, DWORD PTR hypercall_info[rip+3596]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L92	#,
	mov	rcx, rdi	# vma, vma
# handlers.c:423:     vmcall_2(det_vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
	mov	r8, rdi	# __p1, vma
	mov	eax, DWORD PTR hypercall_info[rip+3572]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# __p2, *_13
	mov	edi, 15	#,
	call	vmcall	#
# handlers.c:424:     vmcall_2(det___vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
	mov	eax, DWORD PTR hypercall_info[rip+3572]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rcx]	# __p2, *_19
	mov	edi, 16	#,
	call	vmcall	#
.L92:
# handlers.c:425: }
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
# handlers.c:432:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3576]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:433:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_4, *_4
	mov	eax, DWORD PTR hypercall_info[rip+3596]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L98	#,
	mov	r10, rsi	# address, address
# handlers.c:437:     vmcall_3(det_expand_downwards, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset), address);
	mov	r8, rdi	# __p1, vma
	mov	eax, DWORD PTR hypercall_info[rip+3572]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# __p2, *_13
	mov	edi, 17	#,
	call	vmcall	#
.L98:
# handlers.c:438: }
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
# handlers.c:446:         && sig != SIGILL
	cmp	edi, 11	# sig,
	ja	.L105	#,
# handlers.c:445:     if (sig != SIGQUIT
	mov	eax, 2520	# tmp100,
	bt	rax, rdi	# tmp100, sig
	jc	.L106	#,
.L105:
	mov	edx, ecx	# <retval>, sig
	jmp	.L104	#
.L106:
	mov	r8, rsi	# task, task
# handlers.c:455:     int new_sig = vmcall_3(det_complete_signal, task, sig, type);
	movsx	r9, edi	# __p2, sig
	mov	r10d, edx	# __p3, type
	mov	edi, 18	#,
	call	vmcall	#
	mov	edx, eax	# <retval>, _20
# handlers.c:456:     return new_sig ? new_sig : sig;
	test	eax, eax	# _20
	je	.L105	#,
.L104:
# handlers.c:457: }
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
# handlers.c:464:     vmcall_3(det_text_poke, addr, opcode, len);
	mov	r8, rdi	# __p1, addr
# handlers.c:463: {
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
# handlers.c:464:     vmcall_3(det_text_poke, addr, opcode, len);
	mov	r9, rsi	# __p2, opcode
	mov	r10, rdx	# __p3, len
	mov	edi, 19	#,
	call	vmcall	#
# handlers.c:465:     vmcall_3(det___text_poke, addr, opcode, len);
	mov	edi, 20	#,
	call	vmcall	#
# handlers.c:466: }
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
# handlers.c:473:     vmcall_3(det_ftrace_write, ip, val, size);
	movsx	r10, edx	# __p3, size
	mov	edi, 21	#,
	call	vmcall	#
# handlers.c:474: }
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
# handlers.c:481:     vmcall(det_panic);
	mov	edi, 22	#,
# handlers.c:480: {
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:481:     vmcall(det_panic);
	call	vmcall	#
# handlers.c:482: }
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
# handlers.c:489:     vmcall_2(det_arch_jump_label_transform, entry, type);
	mov	r9d, esi	# __p2, type
	mov	edi, 1	#,
	call	vmcall	#
# handlers.c:490: }
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
# handlers.c:498:     if ((gup_flags & 1) == 0) {
	test	r9b, 1	# gup_flags,
	je	.L123	#,
# handlers.c:497: {
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
# handlers.c:502:     vmcall_5(det___access_remote_vm, mm, addr, buf, len, gup_flags);
	mov	edi, 24	#,
	call	vmcall	#
# handlers.c:503: }
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
# handlers.c:510:     unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+3592]	# hypercall_info.OsSpecificFields.Vma.Rb, hypercall_info.OsSpecificFields.Vma.Rb
	sub	rdi, rax	# vma_vm_rb, hypercall_info.OsSpecificFields.Vma.Rb
# handlers.c:512:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3576]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:514:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_8, *_8
	mov	eax, DWORD PTR hypercall_info[rip+3596]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_8, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L126	#,
	mov	r8, rdi	# vma, vma_vm_rb
	mov	r9, rsi	# mm_mm_rb, mm_mm_rb
# handlers.c:518:     vmcall_2(det_do_munmap_rb_erase, vma, mm);
# handlers.c:511:     unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+3604]	# _3, hypercall_info.OsSpecificFields.Mm.Rb
	sub	r9, rax	# __p2, _3
# handlers.c:518:     vmcall_2(det_do_munmap_rb_erase, vma, mm);
	mov	edi, 26	#,
	call	vmcall	#
.L126:
# handlers.c:519: }
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
# handlers.c:526:     unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+3592]	# hypercall_info.OsSpecificFields.Vma.Rb, hypercall_info.OsSpecificFields.Vma.Rb
	sub	rdi, rax	# vma_vm_rb, hypercall_info.OsSpecificFields.Vma.Rb
# handlers.c:528:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3576]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:530:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_8, *_8
	mov	eax, DWORD PTR hypercall_info[rip+3596]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_8, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L132	#,
	mov	r8, rdi	# vma, vma_vm_rb
	mov	r9, rsi	# mm_mm_rb, mm_mm_rb
# handlers.c:534:     vmcall_2(det_vma_adjust_rb_erase, vma, mm);
# handlers.c:527:     unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+3604]	# _3, hypercall_info.OsSpecificFields.Mm.Rb
	sub	r9, rax	# __p2, _3
# handlers.c:534:     vmcall_2(det_vma_adjust_rb_erase, vma, mm);
	mov	edi, 27	#,
	call	vmcall	#
.L132:
# handlers.c:535: }
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
# handlers.c:542:     long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3580]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:543:     if (file) {
	cmp	QWORD PTR [rax+rdi], 0	# *_4,
	jne	.L138	#,
# handlers.c:547:     long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3572]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# mm, *_8
# handlers.c:548:     long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3600]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:550:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+r9]	# *_12, *_12
	mov	eax, DWORD PTR hypercall_info[rip+3608]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_12, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L138	#,
# handlers.c:554:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+3576]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:556:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	mov	esi, DWORD PTR hypercall_info[rip+3596]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
# handlers.c:554:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	rdx, QWORD PTR [rax+rdi]	# vm_flags, *_20
	mov	rax, rdx	# _41, vm_flags
	and	eax, 4	# _41,
# handlers.c:556:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	bt	rdx, rsi	# vm_flags, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L140	#,
# handlers.c:556:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	test	rax, rax	# _41
	je	.L141	#,
	jmp	.L138	#
.L140:
# handlers.c:557:         || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {
	test	rax, rax	# _41
	je	.L138	#,
.L141:
	mov	r8, rdi	# vma, vma
# handlers.c:560:         vmcall_2(det_mprotect_fixup_vma_wants_writenotify, vma, mm);
	mov	edi, 25	#,
	call	vmcall	#
.L138:
# handlers.c:562: }
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
# handlers.c:568:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:569:     *save_pathname=pathname;
	mov	rax, QWORD PTR 32[rsp]	# save_pathname, save_pathname
	mov	QWORD PTR [rax], rsi	# *save_pathname_4(D), pathname
# handlers.c:570: }
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
# handlers.c:576:     long save_rax = __read_reg("rax");
#APP
# 576 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:577:     vmcall_3(det_do_rmdir, current_task, save_pathname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 577 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_pathname
	mov	edi, 28	#,
	call	vmcall	#
# handlers.c:578: }
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
# handlers.c:584:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_5(D),
# handlers.c:585:     *save_option=option;
	mov	rax, QWORD PTR 48[rsp]	# save_option, save_option
	mov	BYTE PTR [rax], dil	# *save_option_8(D), option
# handlers.c:586:     *save_arg1=arg1;
	mov	rax, QWORD PTR 56[rsp]	# save_arg1, save_arg1
	mov	QWORD PTR [rax], rsi	# *save_arg1_11(D), arg1
# handlers.c:587:     *save_arg2=arg2;
	mov	rax, QWORD PTR 64[rsp]	# save_arg2, save_arg2
	mov	QWORD PTR [rax], rdx	# *save_arg2_14(D), arg2
# handlers.c:588: }
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
# handlers.c:594:     long x = __read_reg("rax");
#APP
# 594 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:595: 	vmcall_5(det_sys_sysfs,current_task,save_option,save_arg1,save_arg2,x);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 595 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_option
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_arg1
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_arg2
	mov	edi, 29	#,
	call	vmcall	#
# handlers.c:596: }
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
# handlers.c:602:     long save_rax = __read_reg("rax");
#APP
# 602 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:604:     vmcall_5(det_sys_read,current_task,save_fd, save_buf, save_count,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 604 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_buf
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_count
	mov	edi, 30	#,
	call	vmcall	#
# handlers.c:605: }
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
# handlers.c:611:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:612:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:613:     *save_buf=buf;
	mov	rax, QWORD PTR 56[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:614:     *save_count=count;
	mov	rax, QWORD PTR 64[rsp]	# save_count, save_count
	mov	DWORD PTR [rax], edx	# *save_count_10(D), count
# handlers.c:615: }
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
# handlers.c:621:     long save_rax = __read_reg("rax");
#APP
# 621 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:623:     vmcall_2(det_sys_getppid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 623 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 31	#,
	call	vmcall	#
# handlers.c:624: }
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
# handlers.c:630:     *skip_call=0;
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:631: }
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
# handlers.c:637:     long save_rax = __read_reg("rax");
#APP
# 637 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:639:     vmcall_3(det_sys_getsid,current_task,save_pid,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 639 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 56[rsp]	# __p2, save_pid
	mov	edi, 32	#,
	call	vmcall	#
# handlers.c:640: }
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
# handlers.c:646:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:647:     *save_pid=pid;
	mov	rax, QWORD PTR 32[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], edi	# *save_pid_4(D), pid
# handlers.c:648: }
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
# handlers.c:654:     long save_rax = __read_reg("rax");
#APP
# 654 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:656:     vmcall_2(det_sys_getuid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 656 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 33	#,
	call	vmcall	#
# handlers.c:657: }
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
.LFB50:
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
.LFE50:
	.size	pre_sys_getuid, .-pre_sys_getuid
	.align 16
	.globl	sys_geteuid
	.type	sys_geteuid, @function
sys_geteuid:
.LFB41:
	.cfi_startproc
# handlers.c:669: {
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
# handlers.c:670:     long save_rax = __read_reg("rax");
#APP
# 670 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:672:     vmcall_2(det_sys_geteuid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 672 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 34	#,
	call	vmcall	#
# handlers.c:673: }
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
.LFB52:
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
.LFE52:
	.size	pre_sys_geteuid, .-pre_sys_geteuid
	.align 16
	.globl	sys_shutdown
	.type	sys_shutdown, @function
sys_shutdown:
.LFB43:
	.cfi_startproc
# handlers.c:685: {
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
# handlers.c:686:     long save_rax = __read_reg("rax");
#APP
# 686 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:688:     vmcall_4(det_sys_shutdown,current_task,save_a,save_b,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 688 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 64[rsp]	# __p2, save_a
	movsx	r10, DWORD PTR 72[rsp]	# __p3, save_b
	mov	edi, 35	#,
	call	vmcall	#
# handlers.c:689: }
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
# handlers.c:695:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:696:     *save_a=a;
	mov	rax, QWORD PTR 40[rsp]	# save_a, save_a
	mov	DWORD PTR [rax], edi	# *save_a_4(D), a
# handlers.c:697:     *save_b=b;
	mov	rax, QWORD PTR 48[rsp]	# save_b, save_b
	mov	DWORD PTR [rax], esi	# *save_b_7(D), b
# handlers.c:698: }
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
# handlers.c:704:     long save_rax = __read_reg("rax");
#APP
# 704 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:706:     vmcall_3(det_do_sysinfo,current_task,save_a,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+3648]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 706 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_a
	mov	edi, 36	#,
	call	vmcall	#
# handlers.c:707: }
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
# handlers.c:713:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:714:     *save_a=a;
	mov	rax, QWORD PTR 32[rsp]	# save_a, save_a
	mov	QWORD PTR [rax], rdi	# *save_a_4(D), a
# handlers.c:715: }
	pop	rax	#
	.cfi_def_cfa_offset 16
	pop	rdi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	pre_do_sysinfo, .-pre_do_sysinfo
	.globl	__asm_defines
	.type	__asm_defines, @function
__asm_defines:
.LFB47:
	.cfi_startproc
# handlers.c:719:     def_detour_asm_vars(commit_creds);
#APP
# 719 "handlers.c" 1
	#define commit_creds_jmp 96	#
# 0 "" 2
# handlers.c:720:     def_detour_asm_vars(arch_jump_label_transform);
# 720 "handlers.c" 1
	#define arch_jump_label_transform_jmp 192	#
# 0 "" 2
# handlers.c:721:     def_detour_asm_vars(module_param_sysfs_setup);
# 721 "handlers.c" 1
	#define module_param_sysfs_setup_jmp 288	#
# 0 "" 2
# handlers.c:722:     def_detour_asm_vars(module_param_sysfs_remove);
# 722 "handlers.c" 1
	#define module_param_sysfs_remove_jmp 384	#
# 0 "" 2
# handlers.c:723:     def_detour_asm_vars(wake_up_new_task);
# 723 "handlers.c" 1
	#define wake_up_new_task_jmp 480	#
# 0 "" 2
# handlers.c:724:     def_detour_asm_vars(flush_old_exec);
# 724 "handlers.c" 1
	#define flush_old_exec_jmp 576	#
# 0 "" 2
# handlers.c:725:     def_detour_asm_vars(begin_new_exec);
# 725 "handlers.c" 1
	#define begin_new_exec_jmp 672	#
# 0 "" 2
# handlers.c:726:     def_detour_asm_vars(do_exit);
# 726 "handlers.c" 1
	#define do_exit_jmp 768	#
# 0 "" 2
# handlers.c:727:     def_detour_asm_vars(arch_ptrace);
# 727 "handlers.c" 1
	#define arch_ptrace_jmp 864	#
# 0 "" 2
# handlers.c:728:     def_detour_asm_vars(compat_arch_ptrace);
# 728 "handlers.c" 1
	#define compat_arch_ptrace_jmp 960	#
# 0 "" 2
# handlers.c:729:     def_detour_asm_vars(process_vm_rw_core);
# 729 "handlers.c" 1
	#define process_vm_rw_core_jmp 1056	#
# 0 "" 2
# handlers.c:730:     def_detour_asm_vars(__vma_link_rb);
# 730 "handlers.c" 1
	#define __vma_link_rb_jmp 1152	#
# 0 "" 2
# handlers.c:731:     def_detour_asm_vars(change_protection);
# 731 "handlers.c" 1
	#define change_protection_jmp 1248	#
# 0 "" 2
# handlers.c:732:     def_detour_asm_vars(vma_adjust);
# 732 "handlers.c" 1
	#define vma_adjust_jmp 1344	#
# 0 "" 2
# handlers.c:733:     def_detour_asm_vars(__vma_adjust);
# 733 "handlers.c" 1
	#define __vma_adjust_jmp 1440	#
# 0 "" 2
# handlers.c:734:     def_detour_asm_vars(vma_rb_erase);
# 734 "handlers.c" 1
	#define vma_rb_erase_jmp 1536	#
# 0 "" 2
# handlers.c:735:     def_detour_asm_vars(__vma_rb_erase);
# 735 "handlers.c" 1
	#define __vma_rb_erase_jmp 1632	#
# 0 "" 2
# handlers.c:736:     def_detour_asm_vars(expand_downwards);
# 736 "handlers.c" 1
	#define expand_downwards_jmp 1728	#
# 0 "" 2
# handlers.c:737:     def_detour_asm_vars(complete_signal);
# 737 "handlers.c" 1
	#define complete_signal_jmp 1824	#
# 0 "" 2
# handlers.c:738:     def_detour_asm_vars(text_poke);
# 738 "handlers.c" 1
	#define text_poke_jmp 1920	#
# 0 "" 2
# handlers.c:739:     def_detour_asm_vars(__text_poke);
# 739 "handlers.c" 1
	#define __text_poke_jmp 2016	#
# 0 "" 2
# handlers.c:740:     def_detour_asm_vars(ftrace_write);
# 740 "handlers.c" 1
	#define ftrace_write_jmp 2112	#
# 0 "" 2
# handlers.c:741:     def_detour_asm_vars(panic);
# 741 "handlers.c" 1
	#define panic_jmp 2208	#
# 0 "" 2
# handlers.c:742:     def_detour_asm_vars(crash_kexec);
# 742 "handlers.c" 1
	#define crash_kexec_jmp 2304	#
# 0 "" 2
# handlers.c:743:     def_detour_asm_vars(__access_remote_vm);
# 743 "handlers.c" 1
	#define __access_remote_vm_jmp 2400	#
# 0 "" 2
# handlers.c:745:     def_detour_hijack_asm_vars(mprotect_fixup, vma_wants_writenotify);
# 745 "handlers.c" 1
	#define mprotect_fixup_vma_wants_writenotify_jmp 2496	#
# 0 "" 2
# handlers.c:746:     def_detour_hijack_asm_vars(do_munmap, rb_erase);
# 746 "handlers.c" 1
	#define do_munmap_rb_erase_jmp 2592	#
# 0 "" 2
# handlers.c:747:     def_detour_hijack_asm_vars(vma_adjust, rb_erase);
# 747 "handlers.c" 1
	#define vma_adjust_rb_erase_jmp 2688	#
# 0 "" 2
# handlers.c:749:     def_detour_asm_vars(do_rmdir);
# 749 "handlers.c" 1
	#define do_rmdir_jmp 2784	#
# 0 "" 2
# handlers.c:750:     def_detour_asm_vars(sys_sysfs);
# 750 "handlers.c" 1
	#define sys_sysfs_jmp 2880	#
# 0 "" 2
# handlers.c:751:     def_detour_asm_vars(sys_read);
# 751 "handlers.c" 1
	#define sys_read_jmp 2976	#
# 0 "" 2
# handlers.c:752:     def_detour_asm_vars(sys_getppid);
# 752 "handlers.c" 1
	#define sys_getppid_jmp 3072	#
# 0 "" 2
# handlers.c:753:     def_detour_asm_vars(sys_getsid);
# 753 "handlers.c" 1
	#define sys_getsid_jmp 3168	#
# 0 "" 2
# handlers.c:754:     def_detour_asm_vars(sys_getuid);
# 754 "handlers.c" 1
	#define sys_getuid_jmp 3264	#
# 0 "" 2
# handlers.c:755:     def_detour_asm_vars(sys_geteuid);
# 755 "handlers.c" 1
	#define sys_geteuid_jmp 3360	#
# 0 "" 2
# handlers.c:756:     def_detour_asm_vars(sys_shutdown);
# 756 "handlers.c" 1
	#define sys_shutdown_jmp 3456	#
# 0 "" 2
# handlers.c:757:     def_detour_asm_vars(do_sysinfo);
# 757 "handlers.c" 1
	#define do_sysinfo_jmp 3552	#
# 0 "" 2
# handlers.c:758: }
#NO_APP
	ret
	.cfi_endproc
.LFE47:
	.size	__asm_defines, .-__asm_defines
	.globl	hypercall_info
	.section	.detours,"aw",@progbits
	.align 32
	.type	hypercall_info, @object
	.size	hypercall_info, 3672
hypercall_info:
# DetoursCount:
	.zero	8
	.quad	37
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
	.zero	104
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
