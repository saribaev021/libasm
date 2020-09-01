global _ft_read
extern ___error
section .text
_ft_read: xor rax, rax
          mov rax, 0x2000003
          syscall
          jc error

return:    ret

error:     push rax
           call ___error
           pop r8
           mov [rax], r8
           mov rax, -1
           jmp return