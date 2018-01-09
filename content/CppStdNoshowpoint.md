
 

 

 

 

 

([C++](Cpp.md)) [std::noshowpoint](CppStdNoshowpoint.md)
=======================================================

 

[std::noshowpoint](CppStdNoshowpoint.md) is an [STL](CppStl.md)
[stream](CppStream.md) manipulator to not show the zeroes behind the
comma of a [double](CppDouble.md).

 

-   [Download the Qt Creator project
    'CppNoshowpoint' (zip)](CppStdNoshowpoint.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iomanip> int main () {   std::cout     << std::setprecision(10)     << std::showpoint   << 1.0 << '\n'     << std::noshowpoint << 1.0 << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------
  ` 1.000000000 1`
  ------------------

 

 

 

 

 

 

