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

int main() {
    int n = 10;
    int result = fibonacci(n);
    return 0;
}
