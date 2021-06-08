#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ROT 3

/*
 * Reverte ordem de uma string;
 */
char *reverse(const char *);

/*
 * Rotaciona uma string em uma casa a mais;
 */
char *rot(const char *);

/*
 * Rotaciona uma string em uma casa a menos;
 */
char *rot_reverse(const char *);

/*
 * Exibe números binários em casas de 8 dígitos;
 */
void print_flag(const char *);

/*
 * Transforma strings em sequencias binária 1 ou 0;
 */
char *string_to_binary(const char *);


int main() {
    int text[] = {
            67, 45, 114, 51, 118, 51, 114, 90,
            51, 95, 51, 110, 103, 49, 110, 51,
            114, 46, 98, 49, 110
    };

    char flag[22];
    flag[21] = '\0';

    for (register int key = 0; key < 21; key++)
    {
        flag[key] = (char)text[key];
    }

    char *flag_encode = reverse(string_to_binary(flag));

    for (register int r = 0; r < ROT; r++)
    {
        flag_encode = rot(flag_encode);
    }
    print_flag(flag_encode);

    return 0;
}

void
print_flag(const char *flag)
{
    int count = 0;
    size_t len = strlen(flag);
    for (register int index = 0; index < len; index++)
    {
        if (count == 7)
        {
            printf("%c\n", flag[index]);
            count = 0;
        }
        else {
            printf("%c", flag[index]);
            count++;
        }
    }
}

char
*string_to_binary(const char *text)
{
    if (text == NULL)
        return NULL;

    size_t len = strlen(text);
    char *binary = malloc((len*8) + 1);

    if ( binary == NULL )
        return NULL;

    binary[0] = '\0';

    for (size_t index = 0; index < len; index++)
    {
        char ch = text[index];
        for (int _index = 7; _index >= 0; _index--)
        {
            (ch & (1 << _index)) ? strcat(binary, "1") :
            strcat(binary, "0");
        }
    }
    return binary;
}

char
*rot(const char *text)
{
    size_t len = strlen(text);

    char *new_text = malloc(len + 1);

    char last = text[len - 1];
    char first = text[0];

    for (int index = 2; index < len; index++)
    {
        new_text[index] = text[index - 1];
    }

    new_text[0] = last;
    new_text[1] = first;
    new_text[len + 1] = '\0';

    return new_text;
}

char
*rot_reverse(const char *text)
{
    size_t len = strlen(text);

    char *new_text = malloc(len + 1);

    char first = text[1];
    char second = text[0];

    for (int index = 0; index < len; index++)
    {
        new_text[index] = text[index + 1];
    }

    new_text[0] = first;
    new_text[len-1] = second;
    new_text[len] = '\0';

    return new_text;
}

char
*reverse(const char *text)
{
    size_t len;
    int last, count;

    len = strlen(text);
    char *new_text = malloc(len + 1);
    new_text[0] = '\0';

    last = (int)len - 1;
    count = 0;

    for (int index = last; index >= 0; index--)
    {
        char ch = text[index];
        new_text[count] = ch;
        count++;
    }
    return new_text;
}
