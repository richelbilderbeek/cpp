



 

 

 

 

 

([C++](Cpp.htm)) [\_popen is not a member of std](CppCompileError_popenIsNotAmemberOfStd.htm)
=============================================================================================

 

[Compile error](CppCompileError.htm) that might occur when using my
[Gnuplot Interface](CppGnuplotInterface.htm) [class](CppClass.htm).

 

The one function that this class is built around is the **popen**
function. This is a non-standard function to open a pipe. If this
function is unknown under your programming environment, try either
'std::popen', 'std::\_popen', 'std::\_\_popen', 'popen', '\_popen' or
'\_\_popen'.

 

[Gnuplot Interface](CppGnuplotInterface.htm) was developed under
KDevelop on a Macintosh.

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
