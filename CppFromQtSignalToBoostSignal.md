[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png)![to](PicTo.png)![Boost](PicBoost.png) [From Qt signal to Boost signal](CppFromQtSignalToBoostSignal.htm)
==========================================================================================================================================

 

This [article](CppArticle.htm) describes why and how to move from using
[Qt signals](CppQtSignal.htm) to using [Boost
signals](CppBoostSignal.htm).

 

 

 

 

 

Introduction
------------

 

The first paragraph contains arguments why to move from [Qt
signals](CppQtSignal.htm) to [Boost signals](CppBoostSignal.htm) and
when you might refrain from it. The second paragraph and beyond follow
the transition in code for two very simple [classes](CppClass.htm).

 

 

 

 

 

Why move from [Qt signals](CppQtSignal.htm) to [Boost signals](CppBoostSignal.htm)?
-----------------------------------------------------------------------------------

 

My personal reasons for moving from [Qt signals](CppQtSignal.htm) to
[Boost signals](CppBoostSignal.htm), are:

-   When a [library](CppLibrary.htm) supports [Boost](CppBoost.htm), but
    conflicts with [Qt](CppQt.htm)
-   [Boost signals](CppBoostSignal.htm) do not require the seperation of
    a [class](CppClass.htm) in a [header (.h)file](CppHeaderFile.htm)
    and [implementation (.cpp) file](CppImplementationFile.htm) (because
    [Boost signals](CppBoostSignal.htm) do not require the use of
    [moc](CppMoc.htm))
-   Because the [STL](CppStl.htm), [TR1](CppTr1.htm) and
    [Boost](CppBoost.htm) [libraries](CppLibrary.htm) are 'the number
    one [libraries](CppLibrary.htm)' \[1\]\[2\]
-   I prefer using standard [C++](Cpp.htm) [keywords](CppKeyword.htm)
    only

 

Arguments against moving from [Qt signals](CppQtSignal.htm) to [Boost
signals](CppBoostSignal.htm) are:

-   The [Qt signal](CppQtSignal.htm) syntax is easier to read and write
-   When using only [Qt](CppQt.htm), adding the [Boost
    signals](CppBoostSignal.htm) [libraries](CppLibrary.htm) increase
    [compile](CppCompile.htm) time

 

 

 

 

 

The program's goal
------------------

 

The program implements two classes: an emitter and a receiver. After
connecting the signals and slots, the emitter emits a signal, received
by the receiver.

 

[main](CppMain.htm) should be:

 

  -----------------------------------------------------------------------------------------------------------------------------------
  ` int main() {   //Create emitter   //Create receiver   //Connect emitter's signal to receiver   //Let emitter emit its signal }`
  -----------------------------------------------------------------------------------------------------------------------------------

 

Screen output should be like:

 

  -------------------------------------------------------
  ` Emitter: emitting signal Receiver: received signal`
  -------------------------------------------------------

 

 

 

 

 

CppFromQtSignalToBoostSignal1: the ideal starting point
-------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppFromQtSignalToBoostSignal1' (zip)](CppFromQtSignalToBoostSignal1.zip)

 

