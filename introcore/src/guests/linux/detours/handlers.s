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
# handlers.c:164:     return  (hypercall_info.Detours[id].EnableOptions == -1ULL)
	inc	rax	# tmp95
	imul	rax, rax, 96	# tmp96, tmp95,
# handlers.c:171: {
	push	rcx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 2, -40
	push	rdx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -48
# handlers.c:164:     return  (hypercall_info.Detours[id].EnableOptions == -1ULL)
	lea	rdx, hypercall_info[rip]	# tmp93,
	mov	rax, QWORD PTR 8[rdx+rax]	# _8, hypercall_info.Detours[id_5(D)].EnableOptions
# handlers.c:165:         || ((hypercall_info.Detours[id].EnableOptions & hypercall_info.ProtectionOptions) != 0);
	cmp	rax, -1	# _8,
	je	.L2	#,
# handlers.c:173:         return 0;
	xor	esi, esi	# <retval>
# handlers.c:172:     if (!is_detour_enabled(id)) {
	test	QWORD PTR hypercall_info[rip], rax	# hypercall_info.ProtectionOptions, _8
	je	.L1	#,
.L2:
# handlers.c:178:     asm volatile("vmcall" : "+S" (_out_param), "+a"(_out_value) : "D"(24), "b"(id): );
	xor	esi, esi	# _out_param
	mov	eax, 34	# _out_value,
	mov	edi, 24	# tmp103,
#APP
# 178 "handlers.c" 1
	vmcall
# 0 "" 2
# handlers.c:181:     volatile struct inactive_task_frame _reserved = { 0 };
#NO_APP
	lea	rdi, -56[rsp]	# tmp106,
	mov	ecx, 14	# tmp108,
	xor	eax, eax	# tmp107
	rep stosd
.L1:
# handlers.c:185: }
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
# handlers.c:191:     void *path = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
	mov	esi, DWORD PTR hypercall_info[rip+4996]	# hypercall_info.OsSpecificFields.CurrentCpuOffset, hypercall_info.OsSpecificFields.CurrentCpuOffset
#APP
# 191 "handlers.c" 1
	mov esi, gs:[rsi]	# ret, hypercall_info.OsSpecificFields.CurrentCpuOffset
# 0 "" 2
# handlers.c:193:     return hypercall_info.OsSpecificFields.DPathFnPtr(path_struct, path, PAGE_SIZE);
#NO_APP
	mov	edx, 4096	#,
# handlers.c:191:     void *path = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
	sal	esi, 12	#,
	add	rsi, QWORD PTR hypercall_info[rip+5000]	# path, hypercall_info.OsSpecificFields.PercpuMemPtr
# handlers.c:193:     return hypercall_info.OsSpecificFields.DPathFnPtr(path_struct, path, PAGE_SIZE);
	call	[QWORD PTR hypercall_info[rip+5008]]	# hypercall_info.OsSpecificFields.DPathFnPtr
# handlers.c:194: }
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
# handlers.c:203:     while (len--)
	xor	ecx, ecx	# ivtmp.192
# handlers.c:199: {
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
.L14:
# handlers.c:203:     while (len--)
	cmp	rdx, rcx	# len, ivtmp.192
	je	.L17	#,
# handlers.c:205:         *d++ = *s++;
	mov	dil, BYTE PTR [rsi+rcx]	# _1, MEM[base: src_7(D), index: ivtmp.192_14, offset: 0B]
	mov	BYTE PTR [rax+rcx], dil	# MEM[base: dest_6(D), index: ivtmp.192_14, offset: 0B], _1
	inc	rcx	# ivtmp.192
	jmp	.L14	#
.L17:
# handlers.c:209: }
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
# handlers.c:217:     regs.Rax = __read_reg("rax");
#APP
# 217 "handlers.c" 1
	mov rax, rax	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR [rsp], rax	# regs.Rax, val
# handlers.c:218:     regs.Rcx = __read_reg("rcx");
#APP
# 218 "handlers.c" 1
	mov rax, rcx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 8[rsp], rax	# regs.Rcx, val
# handlers.c:219:     regs.Rdx = __read_reg("rdx");
#APP
# 219 "handlers.c" 1
	mov rax, rdx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 16[rsp], rax	# regs.Rdx, val
# handlers.c:220:     regs.Rbx = __read_reg("rbx");
#APP
# 220 "handlers.c" 1
	mov rax, rbx	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 24[rsp], rax	# regs.Rbx, val
# handlers.c:221:     regs.Rsp = __read_reg("rsp");
#APP
# 221 "handlers.c" 1
	mov rax, rsp	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 32[rsp], rax	# regs.Rsp, val
# handlers.c:222:     regs.Rbp = __read_reg("rbp");
#APP
# 222 "handlers.c" 1
	mov rax, rbp	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 40[rsp], rax	# regs.Rbp, val
# handlers.c:223:     regs.Rsi = __read_reg("rsi");
#APP
# 223 "handlers.c" 1
	mov rax, rsi	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 48[rsp], rax	# regs.Rsi, val
# handlers.c:224:     regs.Rdi = __read_reg("rdi");
#APP
# 224 "handlers.c" 1
	mov rax, rdi	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 56[rsp], rax	# regs.Rdi, val
# handlers.c:225:     regs.R8 = __read_reg("r8");
#APP
# 225 "handlers.c" 1
	mov rax, r8	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 64[rsp], rax	# regs.R8, val
# handlers.c:226:     regs.R9 = __read_reg("r9");
#APP
# 226 "handlers.c" 1
	mov rax, r9	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 72[rsp], rax	# regs.R9, val
# handlers.c:227:     regs.R10 = __read_reg("r10");
#APP
# 227 "handlers.c" 1
	mov rax, r10	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 80[rsp], rax	# regs.R10, val
# handlers.c:228:     regs.R11 = __read_reg("r11");
#APP
# 228 "handlers.c" 1
	mov rax, r11	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 88[rsp], rax	# regs.R11, val
# handlers.c:229:     regs.R12 = __read_reg("r12");
#APP
# 229 "handlers.c" 1
	mov rax, r12	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 96[rsp], rax	# regs.R12, val
# handlers.c:230:     regs.R13 = __read_reg("r13");
#APP
# 230 "handlers.c" 1
	mov rax, r13	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 104[rsp], rax	# regs.R13, val
# handlers.c:231:     regs.R14 = __read_reg("r14");
#APP
# 231 "handlers.c" 1
	mov rax, r14	# val
	
# 0 "" 2
#NO_APP
	mov	QWORD PTR 112[rsp], rax	# regs.R14, val
# handlers.c:232:     regs.R15 = __read_reg("r15");
#APP
# 232 "handlers.c" 1
	mov rax, r15	# val
	
# 0 "" 2
# handlers.c:234:     void *dst = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
#NO_APP
	mov	edi, DWORD PTR hypercall_info[rip+4996]	# hypercall_info.OsSpecificFields.CurrentCpuOffset, hypercall_info.OsSpecificFields.CurrentCpuOffset
