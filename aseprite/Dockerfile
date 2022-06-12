FROM ubuntu:20.04
RUN apt-get update
# https://github.com/aseprite/aseprite/blob/main/INSTALL.md#linux-dependencies
RUN \
  DEBIAN_FRONTEND=noninteractive \
  TZ="America/Los_Angeles" \
  apt-get install -y g++ clang-10 libc++-10-dev libc++abi-10-dev cmake ninja-build libx11-dev libxcursor-dev libxi-dev libgl1-mesa-dev libfontconfig1-dev
# map binaries
RUN \
  ln -s /usr/bin/clang-10 /usr/bin/clang \
  && ln -s /usr/bin/clang++-10 /usr/bin/clang++
