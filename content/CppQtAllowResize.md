
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [How to allow a Dialog to be resized by the user?](CppQtAllowResize.md)
==========================================================================================================

 

[How to allow a Dialog to be resized by the user?](CppQtAllowResize.md)
is a [QT FAQ](CppQtFaq.md) that one is confronted with when one uses
[QDialog](CppQDialog.md): it cannot be resized and has no minimize or
maximize button in its window title bar. How the steps below to solve
this.

 

Below is the default [QDialog](CppQDialog.md)
[constructor](CppConstructor.md) code:

 

  -------------------------------------------------------------------------------------------------------------
  ` Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }`
  -------------------------------------------------------------------------------------------------------------

 

Change this code to the code below:

 

  ------------------------------------------------------------------------------------------------------------------------
  ` Dialog::Dialog(QWidget *parent) :     QDialog(parent,Qt::Window),     ui(new Ui::Dialog) {     ui->setupUi(this); }`
  ------------------------------------------------------------------------------------------------------------------------

 

Done!

 

 

 

 

