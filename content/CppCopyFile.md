

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [CopyFile](CppCopyFile.htm)
============================================

 

[CopyFile](CppCopyFile.htm) is a [file I/O](CppFileIo.htm) [code
snippet](CppCodeSnippets.htm) to copy a file.

 

-   [Download the Qt Creator project
    'CppCopyFile' (zip)](CppCopyFile.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppCopyFile/CppCopyFile.pro
----------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppCopyFile/main.cpp
----------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream> #include <stdexcept>  #ifdef BOOST_H #include <boost/filesystem.hpp> #endif  #ifdef VCL_H #include <SysUtils.hpp> #endif  ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFile(const std::string& filename) {   std::fstream f;   f.open(filename.c_str(),std::ios::in);   return f.is_open(); }  //From http://www.richelbilderbeek.nl/CppCopyFile.htm void CopyFileStl(const std::string& fileNameFrom, const std::string& fileNameTo) {   assert(IsRegularFile(fileNameFrom));   if(IsRegularFile(fileNameTo))   {     throw std::logic_error("Cannot copy over an existing file");   }   std::ifstream in (fileNameFrom.c_str());   std::ofstream out(fileNameTo.c_str());   out << in.rdbuf();   out.close();   in.close(); }  #ifdef BOOST_H //From http://www.richelbilderbeek.nl/CppCopyFile.htm void CopyFileBoost(const std::string& from, const std::string& to) {   assert(IsRegularFile(fileNameFrom));   //Boost will check if the copy is made over an existing file   boost::filesystem::copy_file(from,to); } #endif  #ifdef VCL_H //From http://www.richelbilderbeek.nl/CppCopyFile.htm void CopyFileVcl(const std::string& from, const std::string& to, const bool failIfExists) {   //Use VCL its CopyFile   CopyFile("FileFrom.txt","FileTo.txt",failIfExists); } #endif  int main(int, char* argv[]) {   const std::string tmp_filename = "temp.txt";    //Delete file (in case it exists)   std::remove(tmp_filename.c_str());    //Copy file   CopyFileStl(argv[0],tmp_filename);   assert(IsRegularFile(tmp_filename));    //Clean up temp file by deleting it   std::remove(tmp_filename.c_str());  }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