# handlers.c:232:     regs.R15 = __read_reg("r15");
	mov	QWORD PTR 120[rsp], rax	# regs.R15, val
# handlers.c:234:     void *dst = (void *)((unsigned long)hypercall_info.OsSpecificFields.PercpuMemPtr + (current_cpu * PAGE_SIZE));
#APP
# 234 "handlers.c" 1
	mov edi, gs:[rdi]	# ret, hypercall_info.OsSpecificFields.CurrentCpuOffset
# 0 "" 2
#NO_APP
	sal	edi, 12	#,
	add	rdi, QWORD PTR hypercall_info[rip+5000]	# dst, hypercall_info.OsSpecificFields.PercpuMemPtr
# handlers.c:235:     _memcpy(dst, &regs, sizeof(regs));
	mov	rsi, rsp	# tmp131,
	mov	edx, 224	#,
	call	_memcpy	#
# handlers.c:236: }
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
# handlers.c:243:     void *current = current_task;
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:242: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rdx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -40
	push	rax	#
	.cfi_def_cfa_offset 48
	.cfi_offset 0, -48
# handlers.c:243:     void *current = current_task;
#APP
# 243 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
# handlers.c:245:     if (!hypercall_info.OsSpecificFields.Info.CredAltered) {
#NO_APP
	cmp	DWORD PTR hypercall_info[rip+4912], 0	# hypercall_info.OsSpecificFields.Info.CredAltered,
	jne	.L21	#,
# handlers.c:246:         uint32_t *in_execve = (uint32_t *)((unsigned long)(current) + hypercall_info.OsSpecificFields.Task.InExecve);
	mov	eax, DWORD PTR hypercall_info[rip+4956]	# hypercall_info.OsSpecificFields.Task.InExecve, hypercall_info.OsSpecificFields.Task.InExecve
# handlers.c:248:         if ((*in_execve & BIT(hypercall_info.OsSpecificFields.Task.InExecveBit))) {
	mov	edx, DWORD PTR [r8+rax]	# *in_execve_18, *in_execve_18
	mov	eax, DWORD PTR hypercall_info[rip+4960]	# hypercall_info.OsSpecificFields.Task.InExecveBit, hypercall_info.OsSpecificFields.Task.InExecveBit
	bt	rdx, rax	# *in_execve_18, hypercall_info.OsSpecificFields.Task.InExecveBit
	jc	.L20	#,
.L21:
	mov	r9, rdi	# creds, creds
# handlers.c:253:     vmcall_2(det_commit_creds, current, creds);
	xor	edi, edi	#
	call	vmcall	#
.L20:
# handlers.c:254: }
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
# handlers.c:261:     vmcall_1(det_module_param_sysfs_setup, module);
	mov	edi, 2	#,
	call	vmcall	#
# handlers.c:262: }
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
# handlers.c:269:     vmcall_1(det_module_param_sysfs_remove, module);
	mov	edi, 3	#,
	call	vmcall	#
# handlers.c:270: }
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
# handlers.c:277:     vmcall_2(det_wake_up_new_task, current_task, task);
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:276: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:277:     vmcall_2(det_wake_up_new_task, current_task, task);
#APP
# 277 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 4	#,
	call	vmcall	#
# handlers.c:278: }
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
# handlers.c:285:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4964]	# hypercall_info.OsSpecificFields.Binprm.FileOffset, hypercall_info.OsSpecificFields.Binprm.FileOffset
# handlers.c:284: {
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
# handlers.c:285:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	rdi, QWORD PTR [rax+rdi]	# file, *_4
# handlers.c:288:     if (!file) {
	test	rdi, rdi	# file
	je	.L31	#,
# handlers.c:292:     path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;
	mov	edx, DWORD PTR hypercall_info[rip+4972]	# hypercall_info.OsSpecificFields.File.PathOffset, hypercall_info.OsSpecificFields.File.PathOffset
	add	rdi, rdx	# file, hypercall_info.OsSpecificFields.File.PathOffset
.L31:
# handlers.c:295:     return vmcall_3(det_flush_old_exec, current_task, binprm, d_path((void *)path_struct));
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 295 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	call	d_path	#
	mov	r10, rax	# _12,
	mov	edi, 5	#,
	call	vmcall	#
# handlers.c:296: }
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
# handlers.c:303:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4964]	# hypercall_info.OsSpecificFields.Binprm.FileOffset, hypercall_info.OsSpecificFields.Binprm.FileOffset
# handlers.c:302: {
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
# handlers.c:303:     unsigned long file = *(unsigned long *)(binprm + hypercall_info.OsSpecificFields.Binprm.FileOffset);
	mov	rdi, QWORD PTR [rax+rdi]	# file, *_4
# handlers.c:306:     if (!file) {
	test	rdi, rdi	# file
	je	.L37	#,
# handlers.c:310:     path_struct = file + hypercall_info.OsSpecificFields.File.PathOffset;
	mov	edx, DWORD PTR hypercall_info[rip+4972]	# hypercall_info.OsSpecificFields.File.PathOffset, hypercall_info.OsSpecificFields.File.PathOffset
	add	rdi, rdx	# file, hypercall_info.OsSpecificFields.File.PathOffset
.L37:
# handlers.c:313:     return vmcall_3(det_begin_new_exec, current_task, binprm, d_path((void *)path_struct));
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 313 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	call	d_path	#
	mov	r10, rax	# _12,
	mov	edi, 6	#,
	call	vmcall	#
# handlers.c:314: }
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
# handlers.c:321:     vmcall_2(det_do_exit, current_task, code);
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:320: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:321:     vmcall_2(det_do_exit, current_task, code);
#APP
# 321 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 7	#,
	call	vmcall	#
# handlers.c:322: }
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
# handlers.c:338:     return 0;
	xor	eax, eax	# <retval>
# handlers.c:330:         || request == PTRACE_POKETEXT
	cmp	rsi, 19	# request,
	ja	.L49	#,
# handlers.c:328: {
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
# handlers.c:329:     if (request == PTRACE_POKEDATA
	mov	edx, 565296	# tmp99,
	bt	rdx, rsi	# tmp99, request
	jnc	.L44	#,
	mov	r9, rsi	# request, request
	mov	r8, rdi	# child, child
# handlers.c:335:         return vmcall_2(det_arch_ptrace, child, request);
	mov	edi, 8	#,
	call	vmcall	#
.L44:
# handlers.c:339: }
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
# handlers.c:347:     if (!vm_write) {
	test	r9d, r9d	# vm_write
	je	.L56	#,
# handlers.c:346: {
	push	r9	#
	.cfi_def_cfa_offset 16
	.cfi_offset 9, -16
	push	r8	#
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
# handlers.c:351:     return vmcall_2(det_process_vm_rw_core, current_task, pid);
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
# handlers.c:346: {
	push	rdi	#
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
# handlers.c:351:     return vmcall_2(det_process_vm_rw_core, current_task, pid);
#APP
# 351 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, edi	# __p2, pid
	mov	edi, 10	#,
	call	vmcall	#
