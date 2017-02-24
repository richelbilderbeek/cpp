



 

 

 

 

 

([C++](Cpp.md)) [FileToVector](CppFileToVector.md)
====================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[File I/O](CppFileIo.md) is a [code snippet](CppCodeSnippets.md) to
[convert](CppConvert.md) a file to a
[std::vector](CppStdVector.md)&lt;[std::string](CppStdString.md)&gt;.
[File I/O](CppFileIo.md) you have already defined the
[FileExists](CppFileExists.md) function.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppFileToVector/CppFileToVector.pro
------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppFileToVector/main.cpp
--------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream> #include <vector>  ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFile(const std::string& filename) {   std::fstream f;   f.open(filename.c_str(),std::ios::in);   return f.is_open(); }  ///FileToVector reads a file and converts it to a std::vector<std::string> ///From http://www.richelbilderbeek.nl/CppFileToVector.htm std::vector<std::string> FileToVector(const std::string& filename) {   assert(IsRegularFile(filename));   std::vector<std::string> v;   std::ifstream in(filename.c_str());   for (int i=0; !in.eof(); ++i)   {     std::string s;     std::getline(in,s);     v.push_back(s);   }   return v; }  #include <iostream> #include <iterator>  int main() {   //Read the file   const auto v = FileToVector("../CppFileToVector/main.cpp");    //Prints the file contents   std::copy(     std::begin(v),std::end(v),     std::ostream_iterator<std::string>(std::cout,"\n")   ); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
