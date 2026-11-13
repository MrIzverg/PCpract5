#include <stdio.h>
#include "arr_com.h"

int read_arr(int *arr, int max_size)
{
    int n;
    printf("Введите количество элементов (не больше %d): ", max_size);
    if (scanf("%d", &n) != 1 || n < 0 || n > max_size)
    {
        printf("Ошбика: некорректное количество");
        return 0;
    }
    printf("Введите %d элементов через пробел:\n", n);
    for (int i = 0; i < n; i++)
    {
        if (scanf("%d", &arr[i]) != 1)
        {
            printf("Ошибка чтения элемента %d\n", i + 1);
            return i;
        }
    }
    return n;
}

void print_arr(const int *arr, int n)
{
    for (int i = 0; i < n; i++)
        printf("%d\n", arr[i]);
}

void print_int(int x)
{
    printf("%d\n", x);
}