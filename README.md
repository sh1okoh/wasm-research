## 実行方法
cd ~/emsdk

source ./emsdk_env.sh

emcc target.c -o index.html -O0

最適化レベルの調整
The levels include: -O0 (no optimization), -O1, 
-O2, -Os, -Oz, -Og, and -O3.

## WABTの利用
cd ~/wabt

bin/wasm2wat ~/wasm/research/file_name.wasm -o file_name.wat
## 補足
バイナリーの Wasm モジュールコード (.wasm)

ネイティブの C の関数と JavaScript/Wasm の間で変換を行う JavaScript ファイル (.js)

Wasm コードを読み込み、コンパイルし、インスタンス化し、ブラウザーに出力するための HTML ファイル (.html)が出力されていればok


