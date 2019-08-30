# ([C++](Cpp.md)) [AnsiToStr](CppAnsiToStr.md)

[AnsiToStr](CppAnsiToStr.md) is a [convert](CppConvert.md) [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md) an
[AnsiString](CppAnsiString.md) to [std::string](CppStdString.md).

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  //From http://www.richelbilderbeek.nl/CppAnsiToStr.htm const std::string AnsiToStr(const AnsiString& s) {   return std::string(s.c_str()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
