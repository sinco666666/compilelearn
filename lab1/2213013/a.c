#include <stdio.h>

float arrayProduct(float arr[], int size) {
    float product = 1.0;
    for (int i = 0; i < size; i++) {
        product *= arr[i];
    }
    return product;
}
int main() {
    int n;
    printf("请输入一个大于1的正整数n表示数组的大小：");
    scanf("%d", &n);
    if(n<=1){
        printf("输入非法");
        return 0;
    }
    float arr[n];
    printf("请输入 %d 个浮点数：\n", n);
    for (int i = 0; i < n; i++) {
        scanf("%f", &arr[i]);
    }
    float product = arrayProduct(arr, n);
    printf("数组元素的乘积为：%f\n", product);
    return 0;
}