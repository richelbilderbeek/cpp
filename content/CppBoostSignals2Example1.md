



 

 

 

 

 

([C++](Cpp.htm)) [BoostSignals2Example1](CppBoostSignals2Example1.htm)
======================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Signals2 example 1: comparing Boost and
Qt](CppBoostSignals2Example1.htm) is a
[Boost.Signals2](CppBoostSignals2.htm) example that shows both the use
of [Boost.Signals2 signals](CppBoostSignals2.htm) and [Qt
signals](CppQtSignal.htm).

 

The [article](CppArticle.htm) [From Qt signal to Boost
signal](CppFromQtSignalToBoostSignal.htm) describes why and how to move
from using [Qt signals](CppQtSignal.htm) to using [Boost.Signal2
signals](CppBoostSignals2.htm).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostSignals2Example1/CppBoostSignals2Example1.pro
------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += \     main.cpp \     emitter.cpp \     receiver.cpp  HEADERS += \     emitter.h \     receiver.h`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSignals2Example1/emitter.h
------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef EMITTER_H #define EMITTER_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QObject> #pragma GCC diagnostic pop  class QtEmitter : public QObject {   Q_OBJECT public:   explicit QtEmitter(QObject *parent = 0);   void DoEmit();  signals:   void signal_emit(); };  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <boost/signals2.hpp> #pragma GCC diagnostic pop  struct Emitter {   boost::signals2::signal<void ()> m_signal;   void DoEmit(); };  #endif // EMITTER_H`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSignals2Example1/emitter.cpp
--------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "emitter.h"  QtEmitter::QtEmitter(QObject *parent) :     QObject(parent) { }  void QtEmitter::DoEmit() {   std::clog << "QtEmitter: emitting signal\n";   emit signal_emit(); }  void Emitter::DoEmit() {   m_signal();   std::clog << "Emitter: emitting signal\n"; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSignals2Example1/main.cpp
-----------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/signals2.hpp>  #include "emitter.h" #include "receiver.h" #pragma GCC diagnostic pop  int main() {   {     //The Qt way     QtEmitter e;     QtReceiver r;     QObject::connect(&e,SIGNAL(signal_emit()),&r,SLOT(OnReceive()));     e.DoEmit();   }   {     //The Boost way     Emitter e;     Receiver r;     e.m_signal.connect(       boost::bind(         &Receiver::OnReceive,         r));     e.DoEmit();   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSignals2Example1/receiver.h
-------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef RECEIVER_H #define RECEIVER_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <QObject> #pragma GCC diagnostic pop  class QtReceiver : public QObject {   Q_OBJECT public:   explicit QtReceiver(QObject *parent = 0);  signals:  public slots:   void OnReceive(); };  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/signals2.hpp> #pragma GCC diagnostic pop  struct Receiver {   void OnReceive(); };  #endif // RECEIVER_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSignals2Example1/receiver.cpp
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "receiver.h"  QtReceiver::QtReceiver(QObject *parent) :     QObject(parent) {  }  void QtReceiver::OnReceive() {   std::clog << "QtReceiver: received signal\n"; }  void Receiver::OnReceive() {   std::clog << "Receiver: received signal\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
