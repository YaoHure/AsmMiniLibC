;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EPITECH PROJECT, 2019;;;;;;
;; PSU_minishell_2019;;;;;;;;;
;; File description:;;;;;;;;;;
;; memcpy.asm;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[BITS 64]

section .text
global memcpy:function

memcpy:
    xor rcx, rcx

copy:
    cmp rdx, rcx
    jle decrem
    mov r10B, byte [rsi + rcx]
    mov [rdi], r10b
    inc rdi
    inc rcx
    jmp copy

decrem:
    cmp rcx, 0
    je end
    dec rdi
    dec rcx
    jmp decrem

end:
    mov rax, rdi
    ret