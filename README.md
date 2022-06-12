# Build Containers

A repo for Container configs to build binaries

---

## Aseprite

```sh
cd aseprite
# clone repo
git clone git@github.com:aseprite/aseprite.git repo
# switch to version and download deps
(cd repo && git checkout v1.2.35 && git submodule update --init --recursive && wget -O "skia.zip" --tries=3 https://github.com/aseprite/skia/releases/download/m102-861e4743af/Skia-Linux-Release-x64.zip && unzip skia.zip -d ./skia)
# build container
docker-compose build
# build binary
docker-compose run --rm build_aseprite /media/build.sh

# install to system
./install.sh
```

Debug Container issues with
```sh
# terminal 1
docker-compose up
# terminal 2
docker-compose exec build_aseprite bash
```
