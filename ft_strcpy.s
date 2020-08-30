global _ft_strcpy
section .text
_ft_strcpy: xor rcx, rcx
            cmp rsi, 0
            je done

copy:       mov al, byte[rsi + rcx]
            mov byte[rdi + rcx], al
            cmp byte[rsi + rcx], 0
            je done
            inc rcx
            jmp copy

done:       mov rax, rdi
            ret
            