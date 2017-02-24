



 

 

 

 

 

([C++](Cpp.md)) [QtSignalExample2](CppQtSignalExample2.md)
============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQtSignalExample2/CppQtSignalExample2.pro
--------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += \     main.cpp \     emitter.cpp \     receiver.cpp  HEADERS += \     emitter.h \     receiver.h`
  -------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample2/emitter.h
-------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef EMITTER_H #define EMITTER_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QObject> #pragma GCC diagnostic pop  class Emitter : public QObject {   Q_OBJECT public:   explicit Emitter(QObject *parent = 0);   void DoEmit() const noexcept;  signals:   void signal_emit() const; };  #endif // EMITTER_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample2/emitter.cpp
---------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "emitter.h"  #include <iostream>  Emitter::Emitter(QObject *parent)   : QObject(parent) { }  void Emitter::DoEmit() const noexcept {   std::clog << "Emitter: emitting signal" << std::endl;   emit signal_emit(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample2/main.cpp
------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include "emitter.h" #include "receiver.h" #pragma GCC diagnostic pop  int main() {   const Emitter e;   const Receiver r;   QObject::connect(&e,&Emitter::signal_emit,&r,&Receiver::OnReceive);   e.DoEmit(); }  /* Screen output:  Emitter: emitting signal Receiver: received signal  */`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample2/receiver.h
--------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef RECEIVER_H #define RECEIVER_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QObject> #pragma GCC diagnostic pop  class Receiver : public QObject {   Q_OBJECT public:   explicit Receiver(QObject *parent = 0);  public slots:   void OnReceive() const noexcept; };  #endif // RECEIVER_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample2/receiver.cpp
----------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "receiver.h"  #include <iostream>  Receiver::Receiver(QObject *parent)   : QObject(parent) {  }  void Receiver::OnReceive() const noexcept {   std::clog << "Receiver: received signal" << std::endl; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
