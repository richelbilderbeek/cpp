[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QDialog](CppQDialog.htm)
===========================================================

 

[QDialog](CppQDialog.htm) is a custom [Qt](CppQt.htm)
[dialog](CppQtDialog.htm) [class](CppClass.htm) for a
[dialog](CppQtDialog.htm).

 

The code below, [Qt example 11: creating a QDialog with QLayout on the
fly](CppQtExample11.htm) shows how to create and show a
[QDialog](CppQDialog.htm) on the fly (that is: without using the
[GUI](CppGui.htm) designer). When using the [Qt
Creator](CppQtCreator.htm) [GUI](CppGui.htm) designer,
[QDialog](CppQDialog.htm) can be selected as the base class of the
custom [GUI](CppGui.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp> #include <QtGui/QApplication> #include <QDialog> #include <QPushButton> #include <QVBoxLayout>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   boost::scoped_ptr<QDialog> dialog(new QDialog);   boost::scoped_ptr<QVBoxLayout> layout(new QVBoxLayout);   boost::scoped_ptr<QPushButton> button1(new QPushButton);   boost::scoped_ptr<QPushButton> button2(new QPushButton);    //Cannot let button1 do anything fancy,   //without creating a derived class from QDialog   button1->setText("Nothing");   button2->setText("Quit");   button2->connect(     button2.get(),SIGNAL(clicked()),     dialog.get(),SLOT(close()));   layout->addWidget(button1.get());   layout->addWidget(button2.get());    dialog->setGeometry(0,0,200,100);   dialog->setWindowTitle("CppQtExample11");   dialog->setLayout(layout.get());    dialog->show();   return a.exec(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
