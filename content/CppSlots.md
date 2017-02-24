[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [slots](CppSlots.htm)
======================================

 

[slots](CppSlots.htm) is a [Qt](CppQt.htm) [keyword](CppKeyword.htm) to
[declare](CppDeclaration.htm) slots, so [Qt signals](CppQtSignal.htm)
can be connected with them.

 

In the example below (from [How to StretchDraw an
image?](CppQtStretchDraw.htm)), the slot 'onTimer' is
[declared](CppDeclaration.htm). Probably there's a timer that needs to
call the onTimer slot (note: there is in the full example).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOGBLOCKYRECT_H #define DIALOGBLOCKYRECT_H  #include <QDialog>  namespace Ui {   class MyClass; }  class MyClass : public QDialog {   Q_OBJECT    //Lots of MyClass code     private slots:     void onTimer(); };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
