#include "libasm.h"

int main(void)
{
    char dst[50];
    char *src = "1234567890";

    char *s1 = "1234567890";
    char *s2 = "1234567890";

    int d = ft_strcmp(s1, s2);
    char *s = ft_strcpy(dst, src);
    size_t i = ft_strlen(src);
    printf("%zu\n", i);
    printf("%d\n", d);
    printf("%s", dst);
    return (0);
}