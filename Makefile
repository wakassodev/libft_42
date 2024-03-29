# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahmohame <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/05 15:38:36 by ahmohame          #+#    #+#              #
#    Updated: 2021/10/05 15:39:32 by ahmohame         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	libft.a
SRCS		= 	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c \
      				ft_isalpha.c ft_isascii.c ft_isdigit.c \
      				ft_isprint.c ft_itoa.c ft_memchr.c ft_split.c \
      				ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c \
					ft_putchar_fd.c ft_putendl_fd.c ft_strjoin.c \
      				ft_putnbr_fd.c ft_putstr_fd.c ft_striteri.c\
      				ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c \
      				ft_strlen.c ft_strmapi.c ft_strncmp.c \
      				ft_strnstr.c ft_strrchr.c ft_strtrim.c \
      				ft_substr.c ft_tolower.c ft_toupper.c
OBJS		=		${SRCS:.c=.o}
BONUS_S 	= 	ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c \
      				ft_lstdelone.c ft_lstiter.c ft_lstlast.c \
      				ft_lstsize.c ft_lstnew.c ft_lstmap.c
BONUS_O		= 	${BONUS_S:.c=.o}
CC			= 	gcc
RM			= 	rm -rf
CFLAGS		= 	-Wall -Wextra -Werror
.c.o : 			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}
${NAME}:		${OBJS}
		ar -rcs ${NAME} ${OBJS}
all:		${NAME}
bonus:		${NAME} ${BONUS_O}
		ar -rc ${NAME} ${BONUS_O}
clean:		
	${RM} ${OBJS}
fclean: 	clean
	${RM} ${NAME} ${BONUS_O}
re :        fclean all
rebonus:    fclean bonus