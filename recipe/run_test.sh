set -x

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