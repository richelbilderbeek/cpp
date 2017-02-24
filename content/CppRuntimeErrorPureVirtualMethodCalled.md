
 

 

 

 

 

([C++](Cpp.md)) [pure virtual method called](CppRuntimeErrorPureVirtualMethodCalled.md)
=========================================================================================

 

[pure virtual method called](CppRuntimeErrorPureVirtualMethodCalled.md)
is a [runtime error](CppRuntimeError.md).

 

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

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 11.04 (natty)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.5.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.5.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppPureVirtualMethodCalled.pro
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
the [instance](CppInstance.md) is [deleted](CppDelete.md)m before the
[thread](CppThread.md) starts working with it.

 

 

 

 

 

[References](CppReferences.md)

 

1.  Software Architecture blog

 

 

 

 

 

 

