NAME = libasm.a
SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJ = ft_strlen.o ft_strcpy.o ft_strcmp.o ft_write.o ft_read.o ft_strdup.o
HEADER = libasm.h

all: $(NAME) $(HEADER)

$(NAME):$(OBJ) main.c 
	ar -rc $(NAME) $(OBJ)
	gcc -g main.c $(NAME)
	./a.out

%.o: %.s
	nasm -f macho64 $< -o $@
clean:
	rm -f $(OBJ)
fclean: clean
	rm -f $(NAME)
re: fclean all