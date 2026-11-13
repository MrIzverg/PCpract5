#include "process3.h"

int filter_true(const int *src, int n, int *dst)
{
    int k = 0;
    for (int i = 0; i < n; i++)
        if (src[i] > 0 && src[i] % 2 != 0)
            dst[k++] = src[i];
    return k;
}