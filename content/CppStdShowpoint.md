[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::showpoint](CppShowpoint.htm)
===================================================

 

[std::showpoint](CppShowpoint.htm) is an [STL](CppStl.htm)
[stream](CppStream.htm) manipulator to show the zeroes behind the comma
of a [double](CppDouble.htm).

 

-   [Download the Qt Creator project
    'CppShowpoint' (zip)](CppShowpoint.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <iomanip> int main () {   std::cout     << std::setprecision(10)     << std::noshowpoint << 1.0 << '\n'     << std::showpoint   << 1.0 << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------
  ` 1 1.000000000`
  ------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
