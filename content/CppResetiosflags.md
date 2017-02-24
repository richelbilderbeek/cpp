

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
