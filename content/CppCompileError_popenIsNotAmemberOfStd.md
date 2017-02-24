
 

 

 

 

 

([C++](Cpp.md)) [\_popen is not a member of std](CppCompileError_popenIsNotAmemberOfStd.md)
=============================================================================================

 

[Compile error](CppCompileError.md) that might occur when using my
[Gnuplot Interface](CppGnuplotInterface.md) [class](CppClass.md).

 

The one function that this class is built around is the **popen**
function. This is a non-standard function to open a pipe. If this
function is unknown under your programming environment, try either
'std::popen', 'std::\_popen', 'std::\_\_popen', 'popen', '\_popen' or
'\_\_popen'.

 

[Gnuplot Interface](CppGnuplotInterface.md) was developed under
KDevelop on a Macintosh.

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
