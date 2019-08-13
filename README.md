# ARM Embedded GNU Toolchain 8-2019-q3-update (in Docker)

## Build
```bash
docker build . -t arm-none-eabi
```

## Test assembler
```bash
docker run arm-none-eabi \
      arm-none-eabi-as --version
```

## Assemble something by mounting to /src
#### (Assuming sample.asm exists in HOST_SRC)
```bash
docker run \
      -v HOST_SRC:/src \
      arm-none-eabi \
      arm-none-eabi-as \
      /src/sample.asm
```

## Make example
#### (Assuming sample.asm exists in HOST_SRC)
```bash
docker run \
      -v HOST_SRC:/src \
      arm-none-eabi \
      bash -c "cd src && make" 
```
