#include <stdio.h>
#include <stdlib.h>

#define PI 3.14
#define num 42

// 测试注释
/*测试注释*/
int qj = 100;

const int CONST = 500;

void print_message();

int add(int a, int b);

void print_message() {
    printf("fundamentals of compiling\n");
}

int add(int a, int b) {
    return a + b;
}

int main() {
    float arr[3];
    arr[0] = 5;
    arr[1] = 7;
    arr[2] = 0;

    int n;
    scanf("%d", &n);

    int i = 0;
    while (i <= n) {
        arr[2] += i * 0.1;
        i++;
    }

    int sum1 = add(arr[0], arr[1]);

    print_message();
    printf("integer: %d\n", sum1);
    printf("floating: %f\n", PI);
    printf("constant: %d\n", num);
    printf("sum2: %f\n", arr[2]);
    printf("global variable: %d\n", qj);
    printf("constant integer: %d\n", CONST);

    return 0;
}