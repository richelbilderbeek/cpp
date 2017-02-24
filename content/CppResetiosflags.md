



 

 

 

 

 

([C++](Cpp.htm)) [std::resetiosflags](CppResetiosflags.htm)
===========================================================

 

[std::resetiosflags](CppResetiosflags.htm) is an [STL](CppStl.htm)
stream manipulator to toggle a std::ios flag.

 

-   [Download the Qt Creator project
    'CppResetiosflags' (zip)](CppResetiosflags.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iomanip> #include <iostream> int main () {   std::cout     << std::setiosflags(std::ios_base::showpoint)   << 1.0 << '\n'     << std::resetiosflags(std::ios_base::showpoint) << 1.0 << '\n'; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------
  ` 1.00000 1`
  --------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
