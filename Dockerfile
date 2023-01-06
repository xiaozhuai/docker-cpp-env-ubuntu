FROM ubuntu:latest

RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get -y install tzdata apt-utils

RUN apt-get update \
  && apt-get install -y  \
      build-essential \
      gcc \
      g++ \
      gdb \
      clang \
      make \
      ninja-build \
      cmake \
      autoconf \
      automake \
      libtool \
      valgrind \
      locales-all \
      dos2unix \
      rsync \
      tar \
      python3 \
      python3-dev \
      language-pack-zh-hans \
  && locale-gen zh_CN.UTF-8 \
  && apt-get clean

ENV LANG "C.UTF-8"
ENV TERM "xterm-256color"

CMD ["/bin/bash"]