# handlers.c:352: }
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
# handlers.c:359:     long mm_flags = *(long *)((long)(mm) + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4944]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:361:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rdi+rax]	# *_5, *_5
	mov	eax, DWORD PTR hypercall_info[rip+4952]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_5, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L61	#,
# handlers.c:365:     long file = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4924]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:366:     if (file) {
	cmp	QWORD PTR [rax+rsi], 0	# *_14,
	jne	.L61	#,
# handlers.c:370:     long vm_flags = *(long *)((long)(vma) + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4920]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:371:     if (!(vm_flags & VM_EXEC)) {
	test	BYTE PTR [rsi+rax], 4	# *_18,
	je	.L61	#,
	mov	r8, rsi	# vma, vma
	mov	r9, rdi	# mm, mm
# handlers.c:375:     vmcall_2(det___vma_link_rb, vma, mm);
	mov	edi, 11	#,
	call	vmcall	#
.L61:
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
# handlers.c:384:     long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4924]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:385:     if (file) {
	cmp	QWORD PTR [rax+rdi], 0	# *_4,
	jne	.L70	#,
# handlers.c:389:     long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4916]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# mm, *_8
# handlers.c:390:     long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4944]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:392:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+r9]	# *_12, *_12
	mov	eax, DWORD PTR hypercall_info[rip+4952]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_12, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L70	#,
# handlers.c:396:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4920]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:398:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	mov	esi, DWORD PTR hypercall_info[rip+4940]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
# handlers.c:396:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	rdx, QWORD PTR [rax+rdi]	# vm_flags, *_20
	mov	rax, rdx	# _42, vm_flags
	and	eax, 4	# _42,
# handlers.c:398:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	bt	rdx, rsi	# vm_flags, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L72	#,
# handlers.c:398:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	test	rax, rax	# _42
	je	.L73	#,
	jmp	.L70	#
.L72:
# handlers.c:399:         || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {
	test	rax, rax	# _42
	je	.L70	#,
.L73:
	mov	r8, rdi	# vma, vma
# handlers.c:402:         vmcall_2(det_change_protection, vma, mm);
	mov	edi, 12	#,
	call	vmcall	#
.L70:
# handlers.c:404: }
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
# handlers.c:415:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	edx, DWORD PTR hypercall_info[rip+4920]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:412: {
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:412: {
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
# handlers.c:413:     *skip_call = 1;
	mov	QWORD PTR [rax], 1	# *skip_call_21(D),
# handlers.c:416:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rsi, QWORD PTR [rdx+rdi]	# *_4, *_4
	mov	edx, DWORD PTR hypercall_info[rip+4940]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rsi, rdx	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L84	#,
# handlers.c:420:     *saved_vma = vma;
	mov	rdx, QWORD PTR 48[rsp]	# saved_vma, saved_vma
	mov	QWORD PTR [rdx], rdi	# *saved_vma_25(D), vma
# handlers.c:421:     *next = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmNextOffset);
	mov	edx, DWORD PTR hypercall_info[rip+4928]	# hypercall_info.OsSpecificFields.Vma.VmNextOffset, hypercall_info.OsSpecificFields.Vma.VmNextOffset
	mov	rsi, QWORD PTR [rdx+rdi]	# _13, *_12
	mov	rdx, QWORD PTR 56[rsp]	# next, next
	mov	QWORD PTR [rdx], rsi	# *next_27(D), _13
# handlers.c:422:     *prev = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.VmPrevOffset);
	mov	edx, DWORD PTR hypercall_info[rip+4932]	# hypercall_info.OsSpecificFields.Vma.VmPrevOffset, hypercall_info.OsSpecificFields.Vma.VmPrevOffset
	mov	rsi, QWORD PTR [rdx+rdi]	# _18, *_17
	mov	rdx, QWORD PTR 64[rsp]	# prev, prev
	mov	QWORD PTR [rdx], rsi	# *prev_29(D), _18
# handlers.c:423:     *skip_call = 0;
	mov	QWORD PTR [rax], 0	# *skip_call_21(D),
.L84:
# handlers.c:426: }
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
# handlers.c:435:     long mm = *(long *)(saved_vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4916]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
# handlers.c:433: {
	mov	rcx, QWORD PTR 80[rsp]	# saved_vma, saved_vma
# handlers.c:435:     long mm = *(long *)(saved_vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	rbx, QWORD PTR [rax+rcx]	# mm, *_4
# handlers.c:437:     vmcall_4(det_vma_adjust, svma, mm, next, prev);
	mov	r8, rcx	# __p1, saved_vma
	mov	r9, rbx	# __p2, mm
	mov	r10, QWORD PTR 88[rsp]	# __p3, next
	mov	r11, QWORD PTR 96[rsp]	# __p4, prev
	mov	edi, 13	#,
	call	vmcall	#
# handlers.c:438:     vmcall_4(det___vma_adjust, svma, mm, next, prev);
	mov	r10, QWORD PTR 88[rsp]	# __p3, next
	mov	r11, QWORD PTR 96[rsp]	# __p4, prev
	mov	edi, 14	#,
	call	vmcall	#
# handlers.c:439: }
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
# handlers.c:446:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4920]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:447:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_4, *_4
	mov	eax, DWORD PTR hypercall_info[rip+4940]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L92	#,
	mov	rcx, rdi	# vma, vma
# handlers.c:451:     vmcall_2(det_vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
	mov	r8, rdi	# __p1, vma
	mov	eax, DWORD PTR hypercall_info[rip+4916]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# __p2, *_13
	mov	edi, 15	#,
	call	vmcall	#
# handlers.c:452:     vmcall_2(det___vma_rb_erase, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset));
	mov	eax, DWORD PTR hypercall_info[rip+4916]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rcx]	# __p2, *_19
	mov	edi, 16	#,
	call	vmcall	#
.L92:
# handlers.c:453: }
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
# handlers.c:460:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4920]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:461:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_4, *_4
	mov	eax, DWORD PTR hypercall_info[rip+4940]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_4, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L98	#,
	mov	r10, rsi	# address, address
# handlers.c:465:     vmcall_3(det_expand_downwards, vma, *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset), address);
	mov	r8, rdi	# __p1, vma
	mov	eax, DWORD PTR hypercall_info[rip+4916]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# __p2, *_13
	mov	edi, 17	#,
	call	vmcall	#
.L98:
# handlers.c:466: }
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
# handlers.c:474:         && sig != SIGILL
	cmp	edi, 11	# sig,
	ja	.L105	#,
# handlers.c:473:     if (sig != SIGQUIT
	mov	eax, 2520	# tmp100,
	bt	rax, rdi	# tmp100, sig
	jc	.L106	#,
.L105:
	mov	edx, ecx	# <retval>, sig
	jmp	.L104	#
.L106:
	mov	r8, rsi	# task, task
# handlers.c:483:     int new_sig = vmcall_3(det_complete_signal, task, sig, type);
	movsx	r9, edi	# __p2, sig
	mov	r10d, edx	# __p3, type
	mov	edi, 18	#,
	call	vmcall	#
	mov	edx, eax	# <retval>, _20
