

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetQtVersion](CppGetQtVersion.htm)
====================================================

 

[GetQtVersion](CppGetQtVersion.htm) is a [version](CppVersion.htm) [code
snippets](CppCodeSnippets.htm) to obtain the [version](CppVersion.htm)
of the current [Qt](CppQt.htm) [library](CppLibrary.htm) in use.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <Qt/qglobal.h>  ///GetQtVersion returns the version of the Qt library installed. ///From http://www.richelbilderbeek.nl/CppGetQtVersion.htm const std::string GetQtVersion() {   return QT_VERSION_STR; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
