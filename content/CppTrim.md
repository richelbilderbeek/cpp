



 

 

 

 

 

([C++](Cpp.md)) [Trim](CppTrim.md)
====================================

 

[Trim](CppTrim.md) is a [std::string](CppStdString.md) [code
snippet](CppCodeSnippets.md) to remove leading and trailing whitespace
from a [std::string](CppStdString.md).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTrim/CppTrim.pro
--------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTrim/main.cpp
------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  ///Trim leading and trailing whitespace //From http://www.richelbilderbeek.nl/CppTrim.htm std::string TrimStl(const std::string& s) {   const int size{static_cast<int>(s.size())};   int pos_begin = -1;   int pos_end = size-1;   for (int i=0; i!=size; ++i)   {     if (s[i]!=' ' && s[i]!='\n' && s[i]!='\t')     {       pos_begin = i; break;     }   }   if (pos_begin == -1) return "";   for (int i=size-1; i!=-1; --i)   {     if (s[i]!=' ' && s[i]!='\n' && s[i]!='\t')     {       pos_end = i; break;     }   }   return s.substr(pos_begin,pos_end-pos_begin+1); }  #include <string> #include <boost/algorithm/string/trim.hpp>  ///Trim leading and trailing whitespace //From http://www.richelbilderbeek.nl/CppTrim.htm const std::string TrimBoost(const std::string& s) {   return boost::algorithm::trim_copy(s); }  int main() {   assert(TrimStl(" abc ") == "abc");   assert(TrimStl(" ab c ") != "abc");    assert(TrimBoost(" abc ") == "abc");   assert(TrimBoost(" ab c ") != "abc"); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