# handlers.c:484:     return new_sig ? new_sig : sig;
	test	eax, eax	# _20
	je	.L105	#,
.L104:
# handlers.c:485: }
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
# handlers.c:492:     vmcall_3(det_text_poke, addr, opcode, len);
	mov	r8, rdi	# __p1, addr
# handlers.c:491: {
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
# handlers.c:492:     vmcall_3(det_text_poke, addr, opcode, len);
	mov	r9, rsi	# __p2, opcode
	mov	r10, rdx	# __p3, len
	mov	edi, 19	#,
	call	vmcall	#
# handlers.c:493:     vmcall_3(det___text_poke, addr, opcode, len);
	mov	edi, 20	#,
	call	vmcall	#
# handlers.c:494: }
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
# handlers.c:501:     vmcall_3(det_ftrace_write, ip, val, size);
	movsx	r10, edx	# __p3, size
	mov	edi, 21	#,
	call	vmcall	#
# handlers.c:502: }
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
# handlers.c:509:     vmcall(det_panic);
	mov	edi, 22	#,
# handlers.c:508: {
	push	rax	#
	.cfi_def_cfa_offset 24
	.cfi_offset 0, -24
# handlers.c:509:     vmcall(det_panic);
	call	vmcall	#
# handlers.c:510: }
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
# handlers.c:517:     vmcall_2(det_arch_jump_label_transform, entry, type);
	mov	r9d, esi	# __p2, type
	mov	edi, 1	#,
	call	vmcall	#
# handlers.c:518: }
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
# handlers.c:526:     if ((gup_flags & 1) == 0) {
	test	r9b, 1	# gup_flags,
	je	.L123	#,
# handlers.c:525: {
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
# handlers.c:530:     vmcall_5(det___access_remote_vm, mm, addr, buf, len, gup_flags);
	mov	edi, 24	#,
	call	vmcall	#
# handlers.c:531: }
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
# handlers.c:538:     unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+4936]	# hypercall_info.OsSpecificFields.Vma.Rb, hypercall_info.OsSpecificFields.Vma.Rb
	sub	rdi, rax	# vma_vm_rb, hypercall_info.OsSpecificFields.Vma.Rb
# handlers.c:540:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4920]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:542:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_8, *_8
	mov	eax, DWORD PTR hypercall_info[rip+4940]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_8, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L126	#,
	mov	r8, rdi	# vma, vma_vm_rb
	mov	r9, rsi	# mm_mm_rb, mm_mm_rb
# handlers.c:546:     vmcall_2(det_do_munmap_rb_erase, vma, mm);
# handlers.c:539:     unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+4948]	# _3, hypercall_info.OsSpecificFields.Mm.Rb
	sub	r9, rax	# __p2, _3
# handlers.c:546:     vmcall_2(det_do_munmap_rb_erase, vma, mm);
	mov	edi, 26	#,
	call	vmcall	#
.L126:
# handlers.c:547: }
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
# handlers.c:554:     unsigned long vma = vma_vm_rb - hypercall_info.OsSpecificFields.Vma.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+4936]	# hypercall_info.OsSpecificFields.Vma.Rb, hypercall_info.OsSpecificFields.Vma.Rb
	sub	rdi, rax	# vma_vm_rb, hypercall_info.OsSpecificFields.Vma.Rb
# handlers.c:556:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4920]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:558:     if (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+rdi]	# *_8, *_8
	mov	eax, DWORD PTR hypercall_info[rip+4940]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	bt	rdx, rax	# *_8, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L132	#,
	mov	r8, rdi	# vma, vma_vm_rb
	mov	r9, rsi	# mm_mm_rb, mm_mm_rb
# handlers.c:562:     vmcall_2(det_vma_adjust_rb_erase, vma, mm);
# handlers.c:555:     unsigned long mm = mm_mm_rb - hypercall_info.OsSpecificFields.Mm.Rb;
	mov	eax, DWORD PTR hypercall_info[rip+4948]	# _3, hypercall_info.OsSpecificFields.Mm.Rb
	sub	r9, rax	# __p2, _3
# handlers.c:562:     vmcall_2(det_vma_adjust_rb_erase, vma, mm);
	mov	edi, 27	#,
	call	vmcall	#
.L132:
# handlers.c:563: }
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
# handlers.c:570:     long file = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FileOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4924]	# hypercall_info.OsSpecificFields.Vma.FileOffset, hypercall_info.OsSpecificFields.Vma.FileOffset
# handlers.c:571:     if (file) {
	cmp	QWORD PTR [rax+rdi], 0	# *_4,
	jne	.L138	#,
# handlers.c:575:     long mm = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.MmOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4916]	# hypercall_info.OsSpecificFields.Vma.MmOffset, hypercall_info.OsSpecificFields.Vma.MmOffset
	mov	r9, QWORD PTR [rax+rdi]	# mm, *_8
# handlers.c:576:     long mm_flags = *(long *)(mm + hypercall_info.OsSpecificFields.Mm.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4944]	# hypercall_info.OsSpecificFields.Mm.FlagsOffset, hypercall_info.OsSpecificFields.Mm.FlagsOffset
# handlers.c:578:     if (!(mm_flags & BIT(hypercall_info.OsSpecificFields.Mm.ProtectionBit))) {
	mov	rdx, QWORD PTR [rax+r9]	# *_12, *_12
	mov	eax, DWORD PTR hypercall_info[rip+4952]	# hypercall_info.OsSpecificFields.Mm.ProtectionBit, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	bt	rdx, rax	# *_12, hypercall_info.OsSpecificFields.Mm.ProtectionBit
	jnc	.L138	#,
# handlers.c:582:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	eax, DWORD PTR hypercall_info[rip+4920]	# hypercall_info.OsSpecificFields.Vma.FlagsOffset, hypercall_info.OsSpecificFields.Vma.FlagsOffset
# handlers.c:584:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	mov	esi, DWORD PTR hypercall_info[rip+4940]	# hypercall_info.OsSpecificFields.Vma.ProtectionBit, hypercall_info.OsSpecificFields.Vma.ProtectionBit
# handlers.c:582:     long vm_flags = *(long *)(vma + hypercall_info.OsSpecificFields.Vma.FlagsOffset);
	mov	rdx, QWORD PTR [rax+rdi]	# vm_flags, *_20
	mov	rax, rdx	# _41, vm_flags
	and	eax, 4	# _41,
# handlers.c:584:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	bt	rdx, rsi	# vm_flags, hypercall_info.OsSpecificFields.Vma.ProtectionBit
	jnc	.L140	#,
# handlers.c:584:     if (((vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && !(vm_flags & VM_EXEC))
	test	rax, rax	# _41
	je	.L141	#,
	jmp	.L138	#
.L140:
# handlers.c:585:         || (!(vm_flags & BIT(hypercall_info.OsSpecificFields.Vma.ProtectionBit)) && (vm_flags & VM_EXEC))) {
	test	rax, rax	# _41
	je	.L138	#,
.L141:
	mov	r8, rdi	# vma, vma
