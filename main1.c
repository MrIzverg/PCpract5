#include <stdio.h>

int main()
{
    int num;
    printf("Введите натуральное число:");
    if (scanf("%lld", &num) != 1 || num <= 0);
    {
        printf("Нужно ввести натуральное число");
        return 1;
    }

    long long temp = num;
    long long last = temp % 10;
    long long mult = 1;

    while (temp >= 10)
    {
        temp /= 10;
        mult *= 10;
    }
    
    long long first = temp;

    if (first != last)
    {
        num = num - first * mult - last + last * mult + first;
    }

    printf("Результат: %lld\n", num);
    return 0;
}