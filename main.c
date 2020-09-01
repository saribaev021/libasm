#include "libasm.h"

int main(void)
{
    char dst[50];
    char *src = "1234567890";
    int r;
    int fd = open("test.txt", O_RDONLY);

    char *s1 = "1234567890";
    char *s2 = "1234567890";
    char buf[2];
    char buf2[2];

    int d = ft_strcmp(s1, s2);
    char *s = ft_strcpy(dst, src);
    char *new_str = ft_strdup(NULL);
    size_t i = ft_strlen(src);
    int    k = ft_write(1, "Hello World\n", ft_strlen("Hello World\n"));
            // r = ft_read(fd, buf, 10);
        //     read(fd, buf2, 1);
        //     buf2[1] = '\0';
        //    ft_write(1, buf2, 1);
        //     read(fd, buf2, 1);
        //      ft_write(1, buf2, 1);
            // buf[r] = '\0';
            
            // ft_write(1, buf, 1);
            

    while ((r = ft_read(fd, buf, 1)) > 0)
    {
        buf[r] = '\0';
        ft_write(1, buf, ft_strlen(buf));
    }
    printf("len str ft_write: %zu\n", ft_strlen("Hello World\n"));
    printf("return ft_write: %d\n", k);
    printf("ft_strlen: %zu\n", i);
    printf("ft_strcmp: %d\n", d);
    printf("ft_strcpy: %s\n", dst);
    printf("ft_strdup: %s\n", new_str);
    
    return (0);
}