# handlers.c:588:         vmcall_2(det_mprotect_fixup_vma_wants_writenotify, vma, mm);
	mov	edi, 25	#,
	call	vmcall	#
.L138:
# handlers.c:590: }
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
# handlers.c:596:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:597:     *save_pathname=pathname;
	mov	rax, QWORD PTR 32[rsp]	# save_pathname, save_pathname
	mov	QWORD PTR [rax], rsi	# *save_pathname_4(D), pathname
# handlers.c:598: }
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
# handlers.c:604:     long save_rax = __read_reg("rax");
#APP
# 604 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:605:     vmcall_3(det_do_rmdir, current_task, save_pathname,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 605 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_pathname
	mov	edi, 28	#,
	call	vmcall	#
# handlers.c:606: }
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
# handlers.c:612:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_5(D),
# handlers.c:613:     *save_option=option;
	mov	rax, QWORD PTR 48[rsp]	# save_option, save_option
	mov	BYTE PTR [rax], dil	# *save_option_8(D), option
# handlers.c:614:     *save_arg1=arg1;
	mov	rax, QWORD PTR 56[rsp]	# save_arg1, save_arg1
	mov	QWORD PTR [rax], rsi	# *save_arg1_11(D), arg1
# handlers.c:615:     *save_arg2=arg2;
	mov	rax, QWORD PTR 64[rsp]	# save_arg2, save_arg2
	mov	QWORD PTR [rax], rdx	# *save_arg2_14(D), arg2
# handlers.c:616: }
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
# handlers.c:622:     long x = __read_reg("rax");
#APP
# 622 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:623: 	vmcall_5(det_sys_sysfs,current_task,save_option,save_arg1,save_arg2,x);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 623 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_option
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_arg1
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_arg2
	mov	edi, 29	#,
	call	vmcall	#
# handlers.c:624: }
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
# handlers.c:630:     long save_rax = __read_reg("rax");
#APP
# 630 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:632:     vmcall_5(det_sys_read,current_task,save_fd, save_buf, save_count,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 632 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 80[rsp]	# __p3, save_buf
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_count
	mov	edi, 30	#,
	call	vmcall	#
