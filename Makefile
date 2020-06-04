##
## EPITECH PROJECT, 2020
## ASM_minilibc_2019
## File description:
## Makefile
##

SRC	=	src/memcpy.asm	\
		src/memmove.asm	\
		src/memset.asm	\
		src/strchr.asm	\
		src/strcmp.asm	\
		src/strlen.asm	\
		src/strncmp.asm	

OBJ	=	$(SRC:.asm=.o)

NAME	=	libasm.so

ASMFLAGS	=	-f elf64

ASM	=	nasm

CFLAGS	=	-W -Wall -Wextra -Iinclude -fPIC

%.o: %.asm
	@$(ASM) -o $@ $< $(ASMFLAGS)

all:	$(NAME)

$(NAME):	$(OBJ)
		ld -shared -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f $(OBJ)

re: fclean all