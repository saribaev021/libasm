NAME = libasm.a
SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s
OBJ = ft_strlen.o ft_strcpy.o ft_strcmp.o
HEADER = libasm.h

all: $(NAME) $(HEADER)

$(NAME):$(OBJ) 
	ar -rc $(NAME) $(OBJ)

%.o: %.s
	nasm -f macho64 $< -o $@
clean:
	rm -f $(OBJ)
fclean: clean
	rm -f $(NAME)
re: fclean all