



 

 

 

 

 

([C++](Cpp.htm)) [CanCast](CanCast.htm)
=======================================

 

[CanCast](CanCast.htm) is a [checking](CppCheck.htm) [code
snippet](CppCodeSnippets.htm) that let you check if you **can** convert
a [std::string](CppString.htm) to another [data type](CppDataType.htm)
when using [LexicalCast](CppLexicalCast.htm).

 

[CanCast](CppCanCast.htm) serves the same purpose as
[CanLexicalCast](CppCanLexicalCast.htm), but does not
[throw](CppThrow.htm) an [exception](CppException.htm) and does not use
[Boost](CppBoost.htm). Note that there are differences between
[CanCast](CppCanCast.htm) and [CanLexicalCast](CppCanLexicalCast.htm),
as [CanLexicalCast](CppCanLexicalCast.htm) is more strict. Below the
code, a comparison between the two is shown.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <sstream>  //From http://www.richelbilderbeek.nl/CppCanCast.htm template <class TargetType> const bool CanCast(const std::string& from) {   std::istringstream i(from);   TargetType temp;   return ( (i >> temp) ? true : false ); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Comparison between [CanCast](CppCanCast.htm) and [CanLexicalCast](CppCanLexicalCast.htm)
----------------------------------------------------------------------------------------

 

The table below shows if a std::string can be converted according to
[CanCast](CppCanCast.htm) (CC) and
[CanLexicalCast](CppCanLexicalCast.htm) (CLC). Note that the first
std::string was a space (' '). Below the table I show the code I've used
to generate this output. [CanCast](CppCanCast.htm) serves the same
purpose as [CanLexicalCast](CppCanLexicalCast.htm), but does not
[throw](CppThrow.htm) an [exception](CppException.htm) and does not use
[Boost](CppBoost.htm). Note that there are differences between
[CanCast](CppCanCast.htm) and [CanLexicalCast](CppCanLexicalCast.htm),
as [CanLexicalCast](CppCanLexicalCast.htm) is more strict.

 

+----------------+----------------+----------------+----------------+----------------+
| Type           | int            | int            | double         | double         |
+----------------+----------------+----------------+----------------+----------------+
| string         | CC             | CLC            | CC             | CLC            |
+----------------+----------------+----------------+----------------+----------------+
|                | false          | false          | false          | false          |
+----------------+----------------+----------------+----------------+----------------+
| a              | false          | false          | false          | false          |
+----------------+----------------+----------------+----------------+----------------+
| 1              | true           | true           | true           | true           |
+----------------+----------------+----------------+----------------+----------------+
| 1,1            | true           | false          | true           | false          |
+----------------+----------------+----------------+----------------+----------------+
| 1.1            | true           | false          | true           | true           |
+----------------+----------------+----------------+----------------+----------------+
| 1.1.1          | true           | false          | true           | false          |
+----------------+----------------+----------------+----------------+----------------+
| -1             | true           | true           | true           | true           |
+----------------+----------------+----------------+----------------+----------------+
| -1.1           | true           | false          | true           | true           |
+----------------+----------------+----------------+----------------+----------------+
| -1.1.1         | true           | false          | true           | false          |
+----------------+----------------+----------------+----------------+----------------+

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   int main() {   std::vector<std::string> v;   v.push_back("");   v.push_back("a");   v.push_back("1");   v.push_back("1,1");   v.push_back("1.1");   v.push_back("1.1.1");   v.push_back("-1");   v.push_back("-1.1");   v.push_back("-1.1.1");       std::cout << "Type"       << '\t' << "int"       << '\t' << "int"       << '\t' << "double"       << '\t' << "double"       << std::endl;     std::cout << "string"       << '\t' << "CC"       << '\t' << "CLC"       << '\t' << "CC"       << '\t' << "CLC"       << std::endl;     std::cout << std::boolalpha;     const std::size_t size = v.size();   for (std::size_t i=0; i!=size; ++i)   {     std::cout << v[i]       << '\t' << CanCast<int>(v[i])       << '\t' << CanLexicalCast<int>(v[i])       << '\t' << CanCast<double>(v[i])       << '\t' << CanLexicalCast<double>(v[i])       << '\n';   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
