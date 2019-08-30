# ([C++](Cpp.md)) [AnsiIsInt](CppAnsiIsInt.md)

[AnsiIsInt](CppAnsiIsInt.md) is a [check](CppCheck.md) [code
snippet](CppCodeSnippets.md) to see if an
[AnsiString](CppAnsiString.md) can be [converted](CppConvert.md) to an
[integer](CppInt.md).

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///AnsiIsInt return if an AnsiString can be converted to an integer ///From http://www.richelbilderbeek.nl/CppAnsiIsInt.htm bool AnsiIsInt(const AnsiString& s, int& rInt) {   return TryStrToInt(s, rInt); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
