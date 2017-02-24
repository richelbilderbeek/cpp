



 

 

 

 

 

([C++](Cpp.md)) [GmockExample1](CppGmockExample1.md)
======================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppGmockExample1/CppGmockExample1.pro
--------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplicationNoEffCpp.pri) #Google Test does not go well together with -weffc++ include(../../Libraries/Boost.pri)   INCLUDEPATH += ../../Libraries/gmock-1.7.0/include INCLUDEPATH += ../../Libraries/gmock-1.7.0/gtest/include  LIBS += -L../../Libraries/gmock-1.7.0/lib -lgmock LIBS += -L../../Libraries/gmock-1.7.0/gtest/lib -lgtest  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppGmockExample1/main.cpp
---------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <gmock/gmock.h>  TEST(MyTestCaseName,OneAndOneIsTwo) {   ASSERT_THAT(1 + 1,testing::Eq(2)); }  int main(int argc, char* argv[]) {   testing::InitGoogleMock(&argc,argv);   return RUN_ALL_TESTS(); }  /* Does not link:  /MyFolder/CppGmockExample1: error while loading shared libraries: libgmock.so.0: cannot open shared object file: No such file or directory  */`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
