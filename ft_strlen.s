global  _ft_strlen

section .text
_ft_strlen: xor rax, rax
again:		inc rax
			cmp byte[rdi + rax], 0
			jl again
			ret rax