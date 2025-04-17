@echo on

:: test from:
:: https://github.com/vinecopulib/vinecopulib/blob/258eb2d7758ce067ee7d53789067f0d3ebbb9375/.github/workflows/continuous_integration.yml#L123C13-L134

:: build a simple example
cd examples/bicop

:: /EHsc - https://stackoverflow.com/questions/6832666/lnk2019-when-including-asio-headers-solution-generated-with-cmake
%CXX% ./src/main.cpp /EHsc /DBOOST_ALL_NO_LIB /I %LIBRARY_INC% /I %LIBRARY_INC%\eigen3 /I %LIBRARY_INC%\boost /I %LIBRARY_INC%\wdm /I %LIBRARY_INC%\vinecopulib /link /LIBPATH:%LIBRARY_LIB%

if errorlevel 1 exit /B 1

main.exe
if errorlevel 1 exit /B 1

:: Headers tests - Windows (not all of them, a selection)
if not exist %LIBRARY_INC%\vinecopulib.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\version.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\bicop\abstract.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\bicop\fit_controls.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\bicop\tools_select.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\vinecop\class.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\vinecop\tools_select.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\misc\nlohmann_json.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\misc\tools_batch.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\misc\triangular_array.hpp exit 1
if not exist %LIBRARY_INC%\vinecopulib\bicop\implementation\abstract.ipp exit 1
if not exist %LIBRARY_INC%\vinecopulib\bicop\implementation\gaussian.ipp exit 1
if not exist %LIBRARY_INC%\vinecopulib\bicop\implementation\tools_select.ipp exit 1
if not exist %LIBRARY_INC%\vinecopulib\vinecop\implementation\class.ipp exit 1
if not exist %LIBRARY_INC%\vinecopulib\vinecop\implementation\tools_select.ipp exit 1
if not exist %LIBRARY_INC%\vinecopulib\misc\implementation\tools_eigen.ipp exit 1
if not exist %LIBRARY_INC%\vinecopulib\misc\implementation\tools_stats.ipp exit 1
if not exist %LIBRARY_LIB%\cmake\vinecopulib\vinecopulibConfig.cmake exit 1
if not exist %LIBRARY_LIB%\cmake\vinecopulib\vinecopulibConfigVersion.cmake exit 1
if not exist %LIBRARY_LIB%\cmake\vinecopulib\vinecopulibTargets.cmake exit 1