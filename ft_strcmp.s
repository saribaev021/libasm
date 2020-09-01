global _ft_strcmp
section .text
_ft_strcmp: xor rcx, rcx
            xor rax, rax

compare:   mov al, byte[rdi + rcx]
            mov bl, byte[rsi + rcx]
            test al, al
            je done
            test bl, bl
            je done
            cmp al, bl
            jne done
            inc rcx
            jmp compare

done:       sub rax, rbx
            ret
