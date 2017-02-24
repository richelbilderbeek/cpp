[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetFilesInFolder](CppGetFilesInFolder.htm)
============================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[GetFilesInFolder](CppGetFilesInFolder.htm) is a [file
I/O](CppFileIo.htm) [code snippet](CppCodeSnippets.htm) to obtain all
filenames in a folder.

 

-   [Download the Qt Creator project
    'CppGetFilesInFolder' (zip)](CppGetFilesInFolder.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppGetFilesInFolder/CppGetFilesInFolder.pro
--------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/BoostAll.pri)  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppGetFilesInFolder/main.cpp
------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string> #include <vector>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/filesystem.hpp>  #include <QDir> #pragma GCC diagnostic pop  //From http://www.richelbilderbeek.nl/CppGetFilesInFolder.htm const std::vector<std::string> GetFilesInFolderBoost(const std::string& folder) {   std::vector<std::string> v;    const boost::filesystem::path my_folder     = boost::filesystem::system_complete(         boost::filesystem::path(folder));    if (!boost::filesystem::is_directory(my_folder)) return v;    const boost::filesystem::directory_iterator j;   for ( boost::filesystem::directory_iterator i(my_folder);         i != j;         ++i)   {     if ( boost::filesystem::is_regular_file( i->status() ) )     {       const std::string filename = i->path().filename().string();        //Works with older version of Boost.Filesystem:       //const std::string filename = i->path().filename();       v.push_back(filename);     }   }   return v; }  ///GetFilesInFolder creates a std::vector of filenames in a certain folder. //From http://www.richelbilderbeek.nl/CppGetFilesInFolder.htm const std::vector<std::string> GetFilesInFolderQt(const std::string& folder) {   QDir dir(folder.c_str());   dir.setFilter(QDir::Files);   const QFileInfoList list = dir.entryInfoList();    //Convert QFileInfoList to std::vector<std::string> of filenames   std::vector<std::string> v;   const int size = list.size();   for (int i = 0; i != size; ++i)   {     const std::string file_name = list.at(i).fileName().toStdString();     v.push_back(file_name);   }   return v; }  int main() {   const std::string folder = ".";   assert(GetFilesInFolderBoost(folder) == GetFilesInFolderQt(folder));   const std::vector<std::string> v = GetFilesInFolderBoost(folder);   std::copy(v.begin(),v.end(),std::ostream_iterator<std::string>(std::cout,"\n"));   std::cout << "Number of files: " << v.size() << '\n'; }  /* Screen output:  Makefile Makefile.Debug Makefile.Release Number of files: 3  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
