



 

 

 

 

 

([C++](Cpp.htm)) [pure virtual method called](CppRuntimeErrorPureVirtualMethodCalled.htm)
=========================================================================================

 

[pure virtual method called](CppRuntimeErrorPureVirtualMethodCalled.htm)
is a [runtime error](CppRuntimeError.htm).

 

-   [Download the Qt Creator project
    'CppRuntimeErrorPureVirtualMethodCalled' (zip)](CppRuntimeErrorPureVirtualMethodCalled.zip)
-   [View the 'CppRuntimeErrorPureVirtualMethodCalled' program
    flow (png)](CppRuntimeErrorPureVirtualMethodCalled.png)

 

Below I posted code to reproduce the error, which I adapted from \[1\].
Also from \[1\]: 'So what’s the moral of the story? If you ever see the
error message pure virtual method called / terminate called without an
active exception, check your object lifetimes! You may be trying to call
members on a destructing (and thus incomplete) object'.

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 11.04 (natty)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.5.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.5.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppPureVirtualMethodCalled.pro
-----------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-08-04T10:58:45 # #------------------------------------------------- QT       += core QT       -= gui QMAKE_CXXFLAGS += -std=c++0x TARGET = CppPureVirtualMethodCalled CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <thread>  struct Base {   virtual ~Base() { sleep(1); }   virtual void DoIt() const = 0; };  struct Derived : public Base {   virtual ~Derived() { }   virtual void DoIt() const { } };  void Task(const void* const p) {   const Base * const b = reinterpret_cast<const Base*>(p);   while (1) b->DoIt(); }  int main() {   const Base * const b = new Derived();   std::thread t(Task,b);   delete b; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Screen output
-------------

 

  -------------------------------------------------------------------------------------------------------------------
  ` pure virtual method called terminate called without an active exception The program has unexpectedly finished.`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Program flow
------------

 

-   [View the 'CppRuntimeErrorPureVirtualMethodCalled' program
    flow (png)](CppRuntimeErrorPureVirtualMethodCalled.png)

 

The program flow can be seen in the (png) picture above. Not how first
the [instance](CppInstance.htm) is [deleted](CppDelete.htm)m before the
[thread](CppThread.htm) starts working with it.

 

 

 

 

 

[References](CppReferences.htm)

 

1.  Software Architecture blog

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
