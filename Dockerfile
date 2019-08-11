FROM debian:jessie-slim

RUN apt-get update \
    && apt-get -y install wget \
    && apt-get -y install bzip2
RUN wget -O gcc-arm-none-eabi-8-2019-q3-update.tar.bz2 https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2?revision=c34d758a-be0c-476e-a2de-af8c6e16a8a2?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,8-2019-q3-update
RUN tar -jxvf gcc-arm-none-eabi-8-2019-q3-update.tar.bz2
RUN rm gcc-arm-none-eabi-8-2019-q3-update.tar.bz2 \
    && mv gcc-arm-none-eabi-8-2019-q3-update gnu_toolchain

RUN mkdir src
