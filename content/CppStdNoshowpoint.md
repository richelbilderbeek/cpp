



 

 

 

 

 

([C++](Cpp.md)) [std::noshowpoint](CppNoshowpoint.md)
=======================================================

 

[std::noshowpoint](CppNoshowpoint.md) is an [STL](CppStl.md)
[stream](CppStream.md) manipulator to not show the zeroes behind the
comma of a [double](CppDouble.md).

 

-   [Download the Qt Creator project
    'CppNoshowpoint' (zip)](CppNoshowpoint.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iomanip> int main () {   std::cout     << std::setprecision(10)     << std::showpoint   << 1.0 << '\n'     << std::noshowpoint << 1.0 << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------
  ` 1.000000000 1`
  ------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
