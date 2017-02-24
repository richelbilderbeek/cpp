



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [Thinking Qt 1: general](CppThinkingQt1.md)
==============================================================================

 

This [article](CppArticle.md) shows one way to think about program
architecture when using the [Qt](CppQt.md) [library](CppLibrary.md).
Because I use this program architecture also when using the
[Wt](CppWt.md) [library](CppLibrary.md), this
[article](CppArticle.md) is very similar to [Thinking Wt 1:
general](CppThinkingWt1.md).

 

 

 

 

 

Downloads
---------

 

-   [View a screenshot of the application developed in this
    article (png)](CppThinkingQt1.png)
-   [Download the Qt Creator source code of
    'CppThinkingQt1' (zip)](CppThinkingQt1.zip)

 

 

 

 

 

Overview
--------

 

In the first two paragraph I will explain the rationale behind the
architecture proposed. The following paragraphs describes the steps in
implementing this architecture in a top-down way, followed by a
conclusion.

 

 

 

 

 

Why these guidelines?
---------------------

 

[Qt](CppQt.md) is 'a cross-platform application and UI framework'. I
see many resemblances in its architecture with the [Wt](CppWt.md)
[library](CppLibrary.md), suitable for, among others, web applications.
Due to their different running environments, [Qt](CppQt.md) (desktop)
and [Wt](CppWt.md) (web) are mutually exclusive. Because I enjoy
porting applications to as much platforms as possible, I have developed
some applications that use both (but not simultaneously) a
[Qt](CppQt.md) and a [Wt](CppWt.md) front-end. To be able to do this
easily, I follow the guidelines presented in this
[article](CppArticle.md). Additionally, I like to reuse my own widgets
and dialogs in multiple applications, which is only possible with a
proper architecture.

 

Note that I follow the same guidelines for [Wt](CppWt.md) front-ends.

 

 

 

 

 

Architecture
------------

 

The architecture, from biggest to smallest, is: [main](CppMain.md),
[Qt::QApplication](CppQApplication.md), dialog, widget:

 

-   Every C++ program has a single [main](CppMain.md)
    [function](CppFunction.md). The purpose of this [main](CppMain.md)
    [function](CppFunction.md) is to create a
    [Qt::QApplication](CppQApplication.md) and the first dialog.
    Optionally, [main](CppMain.md) can parse the command-line arguments
-   The purpose of the [Qt::QApplication](CppQApplication.md) is to
    manage [signals](CppQtSignal.md). In this [article](CppArticle.md)
    I will not create a [derived class](CppDerivedClass.md) of
    [Qt::QApplication](CppQApplication.md), but let [main](CppMain.md)
    create the first dialog
-   A dialog is a collection of at least one widget. The purpose of a
    dialog is to respond to its widgets or creating other dialogs. A
    menu is an example of a dialog that creates other dialogs. A
    TicTacToe dialog would display a TicTacToe widget, but additionally
    shows the score, responding to a player winning and allowing the
    user to close it
-   A widget is a single visual element. The purpose of a widget is to
    repond to interaction and emitting signals when needed. For example,
    a TicTacToe widget responds to the clicking of the user and emits a
    signal when the game is finished. The signal might (or might not) be
    used by the dialog it is in

 

 

 

 

 

Implementing [main](CppMain.md)
--------------------------------

 

In this example, [main](CppMain.md) creates a single
[Qt::WApplication](CppQApplication.md), and creates the first (and
only) dialog.

 

The most basic [main](CppMain.md) [function](CppFunction.md) would
only call WRun with a createApplication [function](CppFunction.md) that
only [returns](CppReturn.md) a [newly](CppNew.md) created
[Qt::WApplication](CppWApplication.md):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication> #include "qtdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtDialog w;   w.show();   return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This code can be created by [Qt Creator](CppQtCreator.md)[, by starting
a]()[GUI](CppGui.md) application and instead of using a
[Qt::QMainWindow](CppQMainWindow.md) called 'MainWindow', use a
[Qt::QDialog](CppQDialog.md) called 'QtDialog'.

 

 

 

 

 

 

Implementing the [Qt::QApplication](CppQApplication.md)
--------------------------------------------------------

 

[signals](CppQtSignal.md). In this [article](CppArticle.md) I will not
create a [derived class](CppDerivedClass.md) of
[Qt::QApplication](CppQApplication.md), but let [main](CppMain.md)
create the first dialog, as shown above.

 

 

 

 

 

Implementing the dialog
-----------------------

 

Because a dialog is, well, a dialog, QtDialog is a [derived
class](CppDerivedClass.md) of [Qt::QDialog](CppQDialog.md). QtDialog
manages two widgets, but does not respond to their signals.

 

 

 

 

 

QtDialog.h

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H #define QTDIALOG_H  #include <QDialog>  struct QtWidget;  class QtDialog : public QDialog {   Q_OBJECT  public:   explicit QtDialog(QWidget *parent = 0);  private:   QtWidget * const m_widget1;   QtWidget * const m_widget2; };  #endif // QTDIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

QtDialog.cpp

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtdialog.h" #include "qtwidget.h"  QtDialog::QtDialog(QWidget *parent)   : QDialog(parent),     m_widget1(new QtWidget(this)),     m_widget2(new QtWidget(this)) {   m_widget1->setGeometry( 0,0,32,32);   m_widget2->setGeometry(32,0,32,32); } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that this [class](CppClass.md) must be split in a [header (.h)
file](CppHeaderFile.md) and an [implementation (.cpp)
file](CppImplementationFile.md). Putting both QtDialog's
[declaration](CppDeclaration.md) and [definition](CppDefinition.md) in
a single [header (.h) file](CppHeaderFile.md) will result in the [link
error](CppLinkError.md) [undefined reference to 'vtable for
MyDialog'](CppLinkErrorUndefinedReferenceToVtableForMyDialog.md).

 

Because the [pointers](CppPointer.md) m\_widget1 and m\_widget2 are set
to have their parent to 'this' in the QtDialog's constructor, these
should not be [deleted](CppDelete.md) (doing so results in a double
[deletion](CppDelete.md)).

 

 

 

 

 

Implementing the widget
-----------------------

 

A widget is a single visual element. In this example, QtWidget is a
button (and thus a [derived class](CppDerivedClass.md) of
[Qt::QPushButton](CppQPushButton.md)), that displays how often it is
clicked.

 

 

 

 

 

QtWidget.h
----------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTWIDGET_H #define QTWIDGET_H  #include <QPushButton>  class QtWidget : public QPushButton {     Q_OBJECT public:   explicit QtWidget(QWidget *parent = 0);   void mousePressEvent(QMouseEvent *);    private:   int m_count; };  #endif // QTWIDGET_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

QtWidget.h
----------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtwidget.h"  QtWidget::QtWidget(QWidget *parent) :   QPushButton(parent),   m_count(0) {  }  void QtWidget::mousePressEvent(QMouseEvent *) {   ++m_count;   this->setText(QString::number(m_count)); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Running the Qt application
--------------------------

 

Click 'Build -&gt; Run' or CTRL-R to run the application.

 

 

 

 

 

Conclusion
----------

 

In this [article](CppArticle.md) I have shown one of many
[Qt](CppQt.md) program architectures you can use, for a very basic
application. In my humble opinion, this architecture makes sense, but I
am open to discussion on this subject.

 

 

-   [View a screenshot of the application developed in this
    article (png)](CppThinkingQt1.png)
-   [Download the Qt Creator source code of
    'CppThinkingQt1' (zip)](CppThinkingQt1.zip)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Qt homepage](http://qt.nokia.com/products)

 

 

 

 

 





 



