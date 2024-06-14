@echo on

:: Headers tests - Windows (not all of them, a selection)
if not exist %PREFIX%\Library\include\vinecopulib.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\version.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\bicop\abstract.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\bicop\fit_controls.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\bicop\tools_select.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\vinecop\class.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\vinecop\tools_select.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\misc\nlohmann_json.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\misc\tools_batch.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\misc\triangular_array.hpp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\bicop\implementation\abstract.ipp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\bicop\implementation\gaussian.ipp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\bicop\implementation\tools_select.ipp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\vinecop\implementation\class.ipp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\vinecop\implementation\tools_select.ipp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\misc\implementation\tools_eigen.ipp exit 1
if not exist %PREFIX%\Library\include\vinecopulib\misc\implementation\tools_stats.ipp exit 1
if not exist %PREFIX%\Library\lib\cmake\vinecopulib\vinecopulibConfig.cmake exit 1
if not exist %PREFIX%\Library\lib\cmake\vinecopulib\vinecopulibConfigVersion.cmake exit 1
if not exist %PREFIX%\Library\lib\cmake\vinecopulib\vinecopulibTargets.cmake exit 1