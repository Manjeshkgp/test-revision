#include <stdio.h>

int main()
{
    int n = 5;
    int arr[6] = {1, 3, 5, 7, 9};
    int element, i;

    printf("Enter the value to be inserted: \n");
    scanf("%d", &element);

    for (i = n - 1; (i >= 0 && arr[i] > element); i--)
    {
        arr[i + 1] = arr[i];
    }

    arr[i + 1] = element;

    printf("Array after insertion is: \n");

    for (i = 0; i <= n; i++)
    {
        printf("%d \n", arr[i]);
    }

    return 0;
}