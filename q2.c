#include <stdio.h>

int main()
{

    int number;
    printf("Enter a number: \n");
    scanf("%d", &number);

    printf("Factors of %d are: ", number);
    for (int i = 1; i <= number; i++)
    {
        if (number % i == 0)
        {
            printf("%d \n", i);
        }
    }

    return 0;
}