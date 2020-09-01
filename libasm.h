#ifndef LIBASM_H
# define LIBASM_H
# include <stdio.h>
# include <unistd.h>
# include <string.h>
# include <fcntl.h>
# include <sys/errno.h>

size_t	ft_strlen(char *str);
size_t	ft_read(int fd, void *buf, size_t count);
char	*ft_strcpy(char *dest, const char *src);
char	*ft_strdup(const char *str);
int		ft_strcmp(char *s1, char *s2);
int		ft_write(int fd, const void *buf, size_t count);

#endif