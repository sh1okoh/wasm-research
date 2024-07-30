const fs = require('fs');
const path = require('path');

async function loadWasm() {
  const wasmFilePath = path.resolve(__dirname, './main.wasm');
  const buffer = fs.readFileSync(wasmFilePath);

  const wasmModule = await WebAssembly.compile(buffer);
  const wasmInstance = await WebAssembly.instantiate(wasmModule, {});

  // WASM関数を呼び出す
  const main = wasmInstance.exports.main;
  const result = main();
  console.log('result', result);
}

loadWasm().catch(console.error);