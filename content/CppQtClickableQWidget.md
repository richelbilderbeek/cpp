

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [How to implement a clickable QWidget?](CppQtClickableQWidget.htm)
====================================================================================================

 

[FAQ](CppQtFaq.htm) for if you want to use [QWidget](CppQWidget.htm) to
display clickable images.

 

The trick is to override 'mousePressEvent' and use the
[QWidget](CppQWidget.htm)'s geometry() [member
function](CppMemberFunction.htm):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  ` void Dialog::mousePressEvent(QMouseEvent * event) {   if (ui->widget->geometry().contains(     event->x(), event->y()))   {     //Do something   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------

 

The full code can be viewed and downloaded below.

 

The sprites used in this example are from a [game](Games.htm) of mine,
called [Maziak](GameMaziak.htm).

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 [GUI](CppGui.htm) Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

-   [View a screenshot of
    'CppQtClickableQWidget' (png)](CppQtClickableQWidget.png)
-   [Download the C++ Qt Creator project
    'CppQtClickableQWidget' (zip)](CppQtClickableQWidget.zip)

 

 

 

 

 

### CppQtClickableQWidget.pro

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-31T12:04:49 # #------------------------------------------------- QT       += core gui TARGET = CppQtClickableQWidget TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui RESOURCES += \     resources.qrc`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialog.h

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  struct QMouseEvent;  namespace Ui {     class Dialog; }  class Dialog : public QDialog {     Q_OBJECT  public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();  protected:     void changeEvent(QEvent *e);  private:     Ui::Dialog *ui;     void mousePressEvent(QMouseEvent* event);     void paintEvent(QPaintEvent * event);     bool m_show_1st;  };  #endif // DIALOG_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### dialog.cpp

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QMouseEvent> #include <QPainter>  #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog),     m_show_1st(true) {   ui->setupUi(this); }  Dialog::~Dialog() {   delete ui; }  void Dialog::changeEvent(QEvent *e) {   QDialog::changeEvent(e);   switch (e->type()) {   case QEvent::LanguageChange:     ui->retranslateUi(this);     break;   default:     break;   } }  void Dialog::paintEvent(QPaintEvent*) {   QPainter painter(this);   QPixmap pixmap(m_show_1st     ? ":/images/PlayerWon1.png"     : ":/images/PlayerScared.png");   painter.drawPixmap(ui->widget->geometry(),pixmap); }  void Dialog::mousePressEvent(QMouseEvent * event) {   if (ui->widget->geometry().contains(     event->x(), event->y()))   {     m_show_1st = !m_show_1st;     repaint();   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### main.cpp

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication> #include "dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();   return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