# handlers.c:633: }
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
# handlers.c:639:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:640:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:641:     *save_buf=buf;
	mov	rax, QWORD PTR 56[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:642:     *save_count=count;
	mov	rax, QWORD PTR 64[rsp]	# save_count, save_count
	mov	DWORD PTR [rax], edx	# *save_count_10(D), count
# handlers.c:643: }
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
# handlers.c:649:     long save_rax = __read_reg("rax");
#APP
# 649 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:651:     vmcall_2(det_sys_getppid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 651 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 31	#,
	call	vmcall	#
# handlers.c:652: }
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
# handlers.c:658:     *skip_call=0;
	mov	rax, QWORD PTR 16[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:659: }
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
# handlers.c:665:     long save_rax = __read_reg("rax");
#APP
# 665 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:667:     vmcall_3(det_sys_getsid,current_task,save_pid,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 667 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 56[rsp]	# __p2, save_pid
	mov	edi, 32	#,
	call	vmcall	#
# handlers.c:668: }
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
# handlers.c:674:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:675:     *save_pid=pid;
	mov	rax, QWORD PTR 32[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], edi	# *save_pid_4(D), pid
# handlers.c:676: }
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
# handlers.c:682:     long save_rax = __read_reg("rax");
#APP
# 682 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:684:     vmcall_2(det_sys_getuid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 684 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 33	#,
	call	vmcall	#
# handlers.c:685: }
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
.LFB78:
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
.LFE78:
	.size	pre_sys_getuid, .-pre_sys_getuid
	.align 16
	.globl	sys_geteuid
	.type	sys_geteuid, @function
sys_geteuid:
.LFB41:
	.cfi_startproc
# handlers.c:697: {
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
# handlers.c:698:     long save_rax = __read_reg("rax");
#APP
# 698 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:700:     vmcall_2(det_sys_geteuid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 700 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 34	#,
	call	vmcall	#
# handlers.c:701: }
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
.LFB80:
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
.LFE80:
	.size	pre_sys_geteuid, .-pre_sys_geteuid
	.align 16
	.globl	sys_shutdown
	.type	sys_shutdown, @function
sys_shutdown:
.LFB43:
	.cfi_startproc
# handlers.c:713: {
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
# handlers.c:714:     long save_rax = __read_reg("rax");
#APP
# 714 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:716:     vmcall_4(det_sys_shutdown,current_task,save_a,save_b,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 716 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 64[rsp]	# __p2, save_a
	movsx	r10, DWORD PTR 72[rsp]	# __p3, save_b
	mov	edi, 35	#,
	call	vmcall	#
# handlers.c:717: }
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
# handlers.c:723:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:724:     *save_a=a;
	mov	rax, QWORD PTR 40[rsp]	# save_a, save_a
	mov	DWORD PTR [rax], edi	# *save_a_4(D), a
# handlers.c:725:     *save_b=b;
	mov	rax, QWORD PTR 48[rsp]	# save_b, save_b
	mov	DWORD PTR [rax], esi	# *save_b_7(D), b
# handlers.c:726: }
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
# handlers.c:732:     long save_rax = __read_reg("rax");
#APP
# 732 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:734:     vmcall_3(det_do_sysinfo,current_task,save_a,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 734 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 56[rsp]	# __p2, save_a
	mov	edi, 36	#,
	call	vmcall	#
# handlers.c:735: }
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
# handlers.c:741:     *skip_call=0;
	mov	rax, QWORD PTR 24[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:742:     *save_a=a;
	mov	rax, QWORD PTR 32[rsp]	# save_a, save_a
	mov	QWORD PTR [rax], rdi	# *save_a_4(D), a
# handlers.c:743: }
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
# handlers.c:749:     long save_rax = __read_reg("rax");
#APP
# 749 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:751:     vmcall_4(det_sys_capget,current_task,save_header,save_dataptr,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 751 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_header
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_dataptr
	mov	edi, 37	#,
	call	vmcall	#
# handlers.c:752: }
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
# handlers.c:758:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:759:     *save_header=header;
	mov	rax, QWORD PTR 40[rsp]	# save_header, save_header
	mov	QWORD PTR [rax], rdi	# *save_header_4(D), header
# handlers.c:760:     *save_dataptr=dataptr;
	mov	rax, QWORD PTR 48[rsp]	# save_dataptr, save_dataptr
	mov	QWORD PTR [rax], rsi	# *save_dataptr_7(D), dataptr
# handlers.c:761: }
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
# handlers.c:767:     long save_rax = __read_reg("rax");
#APP
# 767 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:769:     vmcall_4(det_sys_capset,current_task,save_header,save_data,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 769 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_header
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_data
	mov	edi, 38	#,
	call	vmcall	#
# handlers.c:770: }
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
.LFB88:
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
.LFE88:
	.size	pre_sys_capset, .-pre_sys_capset
	.align 16
	.globl	sys_statfs
	.type	sys_statfs, @function
sys_statfs:
.LFB51:
	.cfi_startproc
# handlers.c:784: {
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
# handlers.c:785:     long save_rax = __read_reg("rax");
#APP
# 785 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:787:     vmcall_4(det_sys_statfs,current_task,save_path,save_buf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 787 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 64[rsp]	# __p2, save_path
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_buf
	mov	edi, 39	#,
	call	vmcall	#
# handlers.c:788: }
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
# handlers.c:794:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:795:     *save_path=path;
	mov	rax, QWORD PTR 40[rsp]	# save_path, save_path
	mov	QWORD PTR [rax], rdi	# *save_path_4(D), path
# handlers.c:796:     *save_buf=buf;
	mov	rax, QWORD PTR 48[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:797: }
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
# handlers.c:803:     long save_rax = __read_reg("rax");
#APP
# 803 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:805:     vmcall_4(det_sys_fstatfs,current_task,save_fd,save_buf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 805 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_fd
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_buf
	mov	edi, 40	#,
	call	vmcall	#
# handlers.c:806: }
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
# handlers.c:812:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:813:     *save_fd=fd;
	mov	rax, QWORD PTR 40[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:814:     *save_buf=buf;
	mov	rax, QWORD PTR 48[rsp]	# save_buf, save_buf
	mov	QWORD PTR [rax], rsi	# *save_buf_7(D), buf
# handlers.c:815: }
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
# handlers.c:821:     long save_rax = __read_reg("rax");
#APP
# 821 "handlers.c" 1
	mov r9, rax	# val
	
# 0 "" 2
# handlers.c:823:     vmcall_2(det_sys_setsid,current_task,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 823 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	edi, 41	#,
	call	vmcall	#
# handlers.c:824: }
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
.LFB82:
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
.LFE82:
	.size	pre_sys_setsid, .-pre_sys_setsid
	.align 16
	.globl	sys_seccomp
	.type	sys_seccomp, @function
sys_seccomp:
.LFB57:
	.cfi_startproc
# handlers.c:836: {
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
# handlers.c:837:     long save_rax = __read_reg("rax");
#APP
# 837 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:839:     vmcall_5(det_sys_seccomp,current_task,save_op,save_flags,save_uargs,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 839 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_op
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_flags
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_uargs
	mov	edi, 42	#,
	call	vmcall	#
# handlers.c:840: }
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
# handlers.c:846:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:847:     *save_op=op;
	mov	rax, QWORD PTR 48[rsp]	# save_op, save_op
	mov	DWORD PTR [rax], edi	# *save_op_4(D), op
# handlers.c:848:     *save_flags=flags;
	mov	rax, QWORD PTR 56[rsp]	# save_flags, save_flags
	mov	DWORD PTR [rax], esi	# *save_flags_7(D), flags
# handlers.c:849:     *save_uargs=uargs;
	mov	rax, QWORD PTR 64[rsp]	# save_uargs, save_uargs
	mov	QWORD PTR [rax], rdx	# *save_uargs_10(D), uargs
# handlers.c:850: }
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
# handlers.c:856:     long save_rax = __read_reg("rax");
#APP
# 856 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:858:     vmcall_5(det_sys_tgkill,current_task,save_tgid,save_pid,save_sig,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 858 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 72[rsp]	# __p2, save_tgid
	movsx	r10, DWORD PTR 80[rsp]	# __p3, save_pid
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_sig
	mov	edi, 43	#,
	call	vmcall	#
# handlers.c:859: }
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
# handlers.c:865:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:866:     *save_tgid=tgid;
	mov	rax, QWORD PTR 48[rsp]	# save_tgid, save_tgid
	mov	DWORD PTR [rax], edi	# *save_tgid_4(D), tgid
# handlers.c:867:     *save_pid=pid;
	mov	rax, QWORD PTR 56[rsp]	# save_pid, save_pid
	mov	DWORD PTR [rax], esi	# *save_pid_7(D), pid
# handlers.c:868:     *save_sig=sig;
	mov	rax, QWORD PTR 64[rsp]	# save_sig, save_sig
	mov	DWORD PTR [rax], edx	# *save_sig_10(D), sig
# handlers.c:869: }
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
# handlers.c:875:     long save_rax = __read_reg("rax");
#APP
# 875 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:877:     vmcall_4(det_sys_tkill,current_task,save_pid,save_sig,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 877 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 64[rsp]	# __p2, save_pid
	movsx	r10, DWORD PTR 72[rsp]	# __p3, save_sig
	mov	edi, 44	#,
	call	vmcall	#
# handlers.c:878: }
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
.LFB86:
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
.LFE86:
	.size	pre_sys_tkill, .-pre_sys_tkill
	.align 16
	.globl	sys_ustat
	.type	sys_ustat, @function
sys_ustat:
.LFB63:
	.cfi_startproc
# handlers.c:892: {
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
# handlers.c:893:     long save_rax = __read_reg("rax");
#APP
# 893 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:895:     vmcall_4(det_sys_ustat,current_task,save_dev,save_ubuf,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 895 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_dev
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_ubuf
	mov	edi, 45	#,
	call	vmcall	#
# handlers.c:896: }
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
.LFB90:
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
.LFE90:
	.size	pre_sys_ustat, .-pre_sys_ustat
	.align 16
	.globl	sys_poll
	.type	sys_poll, @function
sys_poll:
.LFB65:
	.cfi_startproc
# handlers.c:910: {
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
# handlers.c:911:     long save_rax = __read_reg("rax");
#APP
# 911 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:913:     vmcall_5(det_sys_poll,current_task,save_ufds,save_nfds,save_timeout,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 913 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_ufds
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_nfds
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_timeout
	mov	edi, 46	#,
	call	vmcall	#
# handlers.c:914: }
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
# handlers.c:920:     *skip_call=0;
	mov	rax, QWORD PTR 32[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_3(D),
# handlers.c:921:     *save_ufds=ufds;
	mov	rax, QWORD PTR 40[rsp]	# save_ufds, save_ufds
	mov	QWORD PTR [rax], rdi	# *save_ufds_5(D), ufds
# handlers.c:923:     *save_nfds=timeout;
	mov	rax, QWORD PTR 48[rsp]	# save_nfds, save_nfds
	mov	DWORD PTR [rax], edx	# *save_nfds_8(D), timeout
# handlers.c:924: }
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
# handlers.c:930:     long save_rax = __read_reg("rax");
#APP
# 930 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:932:     vmcall_5(det_sys_sigprocmask,current_task,save_how,save_set,save_oset,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 932 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9, QWORD PTR 72[rsp]	# __p2, save_how
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_set
	movsx	r11, DWORD PTR 88[rsp]	# __p4, save_oset
	mov	edi, 47	#,
	call	vmcall	#
# handlers.c:933: }
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
# handlers.c:940:     *save_how=how;
	movsx	rdi, edi	# how, how
# handlers.c:938: {
	push	rsi	#
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	push	rdx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -32
	push	rax	#
	.cfi_def_cfa_offset 40
	.cfi_offset 0, -40
# handlers.c:939:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_8(D),
# handlers.c:940:     *save_how=how;
	mov	rax, QWORD PTR 48[rsp]	# save_how, save_how
	mov	QWORD PTR [rax], rdi	# *save_how_11(D), how
# handlers.c:941:     *save_set=set;
	mov	rax, QWORD PTR 56[rsp]	# save_set, save_set
	mov	DWORD PTR [rax], esi	# *save_set_14(D), set
# handlers.c:942:     *save_oset=oset;
	mov	rax, QWORD PTR 64[rsp]	# save_oset, save_oset
	mov	DWORD PTR [rax], edx	# *save_oset_17(D), oset
# handlers.c:943: }
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
# handlers.c:949:     long save_rax = __read_reg("rax");
#APP
# 949 "handlers.c" 1
	mov r11, rax	# val
	
# 0 "" 2
# handlers.c:951:     vmcall_4(det_sys_getrlimit,current_task,save_resource,save_rlim,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 951 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 64[rsp]	# __p2, save_resource
	mov	r10, QWORD PTR 72[rsp]	# __p3, save_rlim
	mov	edi, 48	#,
	call	vmcall	#
# handlers.c:952: }
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
.LFE92:
	.size	pre_sys_getrlimit, .-pre_sys_getrlimit
	.align 16
	.globl	sys_umask
	.type	sys_umask, @function
sys_umask:
.LFB71:
	.cfi_startproc
# handlers.c:966: {
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
# handlers.c:967:     long save_rax = __read_reg("rax");
#APP
# 967 "handlers.c" 1
	mov r10, rax	# val
	
# 0 "" 2
# handlers.c:969:     vmcall_3(det_sys_getrlimit,current_task,save_mask,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 969 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	movsx	r9, DWORD PTR 56[rsp]	# __p2, save_mask
	mov	edi, 48	#,
	call	vmcall	#
# handlers.c:970: }
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
.LFB84:
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
.LFE84:
	.size	pre_sys_umask, .-pre_sys_umask
	.align 16
	.globl	sys_ioctl
	.type	sys_ioctl, @function
sys_ioctl:
.LFB73:
	.cfi_startproc
# handlers.c:984: {
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
# handlers.c:985:     long save_rax = __read_reg("rax");
#APP
# 985 "handlers.c" 1
	mov r12, rax	# val
	
# 0 "" 2
# handlers.c:987:     vmcall_5(det_sys_ioctl,current_task,save_fd,save_cmd,save_arg,save_rax);
#NO_APP
	mov	r8d, DWORD PTR hypercall_info[rip+4992]	# hypercall_info.OsSpecificFields.CurrentTaskOffset, hypercall_info.OsSpecificFields.CurrentTaskOffset
#APP
# 987 "handlers.c" 1
	mov r8, gs:[r8]	# ret, hypercall_info.OsSpecificFields.CurrentTaskOffset
# 0 "" 2
#NO_APP
	mov	r9d, DWORD PTR 72[rsp]	# __p2, save_fd
	mov	r10d, DWORD PTR 80[rsp]	# __p3, save_cmd
	mov	r11, QWORD PTR 88[rsp]	# __p4, save_arg
	mov	edi, 50	#,
	call	vmcall	#
# handlers.c:988: }
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
# handlers.c:994:     *skip_call=0;
	mov	rax, QWORD PTR 40[rsp]	# skip_call, skip_call
	mov	QWORD PTR [rax], 0	# *skip_call_2(D),
# handlers.c:995:     *save_fd=fd;
	mov	rax, QWORD PTR 48[rsp]	# save_fd, save_fd
	mov	DWORD PTR [rax], edi	# *save_fd_4(D), fd
# handlers.c:996:     *save_cmd=cmd;
	mov	rax, QWORD PTR 56[rsp]	# save_cmd, save_cmd
	mov	DWORD PTR [rax], esi	# *save_cmd_7(D), cmd
# handlers.c:997:     *save_arg=arg;
	mov	rax, QWORD PTR 64[rsp]	# save_arg, save_arg
	mov	QWORD PTR [rax], rdx	# *save_arg_10(D), arg
# handlers.c:998: }
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
	.globl	__asm_defines
	.type	__asm_defines, @function
__asm_defines:
.LFB75:
	.cfi_startproc
# handlers.c:1002:     def_detour_asm_vars(commit_creds);
#APP
# 1002 "handlers.c" 1
	#define commit_creds_jmp 96	#
# 0 "" 2
# handlers.c:1003:     def_detour_asm_vars(arch_jump_label_transform);
# 1003 "handlers.c" 1
	#define arch_jump_label_transform_jmp 192	#
# 0 "" 2
# handlers.c:1004:     def_detour_asm_vars(module_param_sysfs_setup);
# 1004 "handlers.c" 1
	#define module_param_sysfs_setup_jmp 288	#
# 0 "" 2
# handlers.c:1005:     def_detour_asm_vars(module_param_sysfs_remove);
# 1005 "handlers.c" 1
	#define module_param_sysfs_remove_jmp 384	#
# 0 "" 2
# handlers.c:1006:     def_detour_asm_vars(wake_up_new_task);
# 1006 "handlers.c" 1
	#define wake_up_new_task_jmp 480	#
# 0 "" 2
# handlers.c:1007:     def_detour_asm_vars(flush_old_exec);
# 1007 "handlers.c" 1
	#define flush_old_exec_jmp 576	#
# 0 "" 2
# handlers.c:1008:     def_detour_asm_vars(begin_new_exec);
# 1008 "handlers.c" 1
	#define begin_new_exec_jmp 672	#
# 0 "" 2
# handlers.c:1009:     def_detour_asm_vars(do_exit);
# 1009 "handlers.c" 1
	#define do_exit_jmp 768	#
# 0 "" 2
# handlers.c:1010:     def_detour_asm_vars(arch_ptrace);
# 1010 "handlers.c" 1
	#define arch_ptrace_jmp 864	#
# 0 "" 2
# handlers.c:1011:     def_detour_asm_vars(compat_arch_ptrace);
# 1011 "handlers.c" 1
	#define compat_arch_ptrace_jmp 960	#
# 0 "" 2
# handlers.c:1012:     def_detour_asm_vars(process_vm_rw_core);
# 1012 "handlers.c" 1
	#define process_vm_rw_core_jmp 1056	#
# 0 "" 2
# handlers.c:1013:     def_detour_asm_vars(__vma_link_rb);
# 1013 "handlers.c" 1
	#define __vma_link_rb_jmp 1152	#
# 0 "" 2
# handlers.c:1014:     def_detour_asm_vars(change_protection);
# 1014 "handlers.c" 1
	#define change_protection_jmp 1248	#
# 0 "" 2
# handlers.c:1015:     def_detour_asm_vars(vma_adjust);
# 1015 "handlers.c" 1
	#define vma_adjust_jmp 1344	#
# 0 "" 2
# handlers.c:1016:     def_detour_asm_vars(__vma_adjust);
# 1016 "handlers.c" 1
	#define __vma_adjust_jmp 1440	#
# 0 "" 2
# handlers.c:1017:     def_detour_asm_vars(vma_rb_erase);
# 1017 "handlers.c" 1
	#define vma_rb_erase_jmp 1536	#
# 0 "" 2
# handlers.c:1018:     def_detour_asm_vars(__vma_rb_erase);
# 1018 "handlers.c" 1
	#define __vma_rb_erase_jmp 1632	#
# 0 "" 2
# handlers.c:1019:     def_detour_asm_vars(expand_downwards);
# 1019 "handlers.c" 1
	#define expand_downwards_jmp 1728	#
# 0 "" 2
# handlers.c:1020:     def_detour_asm_vars(complete_signal);
# 1020 "handlers.c" 1
	#define complete_signal_jmp 1824	#
# 0 "" 2
# handlers.c:1021:     def_detour_asm_vars(text_poke);
# 1021 "handlers.c" 1
	#define text_poke_jmp 1920	#
# 0 "" 2
# handlers.c:1022:     def_detour_asm_vars(__text_poke);
# 1022 "handlers.c" 1
	#define __text_poke_jmp 2016	#
# 0 "" 2
# handlers.c:1023:     def_detour_asm_vars(ftrace_write);
# 1023 "handlers.c" 1
	#define ftrace_write_jmp 2112	#
# 0 "" 2
# handlers.c:1024:     def_detour_asm_vars(panic);
# 1024 "handlers.c" 1
	#define panic_jmp 2208	#
# 0 "" 2
# handlers.c:1025:     def_detour_asm_vars(crash_kexec);
# 1025 "handlers.c" 1
	#define crash_kexec_jmp 2304	#
# 0 "" 2
# handlers.c:1026:     def_detour_asm_vars(__access_remote_vm);
# 1026 "handlers.c" 1
	#define __access_remote_vm_jmp 2400	#
# 0 "" 2
# handlers.c:1028:     def_detour_hijack_asm_vars(mprotect_fixup, vma_wants_writenotify);
# 1028 "handlers.c" 1
	#define mprotect_fixup_vma_wants_writenotify_jmp 2496	#
# 0 "" 2
# handlers.c:1029:     def_detour_hijack_asm_vars(do_munmap, rb_erase);
# 1029 "handlers.c" 1
	#define do_munmap_rb_erase_jmp 2592	#
# 0 "" 2
# handlers.c:1030:     def_detour_hijack_asm_vars(vma_adjust, rb_erase);
# 1030 "handlers.c" 1
	#define vma_adjust_rb_erase_jmp 2688	#
# 0 "" 2
# handlers.c:1032:     def_detour_asm_vars(do_rmdir);
# 1032 "handlers.c" 1
	#define do_rmdir_jmp 2784	#
# 0 "" 2
# handlers.c:1033:     def_detour_asm_vars(sys_sysfs);
# 1033 "handlers.c" 1
	#define sys_sysfs_jmp 2880	#
# 0 "" 2
# handlers.c:1034:     def_detour_asm_vars(sys_read);
# 1034 "handlers.c" 1
	#define sys_read_jmp 2976	#
# 0 "" 2
# handlers.c:1035:     def_detour_asm_vars(sys_getppid);
# 1035 "handlers.c" 1
	#define sys_getppid_jmp 3072	#
# 0 "" 2
# handlers.c:1036:     def_detour_asm_vars(sys_getsid);
# 1036 "handlers.c" 1
	#define sys_getsid_jmp 3168	#
# 0 "" 2
# handlers.c:1037:     def_detour_asm_vars(sys_getuid);
# 1037 "handlers.c" 1
	#define sys_getuid_jmp 3264	#
# 0 "" 2
# handlers.c:1038:     def_detour_asm_vars(sys_geteuid);
# 1038 "handlers.c" 1
	#define sys_geteuid_jmp 3360	#
# 0 "" 2
# handlers.c:1039:     def_detour_asm_vars(sys_shutdown);
# 1039 "handlers.c" 1
	#define sys_shutdown_jmp 3456	#
# 0 "" 2
# handlers.c:1040:     def_detour_asm_vars(do_sysinfo);
# 1040 "handlers.c" 1
	#define do_sysinfo_jmp 3552	#
# 0 "" 2
# handlers.c:1041:     def_detour_asm_vars(sys_capget);
# 1041 "handlers.c" 1
	#define sys_capget_jmp 3648	#
# 0 "" 2
# handlers.c:1042:     def_detour_asm_vars(sys_capset);
# 1042 "handlers.c" 1
	#define sys_capset_jmp 3744	#
# 0 "" 2
# handlers.c:1043:     def_detour_asm_vars(sys_statfs);
# 1043 "handlers.c" 1
	#define sys_statfs_jmp 3840	#
# 0 "" 2
# handlers.c:1044:     def_detour_asm_vars(sys_fstatfs);
# 1044 "handlers.c" 1
	#define sys_fstatfs_jmp 3936	#
# 0 "" 2
# handlers.c:1045:     def_detour_asm_vars(sys_setsid);
# 1045 "handlers.c" 1
	#define sys_setsid_jmp 4032	#
# 0 "" 2
# handlers.c:1046:     def_detour_asm_vars(sys_seccomp);
# 1046 "handlers.c" 1
	#define sys_seccomp_jmp 4128	#
# 0 "" 2
# handlers.c:1047:     def_detour_asm_vars(sys_tgkill);
# 1047 "handlers.c" 1
	#define sys_tgkill_jmp 4224	#
# 0 "" 2
# handlers.c:1048:     def_detour_asm_vars(sys_tkill);
# 1048 "handlers.c" 1
	#define sys_tkill_jmp 4320	#
# 0 "" 2
# handlers.c:1049:     def_detour_asm_vars(sys_ustat);
# 1049 "handlers.c" 1
	#define sys_ustat_jmp 4416	#
# 0 "" 2
# handlers.c:1050:     def_detour_asm_vars(sys_poll);
# 1050 "handlers.c" 1
	#define sys_poll_jmp 4512	#
# 0 "" 2
# handlers.c:1051:     def_detour_asm_vars(sys_sigprocmask);
# 1051 "handlers.c" 1
	#define sys_sigprocmask_jmp 4608	#
# 0 "" 2
# handlers.c:1052:     def_detour_asm_vars(sys_getrlimit);
# 1052 "handlers.c" 1
	#define sys_getrlimit_jmp 4704	#
# 0 "" 2
# handlers.c:1053:     def_detour_asm_vars(sys_umask);
# 1053 "handlers.c" 1
	#define sys_umask_jmp 4800	#
# 0 "" 2
# handlers.c:1054:     def_detour_asm_vars(sys_ioctl);
# 1054 "handlers.c" 1
	#define sys_ioctl_jmp 4896	#
# 0 "" 2
# handlers.c:1055: }
#NO_APP
	ret
	.cfi_endproc
.LFE75:
	.size	__asm_defines, .-__asm_defines
	.globl	hypercall_info
	.section	.detours,"aw",@progbits
	.align 32
	.type	hypercall_info, @object
	.size	hypercall_info, 5016
hypercall_info:
# DetoursCount:
	.zero	8
	.quad	51
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
	.zero	104
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
