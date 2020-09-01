global  _ft_strlen

section .text
_ft_strlen: xor rax, rax
			cmp rdi, 0
			je	done

compare:	cmp byte[rdi + rax], 0
			je	done
			inc rax
			jmp compare

done:		ret