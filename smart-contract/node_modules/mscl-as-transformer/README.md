# `mscl-as-transformer`

An [AssemblyScript transformer](https://www.assemblyscript.org/compiler.html#transforms) to use with Massa Smart Contract.

## Installation

This module can be installed using [GitPkg](https://gitpkg.vercel.app/) that makes subfolders of repos directly usable with npm or yarn.

To install this module, run the following command at your project root directory :

```shell
npm install -D 'https://gitpkg.now.sh/massalabs/massa-sc-library/tool/as-transformer?main'
```

## Usage

You can use the transformer by adding `--transform mscl-as-transformer` to your asc command.

For instance, to compile `assembly/my_sc.ts` with mscl-as-transformer you will execute:

```shell
yarn asc --transform mscl-as-transformer assembly/my_sc.ts --target release --exportRuntime --binaryFile build/my_sc.wasm
```

## Transformations

The following transformations are performed:

### `include_base64`

Loads a file and writes its content in base64. This is useful when you want to push a smart contract to the blockchain.

Example:
```typescript
export function main(_args: string): i32 {
    const bytes = include_base64('./build/sc.wasm'); // mscl-as-transformer will read `build/sc.wasm`, encode it in base64 and put the result in a string used to initialize `bytes`.
    const sc_addr = create_sc(bytes);
    call(sc_addr, "advance", "", 0);
    generate_event("gol SC deployed at addr: " + sc_addr);
    return 0;
}
```

