

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Operation not permitted](CppRuntimeErrorOperationNotPermitted.htm)
====================================================================================

 

[Operation not permitted](CppRuntimeErrorOperationNotPermitted.htm) is a
[runtime error](CppRuntimeError.htm).

 

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

 

With [Qt Creator project file](CppQtProjectFile.htm):

 

  ---------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Add the following line to the [Qt Creator project
file](CppQtProjectFile.htm):

 

  ----------------------
  ` LIBS += -lpthread`
  ----------------------

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
