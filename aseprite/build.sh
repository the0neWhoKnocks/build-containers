#!/usr/bin/env bash

rm -rf "${DIR__BUILD}"/*

export CC="clang"
export CXX="clang++"

cmake \
  -D CMAKE_BUILD_TYPE="RelWithDebInfo" \
  -D CMAKE_CXX_FLAGS:STRING="-stdlib=libc++" \
  -D CMAKE_EXE_LINKER_FLAGS:STRING="-stdlib=libc++" \
  -D LAF_BACKEND="skia" \
  -D SKIA_DIR="${DIR__SRC}/skia" \
  -D SKIA_LIBRARY_DIR="${DIR__SRC}/skia/out/Release-x64" \
  -D SKIA_LIBRARY="${DIR__SRC}/skia/out/Release-x64/libskia.a" \
  -G Ninja \
	-B "${DIR__BUILD}" \
	-S "${DIR__SRC}"

cd "${DIR__BUILD}"
ninja aseprite

cp "${DIR__SRC}/src/desktop/linux/aseprite.desktop" "${DIR__BUILD}/bin/"
