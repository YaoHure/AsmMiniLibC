;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EPITECH PROJECT, 2019;;;;;;
;; PSU_minishell_2019;;;;;;;;;
;; File description:;;;;;;;;;;
;; strcmp.asm;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[BITS 64]

section .text
global strcmp:function

strcmp:
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
    jmp strcmp

end:
    movzx rax, r10b
    movzx rbx, r11b
    sub rax, rbx
    ret