[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png)![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) [undefined reference to 'Wt::WRun(int, char\*\*, Wt::WApplication\* (\*)(Wt::WEnvironment const&))'](CppLinkErrorUndefinedReferenceToWtWrun.htm)
=========================================================================================================================================================================================================================================

 

[Link error](CppLinkError.htm)

 

-   [Download the Qt Creator project
    'CppLinkErrorUndefinedReferenceToWtWrun' with this
    error](CppLinkErrorUndefinedReferenceToWtWrun.zip)
-   [Download the Qt Creator project
    'CppLinkErrorUndefinedReferenceToWtWrun' with this error
    fixed](CppLinkErrorUndefinedReferenceToWtWrunFixed.zip)

 

 

 

 

 

Full error message
------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function 'main': /MyFolder/main.cpp:16: error: undefined reference to 'Wt::WRun(int, char**, Wt::WApplication* (*)(Wt::WEnvironment const&))'`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 10.10 (maverick)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.5

[Libraries](CppLibrary.htm) used:

-   ![Wt](PicWt.png) [Wt](CppWt.htm): version 3.1.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppLinkErrorUndefinedReferenceToWtWrun.pro
-----------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-12-29T17:23:02 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppLinkErrorUndefinedReferenceToWtWrun CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //--------------------------------------------------------------------------- #include <Wt/WApplication> //--------------------------------------------------------------------------- struct MyWtClass : public Wt::WApplication {   MyWtClass(const Wt::WEnvironment& env)     : Wt::WApplication(env) {} }; //--------------------------------------------------------------------------- Wt::WApplication * createApplication(const Wt::WEnvironment& env) {   return new MyWtClass(env); } //--------------------------------------------------------------------------- int main(int argc, char **argv) {   return Wt::WRun(argc, argv, &createApplication); } //--------------------------------------------------------------------------- `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Add the following line to your [Qt project file](CppQtProjectFile.htm):

 

  --------------------------
  ` LIBS += -lwt -lwthttp`
  --------------------------

 

-   [Download the Qt Creator project
    'CppLinkErrorUndefinedReferenceToWtWrun' with this
    error](CppLinkErrorUndefinedReferenceToWtWrun.zip)
-   [Download the Qt Creator project
    'CppLinkErrorUndefinedReferenceToWtWrun' with this error
    fixed](CppLinkErrorUndefinedReferenceToWtWrunFixed.zip)

 

Note that the fixed version results in the [misc
error](CppMiscError.htm) [stat: No such file or directory. Document root
("") not
valid.](CppMiscErrorStatNoSuchFileOrDirectoryDocumentRootNotValid.htm)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
