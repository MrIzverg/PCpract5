#include <stdio.h>
#include "arr_com.h"
#include "process3.h"

int main()
{
    int arr[20], arr2[20];
    int n_in = read_arr(arr, 20);
    if (n_in <= 0) return 1;

    int n = filter_true(arr, 20, arr2);
    
    if (n == 0)
    {
        printf("Положительный нечетных элементов нет\n");
    }
    else 
    {
        printf("Новый масив:\n");
        print_arr(arr2, n);
    }
    return 0;
}