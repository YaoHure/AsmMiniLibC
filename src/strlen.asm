;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EPITECH PROJECT, 2019;;;;;;
;; PSU_minishell_2019;;;;;;;;;
;; File description:;;;;;;;;;;
;; strlen.asm;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[BITS 64]

section .text
global strlen:function

strlen:
    mov rbx, rdi
    xor rax, rax
    jmp check

loop:
    inc rax

check:
    cmp byte [rbx + rax], 0
    jnz loop
    ret
