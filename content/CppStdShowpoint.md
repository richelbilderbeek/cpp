



 

 

 

 

 

([C++](Cpp.md)) [std::showpoint](CppShowpoint.md)
===================================================

 

[std::showpoint](CppShowpoint.md) is an [STL](CppStl.md)
[stream](CppStream.md) manipulator to show the zeroes behind the comma
of a [double](CppDouble.md).

 

-   [Download the Qt Creator project
    'CppShowpoint' (zip)](CppShowpoint.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iomanip> int main () {   std::cout     << std::setprecision(10)     << std::noshowpoint << 1.0 << '\n'     << std::showpoint   << 1.0 << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------
  ` 1 1.000000000`
  ------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
