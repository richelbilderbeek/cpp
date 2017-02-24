[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [IsRegularFile](CppIsRegularFile.htm)
======================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[IsRegularFile](CppIsRegularFile.htm) is a [file I/O](CppFileIo.htm)
[code snippet](CppCodeSnippets.htm) to determine if a filename is a
regular file.

 

-   [Download the Qt Creator project
    'CppIsRegularFile' (zip)](CppIsRegularFile.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppIsRegularFile/CppIsRegularFile.pro
--------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += qt console CONFIG -= app_bundle QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror SOURCES += main.cpp  win32 {   #message(Native Windows dynamic link to Boost)   INCLUDEPATH += \     ../../Libraries/boost_1_54_0    debug {     LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_filesystem-mgw48-mt-d-1_54.a     LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_system-mgw48-mt-d-1_54.a   }   release {     LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_filesystem-mgw48-mt-1_54.a     LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_system-mgw48-mt-1_54.a   } }  RESOURCES += \     CppIsRegularFile.qrc`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppIsRegularFile/main.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdio> #include <fstream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/filesystem.hpp> #pragma GCC diagnostic pop  #include <QDir> #include <QFile>  ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFileBoostFilesystem(const std::string& filename) {   return boost::filesystem::is_regular_file(filename); }  ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFileQt(const std::string& filename) {   return !QDir(filename.c_str()).exists() && QFile::exists(filename.c_str()); }  ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFileStl(const std::string& filename) {   std::fstream f;   f.open(filename.c_str(),std::ios::in);   return f.is_open(); }  int main(int /* argc */, char * argv[]) {   assert(IsRegularFileBoostFilesystem(argv[0]));   assert(IsRegularFileQt(argv[0]));   assert(IsRegularFileStl(argv[0]));    assert(!IsRegularFileBoostFilesystem("../CppIsRegularFile"));   assert(!IsRegularFileQt("../CppIsRegularFile"));   assert(!IsRegularFileStl("../CppIsRegularFile"));    {     std::remove("tmp.txt");      //Create a regular file     assert(!IsRegularFileBoostFilesystem("tmp.txt"));     assert(!IsRegularFileQt("tmp.txt"));     assert(!IsRegularFileStl("tmp.txt"));     {       std::fstream f;       f.open("tmp.txt",std::ios::out);       f << "TEMP TEXT";       f.close();     }     assert(IsRegularFileBoostFilesystem("tmp.txt"));     assert(IsRegularFileQt("tmp.txt"));     assert(IsRegularFileStl("tmp.txt"));      std::remove("tmp.txt");      assert(!IsRegularFileBoostFilesystem("tmp.txt"));     assert(!IsRegularFileQt("tmp.txt"));     assert(!IsRegularFileStl("tmp.txt"));   }   {     //Create a folder     std::system("mkdir tmp");     assert(!IsRegularFileBoostFilesystem("tmp"));     assert(!IsRegularFileQt("tmp"));     assert(!IsRegularFileStl("tmp"));     std::system("rmdir tmp");   }    assert(!IsRegularFileBoostFilesystem(":/images/R.png")     && "Boost cannot detect Qt resources");   assert( IsRegularFileQt(":/images/R.png")     && "Qt can detect Qt resources");   assert(!IsRegularFileStl(":/images/R.png")     && "The STL cannot detect Qt resources"); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
