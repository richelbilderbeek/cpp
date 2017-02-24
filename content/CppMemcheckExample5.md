

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [MemcheckExample5](CppMemcheckExample5.htm)
============================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[memcheck example 5: Hello Qt](CppMemcheckExample5.htm) is a
[memcheck](CppMemcheck.htm) example that tests a ['Hello Qt' program
using Qt Creator under Ubuntu](CppHelloQtQtCreatorUbuntu.htm) for
possible problems.

 

-   [Download the Qt Creator project
    'CppMemcheckExample5' (zip)](CppMemcheckExample5.zip)
-   [View the valgrind output of
    'CppMemcheckExample5' (txt)](CppMemcheckExample5.txt)

 

 

 

 

 

[valgrind\_memcheck.txt](CppMemcheckExample5.txt)
-------------------------------------------------

 

[valgrind](CppValgrind.htm) finds a lot of problems! Because the output
is too big to display here, you can [view valgrind\_memcheck.txt
here](CppMemcheckExample4.txt).

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppMemcheckExample5/CppMemcheckExample5.pro
--------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------
  ` include(../../WebApplication.pri) include(../../Libraries/BoostAll.pri) include(../../Libraries/Wt.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemcheckExample5/main.cpp
------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /*  * Copyright (C) 2008 Emweb bvba, Heverlee, Belgium.  *  * See the LICENSE file for terms of use.  */  #include <Wt/WApplication> #include <Wt/WBreak> #include <Wt/WContainerWidget> #include <Wt/WLineEdit> #include <Wt/WPushButton> #include <Wt/WText>  #include <boost/version.hpp>  using namespace Wt;  /*  * A simple hello world application class which demonstrates how to react  * to events, read input, and give feed-back.  */ class HelloApplication : public WApplication { public:   HelloApplication(const WEnvironment& env);  private:   WLineEdit *nameEdit_;   WText *greeting_;    void greet();   void quit(); //Added by RJCB };  /*  * The env argument contains information about the new session, and  * the initial request. It must be passed to the WApplication  * constructor so it is typically also an argument for your custom  * application constructor. */ HelloApplication::HelloApplication(const WEnvironment& env)   : WApplication(env) {   setTitle("Hello world");                               // application title    root()->addWidget(new WText("Your name, please ? "));  // show some text   nameEdit_ = new WLineEdit(root());                     // allow text input   nameEdit_->setFocus();                                 // give focus    WPushButton *b = new WPushButton("Greet me.", root()); // create a button   b->setMargin(5, Left);                                 // add 5 pixels margin    root()->addWidget(new WBreak());                       // insert a line break    greeting_ = new WText(root());                         // empty text     root()->addWidget(new WBreak());                         // RJCB   WPushButton * const q = new WPushButton("Quit", root()); // RJCB   q->clicked().connect(this, &HelloApplication::quit);     // RJCB    /*    * Connect signals with slots    *    * - simple Wt-way    */   b->clicked().connect(this, &HelloApplication::greet);    /*    * - using an arbitrary function object (binding values with boost::bind())    */   nameEdit_->enterPressed().connect     (boost::bind(&HelloApplication::greet, this)); }  void HelloApplication::greet() {   /*    * Update the text, using text input into the nameEdit_ field.    */   greeting_->setText("Hello there, " + nameEdit_->text()); }  //Member function added by RJCB void HelloApplication::quit() {   std::exit(0); }  WApplication *createApplication(const WEnvironment& env) {   /*    * You could read information from the environment to decide whether    * the user has permission to start a new application    */   return new HelloApplication(env); }  int main(int argc, char **argv) {   /*    * Your main member function may set up some shared resources, but should then    * start the server application (FastCGI or httpd) that starts listening    * for requests, and handles all of the application life cycles.    *    * The last argument to WRun specifies the function that will instantiate    * new application objects. That function is executed when a new user surfs    * to the Wt application, and after the library has negotiated browser    * support. The function should return a newly instantiated application    * object.    */   return WRun(argc, argv, &createApplication); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemcheckExample5/valgrind\_memcheck.sh
-------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh valgrind --leak-check=full -v --show-reachable=yes --log-file=valgrind_memcheck.txt ../CppValgrindExample5-build-desktop/./CppValgrindExample5 --docroot=. --http-address=0.0.0.0 --http-port=8080 `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
