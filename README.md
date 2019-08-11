# ARM Embedded GNU Toolchain 8-2019-q3-update (in Docker)

## Build
docker build . -t rromanotero/arm-none-eabi

## Test assembler
docker run rromanotero/arm-none-eabi gnu_toolchain/bin/arm-none-eabi-as --version

## Assemble something by mounting to /src
#### (Assuming sample.asm exists in HOST_SRC)

#### For Linux/Mac
docker run \\
      -v HOST_SRC:/src \\
      rromanotero/arm-none-eabi \\
      gnu_toolchain/bin/arm-none-eabi-as \\
      /src/sample.asm

#### For Windows
docker run `
      -v HOST_SRC:/src `
      rromanotero/arm-none-eabi `
      gnu_toolchain/bin/arm-none-eabi-as `
      /src/sample.asm
