
 

 

 

 

 

([C++](Cpp.md)) [MemcheckExample6](CppMemcheckExample6.md)
============================================================

 

![Wt](PicWt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[memcheck example 6: how to stop a Wt server](CppMemcheckExample6.md)
is a [memcheck](CppMemcheck.md) example that tests how to stop a
[Wt](CppWt.md) server cleanly.

 

-   [Download the Qt Creator project
    'CppMemcheckExample6' (zip)](CppMemcheckExample6.zip)
-   [View the valgrind output of 'CppMemcheckExample6' and pressing
    CTRL-C (txt)](CppMemcheckExample6_ctrl_c.txt)
-   [View the valgrind output of 'CppMemcheckExample6' and
    calling std::exit(0) (txt)](CppMemcheckExample6_exit.txt)
-   [View the valgrind output of 'CppMemcheckExample6' and calling
    throw (txt)](CppMemcheckExample6_throw.txt)

 

This example was developed, because tools like
[valgrind](CppValgrind.md) and the [profiler](CppProfiler.md)
[gprof](CppGprof.md) require a program to quit without errors.

 

This web application creates four buttons, that each use a different way
to let [main](CppMain.md) [return](CppReturn.md). Of these four
buttons, two are disabled: these call methods that do not cause the
application to terminate (yet). When starting the web application from
command line, pressing CTRL-C is another option to cleanly terminate it.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppMemcheckExample6/CppMemcheckExample6.pro
--------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------
  ` include(../../WebApplication.pri) include(../../Libraries/BoostAll.pri) include(../../Libraries/Wt.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemcheckExample6/main.cpp
------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <Wt/WApplication> #include <Wt/WBreak> #include <Wt/WContainerWidget> //#include <Wt/WLineEdit> #include <Wt/WPushButton> //#include <Wt/WText> #include <Wt/WServer>  struct ApplicationCppValgrindExample6 : public Wt::WApplication {   ApplicationCppValgrindExample6(const Wt::WEnvironment& env)   : Wt::WApplication(env)   {     this->setTitle("CppValgrindExample6");     {       Wt::WPushButton * button = new Wt::WPushButton("Call std::exit(0)");       button->clicked().connect(this,&ApplicationCppValgrindExample6::DoExit);       this->root()->addWidget(button);     }     {       Wt::WPushButton * button = new Wt::WPushButton("Call Wt::WServer::waitForShutdown and Wt::WServer::stop");       button->setEnabled(false);       button->clicked().connect(this,&ApplicationCppValgrindExample6::DoStop1);       this->root()->addWidget(button);     }     {       Wt::WPushButton * button = new Wt::WPushButton("Call Wt::WServer::stop");       button->setEnabled(false);       button->clicked().connect(this,&ApplicationCppValgrindExample6::DoStop2);       this->root()->addWidget(button);     }     {       Wt::WPushButton * button = new Wt::WPushButton("Throw");       button->clicked().connect(this,&ApplicationCppValgrindExample6::DoThrow);       this->root()->addWidget(button);     }   }    void DoExit() { std::exit(0); }   void DoStop1()   {     Wt::WServer::instance()->waitForShutdown();     Wt::WServer::instance()->stop();   }   void DoStop2() { Wt::WServer::instance()->stop(); }   void DoThrow() { throw; } };   Wt::WApplication * CreateApplication(const Wt::WEnvironment& env) {   return new ApplicationCppValgrindExample6(env); }  int main(int, char *argv[]) {   //C++0x initializer list   const char * const v[7] =   {     argv[0],     "--docroot", ".",     "--http-port", "8080",     "--http-address", "0.0.0.0"   };   return WRun(7, const_cast<char**>(v), &CreateApplication); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemcheckExample6/valgrind\_memcheck.sh
-------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh valgrind --leak-check=full -v --show-reachable=yes --log-file=valgrind_memcheck.txt ../CppValgrindExample6-build-desktop/./CppValgrindExample6`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
