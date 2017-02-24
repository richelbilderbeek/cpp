



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [Q\_OBJECT](CppQ_OBJECT.htm)
==============================================================

 

[Q\_OBJECT](CppQ_OBJECT.htm) is a [Qt](CppQt.htm) [macro](CppMacro.htm)
that every [class](CppClass.htm) [derived](CppDerivedClass.htm) from
[QObject](CppQObject.htm) that uses [signals](CppSignal.htm) and
[slots](CppSlot.htm) must have in its [declaration](CppDeclaration.htm).

 

 

 

 

 

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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
