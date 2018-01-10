# ([C++](Cpp.md)) ![Qt](PicQt.png) [QDialog](CppQDialog.md)

[QDialog](CppQDialog.md) is a custom [Qt](CppQt.md)
[dialog](CppQtDialog.md) [class](CppClass.md) for a
[dialog](CppQtDialog.md).

The code below, [Qt example 11: creating a QDialog with QLayout on the fly](CppQtExample11.md) shows how to create and show a
[QDialog](CppQDialog.md) on the fly (that is: without using the
[GUI](CppGui.md) designer). When using the [Qt
Creator](CppQtCreator.md) [GUI](CppGui.md) designer,
[QDialog](CppQDialog.md) can be selected as the base class of the
custom [GUI](CppGui.md).

```c++
#include <memory>
#include <QtGui/QApplication>
#include <QDialog>
#include <QPushButton>
#include <QVBoxLayout>

int main(int argc, char *argv[])
{
  QApplication a(argc, argv);
  std::unique_ptr<QDialog> dialog(new QDialog);
  std::unique_ptr<QVBoxLayout> layout(new QVBoxLayout);
  std::unique_ptr<QPushButton> button1(new QPushButton);
  std::unique_ptr<QPushButton> button2(new QPushButton);

  //Cannot let button1 do anything fancy,
  //without creating a derived class from QDialog
  button1->setText("Nothing");
  button2->setText("Quit");
  button2->connect(
    button2.get(),SIGNAL(clicked()),
    dialog.get(),SLOT(close()));
  layout->addWidget(button1.get());
  layout->addWidget(button2.get());

  dialog->setGeometry(0,0,200,100);
  dialog->setWindowTitle("CppQtExample11");
  dialog->setLayout(layout.get());

  dialog->show();
  return a.exec();
}
```
