[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [AnsiIsDouble](CppAnsiIsDouble.htm)
====================================================

 

[AnsiIsDouble](CppAnsiIsDouble.htm) is a [check](CppCheck.htm) [code
snippet](CppCodeSnippets.htm) to see if an
[AnsiString](CppAnsiString.htm) can be [converted](CppConvert.htm) to
[double](CppDouble.htm).

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: Windows XP

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0 Enterprise edition

[Project type](CppQtProjectType.htm): Console Application

[Compiler](CppCompiler.htm): [BCC32.EXE](CppBcc32Exe.htm) version
6.0.10.157

[Libraries](CppLibrary.htm) used:

-   [VCL](CppVcl.htm): shipped with [C++ Builder](CppBuilder.htm) 6.0
    Enterprise edition

 

 

 

 

 

### main.cpp

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppAnsiIsDouble.htm const bool AnsiIsDouble(const AnsiString& s, double& rDouble) {   return TryStrToFloat(s, rDouble); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
