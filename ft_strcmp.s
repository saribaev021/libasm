global _ft_strcmp
section .text
_ft_strcmp: xor rax, rax
            xor rcx, rcx

compaire:   cmp byte[rdi + rcx], 0
            je done
            cmp byte[rsi + rcx], 0
            je done
            mov al, byte[rdi + rcx]
            cmp al, byte[rsi + rcx]
            jne done
            inc rcx
            jmp compaire

done:       
            mov al, byte[rdi + rcx]
            xor rbx, rbx
            mov bl, byte[rsi + rcx]
            sub rax, rbx
            ret
