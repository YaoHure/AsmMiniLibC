;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EPITECH PROJECT, 2019;;;;;;
;; PSU_minishell_2019;;;;;;;;;
;; File description:;;;;;;;;;;
;; strncmp.asm;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[BITS 64]

section .text
global strncmp:function

strncmp:
    xor rcx, rcx

loop:
    mov r10b, byte [rdi]
    mov r11b, byte [rsi]
    cmp r10b, 0
    je end
    cmp r11b, 0
    je end
    cmp r10b, r11b
    jne end
    inc rdi
    inc rsi
    inc rcx
    cmp rdx, rcx
    jle end
    jmp loop

end:
    movzx rax, r10b
    movzx rbx, r11b
    sub rax, rbx
    ret