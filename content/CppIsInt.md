
 

 

 

 

 

([C++](Cpp.md)) [IsInt](CppIsInt.md)
======================================

 

[IsInt](CppIsInt.md) is a [checking](CppCheck.md) [code
snippet](CppCodeSnippets.md) to [check](CppCheck.md) if a
[std::string](CppStdString.md) can be [converted](CppConvert.md) to an
[integer](CppInt.md).

 

[CanCast](CppCanCast.md) and [CanLexicalCast](CppCanLexicalCast.md)
are more general versions of [IsInt](CppIsInt.md).

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppIsInt/CppIsInt.pro
----------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppIsInt/main.cpp
-------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <sstream>  ///IsInt determines if std::string can be converted to integer. ///From http://www.richelbilderbeek.nl/CppIsInt.htm bool IsIntStl(const std::string& s) {   std::istringstream i(s);   int temp{0};   i >> temp;   if (!i) return false;   char c{'\0'}; //Should be at end, if not, the string contained more than just a number   i >> c;   if (i) return false;   return true; }  #include <boost/lexical_cast.hpp>  ///IsInt determines if std::string can be converted to integer. ///From http://www.richelbilderbeek.nl/CppIsInt.htm bool IsIntBoost(const std::string& s) noexcept {   try   {     boost::lexical_cast<int>(s);     return true;   }   catch (boost::bad_lexical_cast&)   {     return false;   } }  #include <cassert>  int main() {   assert(IsIntStl("3"));   assert(IsIntStl("0"));   assert(IsIntStl("-23"));   assert(!IsIntStl("a"));   assert(!IsIntStl("2+fire"));    assert(IsIntBoost("3"));   assert(IsIntBoost("0"));   assert(IsIntBoost("-23"));   assert(!IsIntBoost("a"));   assert(!IsIntBoost("2+fire")); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
