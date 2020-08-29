NAME = libasm.a
SRC = ft_stlen.s
HEADER = libasm.h

all: $(NAME) $(HEADER)

$(NAME):$(SRC)
	ar rc $(NAME)
	ranlib $(NAME)

$(SRC):
	nasm -f macho64 $(SRC)