
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [Q\_OBJECT](CppQ_OBJECT.md)
==============================================================

 

[Q\_OBJECT](CppQ_OBJECT.md) is a [Qt](CppQt.md) [macro](CppMacro.md)
that every [class](CppClass.md) [derived](CppDerivedClass.md) from
[QObject](CppQObject.md) that uses [signals](CppSignal.md) and
[slots](CppSlot.md) must have in its [declaration](CppDeclaration.md).

 

 

 

 

 

emitter.h
---------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef EMITTER_H #define EMITTER_H  #include <QObject>  struct Emitter : public QObject {   Q_OBJECT   public:     void emit_ok();   signals:     void ok(); };  #endif // EMITTER_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

emitter.cpp
-----------

 

  --------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "emitter.h"  void Emitter::emit_ok() {   std::clog << "Emitting\n";   emit ok(); }`
  --------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

