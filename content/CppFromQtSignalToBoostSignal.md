



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png)![to](PicTo.png)![Boost](PicBoost.png) [From Qt signal to Boost signal](CppFromQtSignalToBoostSignal.md)
==========================================================================================================================================

 

This [article](CppArticle.md) describes why and how to move from using
[Qt signals](CppQtSignal.md) to using [Boost
signals](CppBoostSignal.md).

 

 

 

 

 

Introduction
------------

 

The first paragraph contains arguments why to move from [Qt
signals](CppQtSignal.md) to [Boost signals](CppBoostSignal.md) and
when you might refrain from it. The second paragraph and beyond follow
the transition in code for two very simple [classes](CppClass.md).

 

 

 

 

 

Why move from [Qt signals](CppQtSignal.md) to [Boost signals](CppBoostSignal.md)?
-----------------------------------------------------------------------------------

 

My personal reasons for moving from [Qt signals](CppQtSignal.md) to
[Boost signals](CppBoostSignal.md), are:

-   When a [library](CppLibrary.md) supports [Boost](CppBoost.md), but
    conflicts with [Qt](CppQt.md)
-   [Boost signals](CppBoostSignal.md) do not require the seperation of
    a [class](CppClass.md) in a [header (.h)file](CppHeaderFile.md)
    and [implementation (.cpp) file](CppImplementationFile.md) (because
    [Boost signals](CppBoostSignal.md) do not require the use of
    [moc](CppMoc.md))
-   Because the [STL](CppStl.md), [TR1](CppTr1.md) and
    [Boost](CppBoost.md) [libraries](CppLibrary.md) are 'the number
    one [libraries](CppLibrary.md)' \[1\]\[2\]
-   I prefer using standard [C++](Cpp.md) [keywords](CppKeyword.md)
    only

 

Arguments against moving from [Qt signals](CppQtSignal.md) to [Boost
signals](CppBoostSignal.md) are:

-   The [Qt signal](CppQtSignal.md) syntax is easier to read and write
-   When using only [Qt](CppQt.md), adding the [Boost
    signals](CppBoostSignal.md) [libraries](CppLibrary.md) increase
    [compile](CppCompile.md) time

 

 

 

 

 

The program's goal
------------------

 

The program implements two classes: an emitter and a receiver. After
connecting the signals and slots, the emitter emits a signal, received
by the receiver.

 

[main](CppMain.md) should be:

 

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
[moc](CppMoc.md) requires the seperation of a [class](CppClass.md) in
a [header (.h)file](CppHeaderFile.md) and [implementation (.cpp)
file](CppImplementationFile.md), this code results in the [link
error](CppLinkError.md) [undefined reference to 'vtable for
\[...\]'](CppLinkErrorUndefinedReferenceToVtableForMyDialog.md). Due to
this, next step is to seperate the [class](CppClass.md) in a working
example.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <QObject>  class QtEmitter : public QObject {   Q_OBJECT public:   void DoEmit()   {     std::clog << "QtEmitter: emitting signal\n";     emit signal_emit();   } signals:   void signal_emit(); };  class QtReceiver : public QObject {   Q_OBJECT public slots:   void OnReceive()   {     std::clog << "QtReceiver: received signal\n";   } };  int main() {   //Create emitter   QtEmitter e;   //Create receiver   QtReceiver r;   //Connect emitter's signal to receiver   QObject::connect(&e,SIGNAL(signal_emit()),&r,SLOT(OnReceive()));   //Let emitter emit its signal   e.DoEmit(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

CppFromQtSignalToBoostSignal2: the working starting point
---------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppFromQtSignalToBoostSignal2' (zip)](CppFromQtSignalToBoostSignal2.zip)

 

The code below would be the working starting point. The next step is to
replace the [Qt signals](CppQtSignal.md) by [Boost
signals](CppBoostSignal.md).

 

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

 

 

 

 

 

CppFromQtSignalToBoostSignal3: the conversion to [Boost signals](CppBoostSignal.md)
------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppFromQtSignalToBoostSignal3' (zip)](CppFromQtSignalToBoostSignal3.zip)

 

In the code below, the [Qt signal](CppQtSignal.md) is replaced by using
a [Boost signal](CppBoostSignal.md). The next step is: can we put all
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

 

 

 

 

 

CppFromQtSignalToBoostSignal4: [Boost signals](CppBoostSignal.md) in a single file
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

 

There are reasons to move from using [Qt signals](CppQtSignal.md) to
using [Boost signals](CppBoostSignal.md). This article shows that this
is easy.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 53: Familiarize yourself with the standard
    library, including TR1
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 54: Familiarize yourself with Boost

 

 

 

 

 





 



