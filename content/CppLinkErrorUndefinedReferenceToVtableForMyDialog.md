

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [undefined reference to 'vtable for MyDialog'](CppLinkErrorUndefinedReferenceToVtableForMyDialog.htm)
======================================================================================================================

 

[link error](CppLinkError.htm).

 

-   [Download the Qt Creator project
    'CppLinkErrorUndefinedReferenceToVtableForMyDialog' with this
    error (zip)](CppLinkErrorUndefinedReferenceToVtableForMyDialog.zip)

 

 

 

 

 

Full error message
------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function 'MyDialog': /MyFolder/main.cpp:4: error: undefined reference to 'vtable for MyDialog' /MyFolder/main.o:: In function '~MyDialog': /MyFolder/main.cpp:4: error: undefined reference to 'vtable for MyDialog' collect2: ld returned 1 exit status`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.7.0 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.4.5

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppLinkErrorUndefinedReferenceToVtableForMyDialog.pro
----------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-12-29T14:26:41 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppLinkErrorUndefinedReferenceToVtableForMyDialog CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QObject>  class MyDialog : public QObject {   Q_OBJECT    public slots:     void onSomething() { } };  int main() {   MyDialog dialog; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Seperate the MyDialog [class](CppClass.htm) in a [header (.h)
file](CppHeaderFile.htm) and an [implementation (.cpp)
file](CppImplementationFile.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
