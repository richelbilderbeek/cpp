



 

 

 

 

 

([C++](Cpp.htm)) [FileToVector](CppFileToVector.htm)
====================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[File I/O](CppFileIo.htm) is a [code snippet](CppCodeSnippets.htm) to
[convert](CppConvert.htm) a file to a
[std::vector](CppStdVector.htm)&lt;[std::string](CppStdString.htm)&gt;.
[File I/O](CppFileIo.htm) you have already defined the
[FileExists](CppFileExists.htm) function.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppFileToVector/CppFileToVector.pro
------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppFileToVector/main.cpp
--------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream> #include <vector>  ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFile(const std::string& filename) {   std::fstream f;   f.open(filename.c_str(),std::ios::in);   return f.is_open(); }  ///FileToVector reads a file and converts it to a std::vector<std::string> ///From http://www.richelbilderbeek.nl/CppFileToVector.htm std::vector<std::string> FileToVector(const std::string& filename) {   assert(IsRegularFile(filename));   std::vector<std::string> v;   std::ifstream in(filename.c_str());   for (int i=0; !in.eof(); ++i)   {     std::string s;     std::getline(in,s);     v.push_back(s);   }   return v; }  #include <iostream> #include <iterator>  int main() {   //Read the file   const auto v = FileToVector("../CppFileToVector/main.cpp");    //Prints the file contents   std::copy(     std::begin(v),std::end(v),     std::ostream_iterator<std::string>(std::cout,"\n")   ); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
