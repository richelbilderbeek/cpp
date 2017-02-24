



 

 

 

 

 

([C++](Cpp.md)) [Operation not permitted](CppRuntimeErrorOperationNotPermitted.md)
====================================================================================

 

[Operation not permitted](CppRuntimeErrorOperationNotPermitted.md) is a
[runtime error](CppRuntimeError.md).

 

-   [Download the Qt Creator project
    'CppRuntimeErrorOperationNotPermitted' with the
    error (zip)](CppRuntimeErrorOperationNotPermittedError.zip)
-   [Download the Qt Creator project
    'CppRuntimeErrorOperationNotPermitted' with the error
    fixed (zip)](CppRuntimeErrorOperationNotPermittedFixed.zip)

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------------------
  ` terminate called after throwing an instance of 'std::system_error'   what():  Operation not permitted`
  ----------------------------------------------------------------------------------------------------------

 

 

 

 

 

Code causing the error
----------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <thread>  int main() {   std::thread t(     []     {       std::cout<<"Hello world\n";     }   );   t.join(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------

 

With [Qt Creator project file](CppQtProjectFile.md):

 

  ---------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Add the following line to the [Qt Creator project
file](CppQtProjectFile.md):

 

  ----------------------
  ` LIBS += -lpthread`
  ----------------------

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
