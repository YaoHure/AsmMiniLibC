;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EPITECH PROJECT, 2019;;;;;;
;; PSU_minishell_2019;;;;;;;;;
;; File description:;;;;;;;;;;
;; memmove.asm;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[BITS 64]

section .text
global memmove:function

memmove:
    push rbp
    mov rbp, rsp
    mov rax, rdi
    mov rax, rdi
    mov r8, rdi
    sub r8, rsi
    cmp r8, 0
    jge overlap_right

overlap_left:
    xor rcx, rcx

left_loop:
    cmp rcx, rdx
    je end
    mov r8b, [rsi + rcx]
    mov [rdi + rcx], r8b
    inc rcx
    jmp left_loop

overlap_right:
    dec rdx

right_loop:
    cmp rdx, 0
    jl end
    mov r8b, [rsi + rdx]
    mov [rdi + rdx], r8b
    dec rdx
    jmp right_loop

end:
    mov rsp, rbp
    pop rbp
    ret