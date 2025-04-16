set -x

# test from:
# https://github.com/vinecopulib/vinecopulib/blob/258eb2d7758ce067ee7d53789067f0d3ebbb9375/.github/workflows/continuous_integration.yml#L123C13-L134

# build a simple example
cd examples/bicop

# use additional flags for unix
# https://github.com/vinecopulib/vinecopulib/blob/258eb2d7758ce067ee7d53789067f0d3ebbb9375/examples/bicop/CMakeLists.txt#L12
# use -pthread
# https://github.com/vinecopulib/vinecopulib/blob/258eb2d7758ce067ee7d53789067f0d3ebbb9375/examples/bicop/CMakeLists.txt#L29
export FLAGS="-pthread -std=gnu++14 -Wextra -Wall -Wno-delete-non-virtual-dtor -Werror=return-type -O2 -DNDEBUG"
${CXX} ${CXXFLAGS} ${LDFLAGS} ${FLAGS} ./src/main.cpp -I${PREFIX}/include -I${PREFIX}/include/eigen3 -isystem ${PREFIX}/include/vinecopulib -L${PREFIX}/lib -o test

./test

# Headers tests - Unix (not all of them, a selection)
test -e ${PREFIX}/include/vinecopulib.hpp
test -e ${PREFIX}/include/vinecopulib/version.hpp
test -e ${PREFIX}/include/vinecopulib/bicop/abstract.hpp
test -e ${PREFIX}/include/vinecopulib/bicop/fit_controls.hpp
test -e ${PREFIX}/include/vinecopulib/bicop/tools_select.hpp
test -e ${PREFIX}/include/vinecopulib/vinecop/class.hpp
test -e ${PREFIX}/include/vinecopulib/vinecop/tools_select.hpp
test -e ${PREFIX}/include/vinecopulib/misc/nlohmann_json.hpp
test -e ${PREFIX}/include/vinecopulib/misc/tools_batch.hpp
test -e ${PREFIX}/include/vinecopulib/misc/triangular_array.hpp
test -e ${PREFIX}/include/vinecopulib/bicop/implementation/abstract.ipp
test -e ${PREFIX}/include/vinecopulib/bicop/implementation/gaussian.ipp
test -e ${PREFIX}/include/vinecopulib/bicop/implementation/tools_select.ipp
test -e ${PREFIX}/include/vinecopulib/vinecop/implementation/class.ipp
test -e ${PREFIX}/include/vinecopulib/vinecop/implementation/tools_select.ipp
test -e ${PREFIX}/include/vinecopulib/misc/implementation/tools_eigen.ipp
test -e ${PREFIX}/include/vinecopulib/misc/implementation/tools_stats.ipp
test -e ${PREFIX}/lib/cmake/vinecopulib/vinecopulibConfig.cmake
test -e ${PREFIX}/lib/cmake/vinecopulib/vinecopulibConfigVersion.cmake
test -e ${PREFIX}/lib/cmake/vinecopulib/vinecopulibTargets.cmake