global  _ft_strlen

section .text
_ft_strlen: xor rax, rax
			cmp rdi, 0
			je	done

compire:	cmp byte[rdi + rax], 0
			je	done
			inc rax
			jmp compire

done:		ret