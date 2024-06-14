:: Configure. Switch off unit tests (require gtest / googletest)
cmake . -B build -G"Ninja" %CMAKE_ARGS%      ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%  ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%     ^
    -DCMAKE_BUILD_TYPE=Release               ^
    -DBUILD_TESTING=OFF
if errorlevel 1 exit 1

:: Install.
cmake --install .\build
if errorlevel 1 exit 1
