#include <stdio.h>

// グローバル変数
volatile int global_var = 10;

// 関数定義
int add_to_global(int x) {
    global_var += x;
    return global_var;
}

int main() {
    int result = add_to_global(20);
    return result;
}