



 

 

 

 

 

([C++](Cpp.md)) [undefined reference to 'vtable for MyDialog'](CppLinkErrorUndefinedReferenceToVtableForMyDialog.md)
======================================================================================================================

 

[link error](CppLinkError.md).

 

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

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.7.0 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.4.5

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppLinkErrorUndefinedReferenceToVtableForMyDialog.pro
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

 

Seperate the MyDialog [class](CppClass.md) in a [header (.h)
file](CppHeaderFile.md) and an [implementation (.cpp)
file](CppImplementationFile.md).

 

 

 

 

 





 



