;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EPITECH PROJECT, 2019;;;;;;
;; PSU_minishell_2019;;;;;;;;;
;; File description:;;;;;;;;;;
;; strchr.asm;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[BITS 64]

section .text
global strchr:function

strchr:	
    xor rcx, rcx
    jmp loop

increment:
    inc rcx

loop:
    movsx edx, byte [rdi+rcx]
    cmp edx, 0
    je ret_null
    cmp edx, esi
    jne increment
    mov rax, rdi
    add rax, rcx
    jmp end

ret_null:
    xor rax, rax

end:
    ret