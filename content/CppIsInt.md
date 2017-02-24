



 

 

 

 

 

([C++](Cpp.htm)) [IsInt](CppIsInt.htm)
======================================

 

[IsInt](CppIsInt.htm) is a [checking](CppCheck.htm) [code
snippet](CppCodeSnippets.htm) to [check](CppCheck.htm) if a
[std::string](CppStdString.htm) can be [converted](CppConvert.htm) to an
[integer](CppInt.htm).

 

[CanCast](CppCanCast.htm) and [CanLexicalCast](CppCanLexicalCast.htm)
are more general versions of [IsInt](CppIsInt.htm).

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppIsInt/CppIsInt.pro
----------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppIsInt/main.cpp
-------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <sstream>  ///IsInt determines if std::string can be converted to integer. ///From http://www.richelbilderbeek.nl/CppIsInt.htm bool IsIntStl(const std::string& s) {   std::istringstream i(s);   int temp{0};   i >> temp;   if (!i) return false;   char c{'\0'}; //Should be at end, if not, the string contained more than just a number   i >> c;   if (i) return false;   return true; }  #include <boost/lexical_cast.hpp>  ///IsInt determines if std::string can be converted to integer. ///From http://www.richelbilderbeek.nl/CppIsInt.htm bool IsIntBoost(const std::string& s) noexcept {   try   {     boost::lexical_cast<int>(s);     return true;   }   catch (boost::bad_lexical_cast&)   {     return false;   } }  #include <cassert>  int main() {   assert(IsIntStl("3"));   assert(IsIntStl("0"));   assert(IsIntStl("-23"));   assert(!IsIntStl("a"));   assert(!IsIntStl("2+fire"));    assert(IsIntBoost("3"));   assert(IsIntBoost("0"));   assert(IsIntBoost("-23"));   assert(!IsIntBoost("a"));   assert(!IsIntBoost("2+fire")); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
