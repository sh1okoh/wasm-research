## 実行方法
emcc target.c -o index.html WASM=1

## 補足
バイナリーの Wasm モジュールコード (.wasm)
ネイティブの C の関数と JavaScript/Wasm の間で変換を行う JavaScript ファイル (.js)
Wasm コードを読み込み、コンパイルし、インスタンス化し、ブラウザーに出力するための HTML ファイル (.html)が出力されていればok
