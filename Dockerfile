FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    g++ \
    libopencv-dev \
    make \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

ENV XDG_RUNTIME_DIR=/tmp/runtime-ubuntu
ENV LIBGL_ALWAYS_SOFTWARE=1

WORKDIR /work
