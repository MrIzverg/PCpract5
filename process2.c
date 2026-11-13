#include "process2.h"

int sum_range(const int *arr, int n)
{
    if (n < 3) return 0;

    int min_i = 0, max_i = 0;
    
    for (int i = 1; i < n; i++) {
        if (arr[i] < arr[min_i]) min_i = i;
        if (arr[i] > arr[max_i]) max_i = i;
    }

    int start = (min_i < max_i) ? min_i : max_i;
    int end   = (min_i < max_i) ? max_i : min_i;

    int sum = 0;
    
    for (int i = start + 1; i < end; i++) {
        sum += arr[i];
    }
    
    return sum;
}