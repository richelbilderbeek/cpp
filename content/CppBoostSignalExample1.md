



 

 

 

 

 

([C++](Cpp.htm)) [Boost signal example 1: comparing Boost and Qt](CppBoostSignalExample1.htm)
=============================================================================================

 

This [Boost signal](CppBoostSignal.htm) example shows both the use of
[Boost signals](CppBoostSignal.htm) and [Qt signals](CppQtSignal.htm).

 

The [article](CppArticle.htm) [From Qt signal to Boost
signal](CppFromQtSignalToBoostSignal.htm) describes why and how to move
from using [Qt signals](CppQtSignal.htm) to using [Boost
signals](CppBoostSignal.htm).

 

-   [Download the Qt Creator project
    'CppBoostSignalExample1' (zip)](CppBoostSignalExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 10.10 (maverick)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.5

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.42
-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.7.0 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.4.5

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppSignal.pro
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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
