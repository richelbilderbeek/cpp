



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [How to allow a Dialog to be resized by the user?](CppQtAllowResize.htm)
==========================================================================================================

 

[How to allow a Dialog to be resized by the user?](CppQtAllowResize.htm)
is a [QT FAQ](CppQtFaq.htm) that one is confronted with when one uses
[QDialog](CppQDialog.htm): it cannot be resized and has no minimize or
maximize button in its window title bar. How the steps below to solve
this.

 

Below is the default [QDialog](CppQDialog.htm)
[constructor](CppConstructor.htm) code:

 

  -------------------------------------------------------------------------------------------------------------
  ` Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }`
  -------------------------------------------------------------------------------------------------------------

 

Change this code to the code below:

 

  ------------------------------------------------------------------------------------------------------------------------
  ` Dialog::Dialog(QWidget *parent) :     QDialog(parent,Qt::Window),     ui(new Ui::Dialog) {     ui->setupUi(this); }`
  ------------------------------------------------------------------------------------------------------------------------

 

Done!

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
