[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [Thinking Qt 1: general](CppThinkingQt1.htm)
==============================================================================

 

This [article](CppArticle.htm) shows one way to think about program
architecture when using the [Qt](CppQt.htm) [library](CppLibrary.htm).
Because I use this program architecture also when using the
[Wt](CppWt.htm) [library](CppLibrary.htm), this
[article](CppArticle.htm) is very similar to [Thinking Wt 1:
general](CppThinkingWt1.htm).

 

 

 

 

 

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

 

[Qt](CppQt.htm) is 'a cross-platform application and UI framework'. I
see many resemblances in its architecture with the [Wt](CppWt.htm)
[library](CppLibrary.htm), suitable for, among others, web applications.
Due to their different running environments, [Qt](CppQt.htm) (desktop)
and [Wt](CppWt.htm) (web) are mutually exclusive. Because I enjoy
porting applications to as much platforms as possible, I have developed
some applications that use both (but not simultaneously) a
[Qt](CppQt.htm) and a [Wt](CppWt.htm) front-end. To be able to do this
easily, I follow the guidelines presented in this
[article](CppArticle.htm). Additionally, I like to reuse my own widgets
and dialogs in multiple applications, which is only possible with a
proper architecture.

 

Note that I follow the same guidelines for [Wt](CppWt.htm) front-ends.

 

 

 

 

 

Architecture
------------

 

The architecture, from biggest to smallest, is: [main](CppMain.htm),
[Qt::QApplication](CppQApplication.htm), dialog, widget:

 

-   Every C++ program has a single [main](CppMain.htm)
    [function](CppFunction.htm). The purpose of this [main](CppMain.htm)
    [function](CppFunction.htm) is to create a
    [Qt::QApplication](CppQApplication.htm) and the first dialog.
    Optionally, [main](CppMain.htm) can parse the command-line arguments
-   The purpose of the [Qt::QApplication](CppQApplication.htm) is to
    manage [signals](CppQtSignal.htm). In this [article](CppArticle.htm)
    I will not create a [derived class](CppDerivedClass.htm) of
    [Qt::QApplication](CppQApplication.htm), but let [main](CppMain.htm)
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

 

 

 

 

 

Implementing [main](CppMain.htm)
--------------------------------

 

In this example, [main](CppMain.htm) creates a single
[Qt::WApplication](CppQApplication.htm), and creates the first (and
only) dialog.

 

The most basic [main](CppMain.htm) [function](CppFunction.htm) would
only call WRun with a createApplication [function](CppFunction.htm) that
only [returns](CppReturn.htm) a [newly](CppNew.htm) created
[Qt::WApplication](CppWApplication.htm):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication> #include "qtdialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QtDialog w;   w.show();   return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This code can be created by [Qt Creator](CppQtCreator.htm)[, by starting
a]()[GUI](CppGui.htm) application and instead of using a
[Qt::QMainWindow](CppQMainWindow.htm) called 'MainWindow', use a
[Qt::QDialog](CppQDialog.htm) called 'QtDialog'.

 

 

 

 

 

 

Implementing the [Qt::QApplication](CppQApplication.htm)
--------------------------------------------------------

 

[signals](CppQtSignal.htm). In this [article](CppArticle.htm) I will not
create a [derived class](CppDerivedClass.htm) of
[Qt::QApplication](CppQApplication.htm), but let [main](CppMain.htm)
create the first dialog, as shown above.

 

 

 

 

 

Implementing the dialog
-----------------------

 

Because a dialog is, well, a dialog, QtDialog is a [derived
class](CppDerivedClass.htm) of [Qt::QDialog](CppQDialog.htm). QtDialog
manages two widgets, but does not respond to their signals.

 

 

 

 

 

QtDialog.h

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H #define QTDIALOG_H  #include <QDialog>  struct QtWidget;  class QtDialog : public QDialog {   Q_OBJECT  public:   explicit QtDialog(QWidget *parent = 0);  private:   QtWidget * const m_widget1;   QtWidget * const m_widget2; };  #endif // QTDIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

QtDialog.cpp

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtdialog.h" #include "qtwidget.h"  QtDialog::QtDialog(QWidget *parent)   : QDialog(parent),     m_widget1(new QtWidget(this)),     m_widget2(new QtWidget(this)) {   m_widget1->setGeometry( 0,0,32,32);   m_widget2->setGeometry(32,0,32,32); } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that this [class](CppClass.htm) must be split in a [header (.h)
file](CppHeaderFile.htm) and an [implementation (.cpp)
file](CppImplementationFile.htm). Putting both QtDialog's
[declaration](CppDeclaration.htm) and [definition](CppDefinition.htm) in
a single [header (.h) file](CppHeaderFile.htm) will result in the [link
error](CppLinkError.htm) [undefined reference to 'vtable for
MyDialog'](CppLinkErrorUndefinedReferenceToVtableForMyDialog.htm).

 

Because the [pointers](CppPointer.htm) m\_widget1 and m\_widget2 are set
to have their parent to 'this' in the QtDialog's constructor, these
should not be [deleted](CppDelete.htm) (doing so results in a double
[deletion](CppDelete.htm)).

 

 

 

 

 

Implementing the widget
-----------------------

 

A widget is a single visual element. In this example, QtWidget is a
button (and thus a [derived class](CppDerivedClass.htm) of
[Qt::QPushButton](CppQPushButton.htm)), that displays how often it is
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

 

In this [article](CppArticle.htm) I have shown one of many
[Qt](CppQt.htm) program architectures you can use, for a very basic
application. In my humble opinion, this architecture makes sense, but I
am open to discussion on this subject.

 

 

-   [View a screenshot of the application developed in this
    article (png)](CppThinkingQt1.png)
-   [Download the Qt Creator source code of
    'CppThinkingQt1' (zip)](CppThinkingQt1.zip)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Qt homepage](http://qt.nokia.com/products)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
