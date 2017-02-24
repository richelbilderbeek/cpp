
 

 

 

 

 

([C++](Cpp.md)) [Boost signal example 1: comparing Boost and Qt](CppBoostSignalExample1.md)
=============================================================================================

 

This [Boost signal](CppBoostSignal.md) example shows both the use of
[Boost signals](CppBoostSignal.md) and [Qt signals](CppQtSignal.md).

 

The [article](CppArticle.md) [From Qt signal to Boost
signal](CppFromQtSignalToBoostSignal.md) describes why and how to move
from using [Qt signals](CppQtSignal.md) to using [Boost
signals](CppBoostSignal.md).

 

-   [Download the Qt Creator project
    'CppBoostSignalExample1' (zip)](CppBoostSignalExample1.zip)

 

 

 

 

 

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

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.42
-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.7.0 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.4.5

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppSignal.pro
------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-12-29T13:23:42 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppSignal CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp \     emitter.cpp \     receiver.cpp HEADERS += \     emitter.h \     receiver.h`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

emitter.cpp
-----------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "emitter.h"  QtEmitter::QtEmitter(QObject *parent) :     QObject(parent) { }  void QtEmitter::DoEmit() {   std::clog << "QtEmitter: emitting signal\n";   emit signal_emit(); }  void Emitter::DoEmit() {   m_signal();   std::clog << "Emitter: emitting signal\n"; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

emitter.h
---------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef EMITTER_H #define EMITTER_H  #include <QObject>  class QtEmitter : public QObject {   Q_OBJECT public:   explicit QtEmitter(QObject *parent = 0);   void DoEmit();  signals:   void signal_emit(); };  #include <boost/signals2.hpp>  struct Emitter {   boost::signals2::signal<void ()> m_signal;   void DoEmit(); };  #endif // EMITTER_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/signals2.hpp>  #include "emitter.h" #include "receiver.h"  int main() {   {     //The Qt way     QtEmitter e;     QtReceiver r;     QObject::connect(&e,SIGNAL(signal_emit()),&r,SLOT(OnReceive()));     e.DoEmit();   }   {     //The Boost way     Emitter e;     Receiver r;     e.m_signal.connect(       boost::bind(         &Receiver::OnReceive,         r));     e.DoEmit();   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

receiver.cpp
------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "receiver.h"  QtReceiver::QtReceiver(QObject *parent) :     QObject(parent) {  }  void QtReceiver::OnReceive() {   std::clog << "QtReceiver: received signal\n"; }  void Receiver::OnReceive() {   std::clog << "Receiver: received signal\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

receiver.h
----------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef RECEIVER_H #define RECEIVER_H  #include <QObject>  class QtReceiver : public QObject {   Q_OBJECT public:   explicit QtReceiver(QObject *parent = 0);  signals:  public slots:   void OnReceive(); };  #include <boost/signals2.hpp>  struct Receiver {   void OnReceive(); }; #endif // RECEIVER_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

