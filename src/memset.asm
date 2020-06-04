;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EPITECH PROJECT, 2019;;;;;;
;; PSU_minishell_2019;;;;;;;;;
;; File description:;;;;;;;;;;
;; memset.asm;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


[BITS 64]

section .text
global memset:function

memset:
    xor rcx, rcx

set:
    cmp rdx, rcx
    jle decrement
    mov [rdi], sil
    inc rdi
    inc rcx
    jmp set

decrement:
    cmp rcx, 0
    je end
    dec rdi
    dec rcx
    jmp decrement

end:
    mov rax, rdi
    ret