The code below would be the ideal starting point. But because
[moc](CppMoc.htm) requires the seperation of a [class](CppClass.htm) in
a [header (.h)file](CppHeaderFile.htm) and [implementation (.cpp)
file](CppImplementationFile.htm), this code results in the [link
error](CppLinkError.htm) [undefined reference to 'vtable for
\[...\]'](CppLinkErrorUndefinedReferenceToVtableForMyDialog.htm). Due to
this, next step is to seperate the [class](CppClass.htm) in a working
example.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <QObject>  class QtEmitter : public QObject {   Q_OBJECT public:   void DoEmit()   {     std::clog << "QtEmitter: emitting signal\n";     emit signal_emit();   } signals:   void signal_emit(); };  class QtReceiver : public QObject {   Q_OBJECT public slots:   void OnReceive()   {     std::clog << "QtReceiver: received signal\n";   } };  int main() {   //Create emitter   QtEmitter e;   //Create receiver   QtReceiver r;   //Connect emitter's signal to receiver   QObject::connect(&e,SIGNAL(signal_emit()),&r,SLOT(OnReceive()));   //Let emitter emit its signal   e.DoEmit(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

CppFromQtSignalToBoostSignal2: the working starting point
---------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppFromQtSignalToBoostSignal2' (zip)](CppFromQtSignalToBoostSignal2.zip)

 

The code below would be the working starting point. The next step is to
replace the [Qt signals](CppQtSignal.htm) by [Boost
signals](CppBoostSignal.htm).

 

### main.cpp

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtemitter.h" #include "qtreceiver.h"  int main() {   //Create emitter   QtEmitter e;   //Create receiver   QtReceiver r;   //Connect emitter's signal to receiver   QObject::connect(&e,SIGNAL(signal_emit()),&r,SLOT(OnReceive()));   //Let emitter emit its signal   e.DoEmit(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

### qtemitter.cpp

 

  --------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "qtemitter.h"  void QtEmitter::DoEmit() {   std::clog << "QtEmitter: emitting signal\n";   emit signal_emit(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------

 

### qtemitter.h

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTEMITTER_H #define QTEMITTER_H  #include <QObject>  class QtEmitter : public QObject {   Q_OBJECT public:   void DoEmit(); signals:   void signal_emit(); };  #endif // QTEMITTER_H `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

### qtreceiver.cpp

 

  ----------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "qtreceiver.h"  void QtReceiver::OnReceive() {   std::clog << "QtReceiver: received signal\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------------

 

### qtreceiver.h

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTRECEIVER_H #define QTRECEIVER_H  #include <QObject>  class QtReceiver : public QObject {   Q_OBJECT public slots:   void OnReceive(); };  #endif // QTRECEIVER_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

CppFromQtSignalToBoostSignal3: the conversion to [Boost signals](CppBoostSignal.htm)
------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppFromQtSignalToBoostSignal3' (zip)](CppFromQtSignalToBoostSignal3.zip)

 

In the code below, the [Qt signal](CppQtSignal.htm) is replaced by using
a [Boost signal](CppBoostSignal.htm). The next step is: can we put all
this code in a single file?

 

### emitter.cpp

 

  ------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "emitter.h"  void Emitter::DoEmit() {   std::clog << "Emitter: emitting signal\n";   m_signal(); }`
  ------------------------------------------------------------------------------------------------------------------------------------

 

### emitter.h

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef EMITTER_H #define EMITTER_H  #include <boost/signals2.hpp>  struct Emitter {   void DoEmit();   boost::signals2::signal<void ()> m_signal; };  #endif // EMITTER_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

### main.cpp

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "emitter.h" #include "receiver.h"  int main() {   //Create emitter   Emitter e;   //Create receiver   Receiver r;   //Connect emitter's signal to receiver   e.m_signal.connect(     boost::bind(       &Receiver::OnReceive,       r));   //Let emitter emit its signal   e.DoEmit(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

### receiver.cpp

 

  ----------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "receiver.h"  void Receiver::OnReceive() {   std::clog << "Receiver: received signal\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------

 

### receiver.h

 

  ----------------------------------------------------------------------------------------------------------
  ` #ifndef RECEIVER_H #define RECEIVER_H  struct Receiver {   void OnReceive(); };  #endif // RECEIVER_H`
  ----------------------------------------------------------------------------------------------------------

 

 

 

 

 

CppFromQtSignalToBoostSignal4: [Boost signals](CppBoostSignal.htm) in a single file
-----------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppFromQtSignalToBoostSignal4' (zip)](CppFromQtSignalToBoostSignal4.zip)

 

In the code below, all the code is placed a single file, and it works
fine!

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/signals2.hpp>  struct Emitter {   void DoEmit()   {     std::clog << "Emitter: emitting signal\n";     m_signal();   }   boost::signals2::signal<void ()> m_signal; };  struct Receiver {   void OnReceive()   {     std::clog << "Receiver: received signal\n";   } };  int main() {   //Create emitter   Emitter e;   //Create receiver   Receiver r;   //Connect emitter's signal to receiver   e.m_signal.connect(     boost::bind(       &Receiver::OnReceive,       r));  //Let emitter emit its signal   e.DoEmit(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Conclusion
----------

 

There are reasons to move from using [Qt signals](CppQtSignal.htm) to
using [Boost signals](CppBoostSignal.htm). This article shows that this
is easy.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 53: Familiarize yourself with the standard
    library, including TR1
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 54: Familiarize yourself with Boost

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
