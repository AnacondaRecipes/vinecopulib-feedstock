# configure, switch off unit tests (require gtest / googletest)
cmake . -B build -G Ninja $CMAKE_ARGS  \
        -DCMAKE_INSTALL_PREFIX=$PREFIX \
        -DCMAKE_PREFIX_PATH=$PREFIX    \
        -DCMAKE_BUILD_TYPE=Release     \
        -DBUILD_TESTING=OFF

# install
cmake --install ./build