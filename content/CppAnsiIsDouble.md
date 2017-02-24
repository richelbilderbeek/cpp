



 

 

 

 

 

([C++](Cpp.md)) [AnsiIsDouble](CppAnsiIsDouble.md)
====================================================

 

[AnsiIsDouble](CppAnsiIsDouble.md) is a [check](CppCheck.md) [code
snippet](CppCodeSnippets.md) to see if an
[AnsiString](CppAnsiString.md) can be [converted](CppConvert.md) to
[double](CppDouble.md).

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: Windows XP

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0 Enterprise edition

[Project type](CppQtProjectType.md): Console Application

[Compiler](CppCompiler.md): [BCC32.EXE](CppBcc32Exe.md) version
6.0.10.157

[Libraries](CppLibrary.md) used:

-   [VCL](CppVcl.md): shipped with [C++ Builder](CppBuilder.md) 6.0
    Enterprise edition

 

 

 

 

 

### main.cpp

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppAnsiIsDouble.htm const bool AnsiIsDouble(const AnsiString& s, double& rDouble) {   return TryStrToFloat(s, rDouble); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



