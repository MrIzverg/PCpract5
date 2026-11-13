#include <stdio.h>
#include "arr_com.h"
#include "process2.h"

int main()
{
    int arr[45];
    int n = read_arr(arr, 45);
    if (n <= 0) return 1;

    int result = sum_range(arr,n);
    printf("Сумма элементов: ");
    print_int(result);
    return 0;
}