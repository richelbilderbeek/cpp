[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ['Hello Wt' using Qt Creator under Raspian](CppHelloWtQtCreatorRpi.htm)
========================================================================================

 

[Hello Wt](CppHelloWt.htm) application using [Qt
Creator](CppQtCreator.htm) under [Raspian](CppRpi.htm).

 

-   [Download the Qt Creator project
    'CppHelloWtQtCreatorRaspbian' (zip)](CppHelloWtQtCreatorRaspbian.zip)

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Web](PicWeb.png) [Web application](CppWebApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Raspbian](PicRaspbian.png) [Raspbian](CppRaspbian.htm)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.6.3

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm)
-   ![Qt](PicQt.png) [Qt](CppQt.htm)
-   ![STL](PicStl.png) [STL](CppStl.htm)
-   ![Wt](PicWt.png) [Wt](CppWt.htm)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppHelloWtQtCreatorRaspbian.pro
------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui LIBS += -L/usr/lib -lwt -lwthttp -lboost_signals QMAKE_CXXFLAGS += -DNDEBUG CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /*  * Copyright (C) 2008 Emweb bvba, Heverlee, Belgium.  *  * See the LICENSE file for terms of use.  */  #include <Wt/WApplication> #include <Wt/WBreak> #include <Wt/WContainerWidget> #include <Wt/WLineEdit> #include <Wt/WPushButton> #include <Wt/WText>  #include <boost/version.hpp>  using namespace Wt;  /*  * A simple hello world application class which demonstrates how to react  * to events, read input, and give feed-back.  */ class HelloApplication : public WApplication { public:   HelloApplication(const WEnvironment& env);  private:   WLineEdit *nameEdit_;   WText *greeting_;    void greet(); };  /*  * The env argument contains information about the new session, and  * the initial request. It must be passed to the WApplication  * constructor so it is typically also an argument for your custom  * application constructor. */ HelloApplication::HelloApplication(const WEnvironment& env)   : WApplication(env) {   setTitle("Hello world");                               // application title    root()->addWidget(new WText("Your name, please ? "));  // show some text   nameEdit_ = new WLineEdit(root());                     // allow text input   nameEdit_->setFocus();                                 // give focus    WPushButton *b = new WPushButton("Greet me.", root()); // create a button   b->setMargin(5, Left);                                 // add 5 pixels margin    root()->addWidget(new WBreak());                       // insert a line break    greeting_ = new WText(root());                         // empty text    /*    * Connect signals with slots    *    * - simple Wt-way    */   b->clicked().connect(this, &HelloApplication::greet);    /*    * - using an arbitrary function object (binding values with boost::bind())    */   nameEdit_->enterPressed().connect     (boost::bind(&HelloApplication::greet, this)); }  void HelloApplication::greet() {   /*    * Update the text, using text input into the nameEdit_ field.    */   greeting_->setText("Hello there, " + nameEdit_->text()); }  WApplication *createApplication(const WEnvironment& env) {   /*    * You could read information from the environment to decide whether    * the user has permission to start a new application    */   return new HelloApplication(env); }  int main(int argc, char **argv) {   /*    * Your main method may set up some shared resources, but should then    * start the server application (FastCGI or httpd) that starts listening    * for requests, and handles all of the application life cycles.    *    * The last argument to WRun specifies the function that will instantiate    * new application objects. That function is executed when a new user surfs    * to the Wt application, and after the library has negotiated browser    * support. The function should return a newly instantiated application    * object.    */   return WRun(argc, argv, &createApplication); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

start.sh
--------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` qmake make rm Makefile rm main.o ./CppHelloWtQtCreatorRaspbian --docroot . --http-address 0.0.0.0 --http-port 8080`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Deploying the Wt application locally](CppWtDeployLocal.htm)
------------------------------------------------------------

 

Call the start.sh script:

  ------------
  ` ./start`
  ------------

 

In the end you will see something like shown below. Your web server is
running now.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [2010-Nov-19 16:41:38.365920] 6360 - [notice] "Wt: initializing built-in httpd" [2010-Nov-19 16:41:38.366043] 6360 - [notice] "Reading Wt config file: /etc/wt/wt_config.xml (location = '/home/richel/qtsdk-2010.04/bin/Projects/Website/CppHelloWtQtCreatorUbuntu-build-desktop/CppHelloWtQtCreatorUbuntu')" [2010-Nov-19 16:41:38.366592] 6360 - [notice] "Started server: http://0.0.0.0:8080"`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Now, start your web browser and go to the following address:

 

  ---------------------------
  ` http://127.0.0.1:8080/`
  ---------------------------

 

You will see the 'Hello Wt' dynamic website. You just [deployed your Wt
application locally](CppWtDeployLocal.htm). This is just fine for
debugging. If the application is ready to be put on the web, [deploy the
Wt application globally](CppWtDeployGlobal.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
