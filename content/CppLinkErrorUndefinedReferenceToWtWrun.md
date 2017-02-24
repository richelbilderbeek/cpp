
 

 

 

 

 

([C++](Cpp.md)) ![Wt](PicWt.png)![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png) [undefined reference to 'Wt::WRun(int, char\*\*, Wt::WApplication\* (\*)(Wt::WEnvironment const&))'](CppLinkErrorUndefinedReferenceToWtWrun.md)
=========================================================================================================================================================================================================================================

 

[Link error](CppLinkError.md)

 

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

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 10.10 (maverick)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.5

[Libraries](CppLibrary.md) used:

-   ![Wt](PicWt.png) [Wt](CppWt.md): version 3.1.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppLinkErrorUndefinedReferenceToWtWrun.pro
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

 

Add the following line to your [Qt project file](CppQtProjectFile.md):

 

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
error](CppMiscError.md) [stat: No such file or directory. Document root
("") not
valid.](CppMiscErrorStatNoSuchFileOrDirectoryDocumentRootNotValid.md)

 

 

 

 

 

 

