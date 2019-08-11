# ARM Embedded GNU Toolchain 8-2019-q3-update (in Docker)

## Build
docker build . -t arm-none-eabi

## Test assembler
docker run arm-none-eabi gnu_toolchain/bin/arm-none-eabi-as --version

## Assemble something by mounting to /src
#### (Assuming sample.asm exists in HOST_SRC)
```bash
docker run \
      -v HOST_SRC:/src \
      arm-none-eabi \
      gnu_toolchain/bin/arm-none-eabi-as \
      /src/sample.asm
```
