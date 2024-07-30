#include <stdio.h>

int fibonacci(int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;

    int t1 = 0, t2 = 1, nextTerm;
    for (int i = 1; i <= n; ++i) {
        nextTerm = t1 + t2;
        t1 = t2;
        t2 = nextTerm;
    }
    return t1;
}

int reverseNumber(int n) {
    int reversedNumber = 0;
    while (n != 0) {
      reversedNumber = reversedNumber * 10 + n % 10;
      n /= 10;
    }
    return reversedNumber;
}

int main() {
    int n = 1000000;
    int result1 = fibonacci(n);
    int result2 = reverseNumber(result1);
    
    return result2;
}
