global _ft_strdup
extern _ft_strlen
extern _ft_strcpy
extern _malloc
section .text
_ft_strdup: xor rax, rax
            push rdi
            cmp rdi, 0
            je is_null
            call _ft_strlen
            inc rax
            mov rdi, rax
            call _malloc
            cmp rax, 0
            je return
            pop rsi
            mov rdi, rax
            call _ft_strcpy

return:     ret

is_null:    pop rdi
            mov rax, rdi
            jmp return
