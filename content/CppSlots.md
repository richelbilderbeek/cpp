
 

 

 

 

 

([C++](Cpp.md)) [slots](CppSlots.md)
======================================

 

[slots](CppSlots.md) is a [Qt](CppQt.md) [keyword](CppKeyword.md) to
[declare](CppDeclaration.md) slots, so [Qt signals](CppQtSignal.md)
can be connected with them.

 

In the example below (from [How to StretchDraw an
image?](CppQtStretchDraw.md)), the slot 'onTimer' is
[declared](CppDeclaration.md). Probably there's a timer that needs to
call the onTimer slot (note: there is in the full example).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOGBLOCKYRECT_H #define DIALOGBLOCKYRECT_H  #include <QDialog>  namespace Ui {   class MyClass; }  class MyClass : public QDialog {   Q_OBJECT    //Lots of MyClass code     private slots:     void onTimer(); };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

