



 

 

 

 

 

([C++](Cpp.htm)) [Trim](CppTrim.htm)
====================================

 

[Trim](CppTrim.htm) is a [std::string](CppStdString.htm) [code
snippet](CppCodeSnippets.htm) to remove leading and trailing whitespace
from a [std::string](CppStdString.htm).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppTrim/CppTrim.pro
--------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTrim/main.cpp
------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  ///Trim leading and trailing whitespace //From http://www.richelbilderbeek.nl/CppTrim.htm std::string TrimStl(const std::string& s) {   const int size{static_cast<int>(s.size())};   int pos_begin = -1;   int pos_end = size-1;   for (int i=0; i!=size; ++i)   {     if (s[i]!=' ' && s[i]!='\n' && s[i]!='\t')     {       pos_begin = i; break;     }   }   if (pos_begin == -1) return "";   for (int i=size-1; i!=-1; --i)   {     if (s[i]!=' ' && s[i]!='\n' && s[i]!='\t')     {       pos_end = i; break;     }   }   return s.substr(pos_begin,pos_end-pos_begin+1); }  #include <string> #include <boost/algorithm/string/trim.hpp>  ///Trim leading and trailing whitespace //From http://www.richelbilderbeek.nl/CppTrim.htm const std::string TrimBoost(const std::string& s) {   return boost::algorithm::trim_copy(s); }  int main() {   assert(TrimStl(" abc ") == "abc");   assert(TrimStl(" ab c ") != "abc");    assert(TrimBoost(" abc ") == "abc");   assert(TrimBoost(" ab c ") != "abc"); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
