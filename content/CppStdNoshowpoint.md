



 

 

 

 

 

([C++](Cpp.htm)) [std::noshowpoint](CppNoshowpoint.htm)
=======================================================

 

[std::noshowpoint](CppNoshowpoint.htm) is an [STL](CppStl.htm)
[stream](CppStream.htm) manipulator to not show the zeroes behind the
comma of a [double](CppDouble.htm).

 

-   [Download the Qt Creator project
    'CppNoshowpoint' (zip)](CppNoshowpoint.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iomanip> int main () {   std::cout     << std::setprecision(10)     << std::showpoint   << 1.0 << '\n'     << std::noshowpoint << 1.0 << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------
  ` 1.000000000 1`
  ------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
