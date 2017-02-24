[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetQtCreatorVersion](CppGetQtCreatorVersion.htm)
==================================================================

 

[GetQtCreatorVersion](CppGetQtCreatorVersion.htm) is a
[version](CppVersion.htm) [code snippet](CppCodeSnippets.htm) to obtain
the version of Qt Creator.

 

-   [Download the Qt Creator project
    'CppGetQtCreatorVersion' (zip)](CppGetQtCreatorVersion.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)
-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.48
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppGetQtCreatorVersion.pro
-------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app LIBS += -lboost_filesystem -lboost_system CONFIG += console CONFIG -= qt  SOURCES += main.cpp  `
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <fstream> #include <string> #include <cstdlib> #include <vector> #include <boost/filesystem.hpp>  ///FileToVector reads a file and converts it to a std::vector<std::string> ///From http://www.richelbilderbeek.nl/CppFileToVector.htm const std::vector<std::string> FileToVector(const std::string& filename) {    assert(boost::filesystem::exists(filename));   std::vector<std::string> v;   std::ifstream in(filename.c_str());   std::string s;   for (int i=0; !in.eof(); ++i)   {     std::getline(in,s);     v.push_back(s);   }   return v; }  ///GetQtCreatorVersion obtains the version of Qt Creator ///From http://www.richelbilderbeek.nl/CppGetQtCreatorVersion.htm const std::string GetQtCreatorVersion() {   //'2>' denotes -AFAIK- 'Write to file only, no screen output'   std::system("qtcreator -version 2> tmp.txt");   const std::vector<std::string> v = FileToVector("tmp.txt");   const std::size_t sz = v.size();   assert(sz > 1);   for (std::size_t i=0; i!=sz; ++i)   {     const std::string& s = v[i];     if (s.substr(0,11) == std::string("Qt Creator "))     {       return s.substr(11,5);     }   }   return ""; }  int main() {   std::cout << GetQtCreatorVersion() << '\n'; }  /* Screen output: 2.5.2 */ `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
