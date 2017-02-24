[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QtSignalExample1](CppQtSignalExample1.htm)
============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQtSignalExample1/CppQtSignalExample1.pro
--------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += \     main.cpp \     emitter.cpp \     receiver.cpp  HEADERS += \     emitter.h \     receiver.h`
  -------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample1/emitter.h
-------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef EMITTER_H #define EMITTER_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QObject> #pragma GCC diagnostic pop  class Emitter : public QObject {   Q_OBJECT public:   explicit Emitter(QObject *parent = 0);   void DoEmit() const noexcept;  signals:   void signal_emit() const; };  #endif // EMITTER_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample1/emitter.cpp
---------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "emitter.h"  #include <iostream>  Emitter::Emitter(QObject *parent)   : QObject(parent) { }  void Emitter::DoEmit() const noexcept {   std::clog << "Emitter: emitting signal" << std::endl;   emit signal_emit(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample1/main.cpp
------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include "emitter.h" #include "receiver.h" #pragma GCC diagnostic pop  int main() {   const Emitter e;   const Receiver r;   QObject::connect(&e,SIGNAL(signal_emit()),&r,SLOT(OnReceive()));   e.DoEmit(); }  /* Screen output:  Emitter: emitting signal Receiver: received signal  */`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample1/receiver.h
--------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef RECEIVER_H #define RECEIVER_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QObject> #pragma GCC diagnostic pop  class Receiver : public QObject {   Q_OBJECT public:   explicit Receiver(QObject *parent = 0);  public slots:   void OnReceive() const noexcept; };  #endif // RECEIVER_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample1/receiver.cpp
----------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "receiver.h"  #include <iostream>  Receiver::Receiver(QObject *parent)   : QObject(parent) {  }  void Receiver::OnReceive() const noexcept {   std::clog << "Receiver: received signal" << std::endl; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
