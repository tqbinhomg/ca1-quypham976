#include <stdio.h>

void nhapMang(int a[], int n);
void xuatMang(int a[], int n);

int main() {
    int n = 5;
    int MangA[n];

    nhapMang(MangA, n);
    xuatMang(MangA, n);

    return 0;
}

void nhapMang(int a[], int n) {
    printf("Nhap mang:\n");

    for (int i = 0; i < n; i++) {
        printf("Nhap a[%d] = ", i);
        scanf("%d", &a[i]);
    }
}

void xuatMang(int a[], int n) {
    printf("Xuat mang:\n");

    for (int i = 0; i < n; i++) {
        printf("%d ", a[i]);
    }
}