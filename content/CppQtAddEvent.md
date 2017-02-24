
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [How to add an Event?](CppQtAddEvent.md)
===========================================================================

 

[How to add an Event?](CppQtAddEvent.md) is a [QT FAQ](CppQtFaq.md),
especially for people with a [C++ Builder](CppBuilder.md) background
(like me): in [C++ Builder](CppBuilder.md) the following steps were
done for you automatically.

 

To add an Event (in [Qt](CppQt.md) these are called
'[slots](CppSlot.md)'), three steps must be takes:

1.  [Declare](CppDeclaration.md) the Event/[slot](CppSlot.md)
2.  [Define](CppDefinition.md) the Event/[slot](CppSlot.md)
3.  Connect a [signal](CppSignal.md) with the Event/[slot](CppSlot.md)

 

At the bottom of this page, a complete [Qt Creator](CppQtCreator.md)
project can be downloaded.

 

 

 

 

Step 1: [Declare](CppDeclaration.md) the Event/[slot](CppSlot.md)
-------------------------------------------------------------------

 

The Event/[slot](CppSlot.md) must be [declared](CppDeclaration.md) in
the dialog's [header file](CppHeaderFile.md). In the example below the
[slot](CppSlot.md) 'MyEvent' is [declared](CppDeclaration.md). All
other code is default-created by [Qt Creator](CppQtCreator.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT  public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();  protected:   void changeEvent(QEvent *e);  private:   Ui::Dialog *ui;  private slots:   void MyEvent(); };  #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Step 2: [Define](CppDefinition.md) the Event/[slot](CppSlot.md)
-----------------------------------------------------------------

 

The Event/[slot](CppSlot.md) must be [defined](CppDefinition.md) in
the dialog's [implementation file](CppImplementationFile.md). In the
example below the [slot](CppSlot.md) 'MyEvent' is
[defined](CppDefinition.md) to changed the dialog's title. All other
code is default-created by [Qt Creator](CppQtCreator.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }  Dialog::~Dialog() {     delete ui; }  void Dialog::changeEvent(QEvent *e) {     QDialog::changeEvent(e);     switch (e->type()) {     case QEvent::LanguageChange:         ui->retranslateUi(this);         break;     default:         break;     } }  void Dialog::MyEvent() {   this->setWindowTitle("MyEvent"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Step 3: Connect a [signal](CppSignal.md) with the Event/[slot](CppSlot.md)
----------------------------------------------------------------------------

 

Now that the Event/[slot](CppSlot.md) is
[declared](CppDeclaration.md), it must be specified what triggers its
call. In Qt, Event/[slots](CppSlot.md) are triggered by a
[signal](CppSignal.md). In the example below the [slot](CppSlot.md)
'MyEvent' is set to be triggered (that is: connected) to the signal
'accepted()'. Note that this is a nearly-useless trigger: better would
be something like a [QPushButton](CppQPushButton.md)'s clicked()
[signal](CppSignal.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this);     QObject::connect(this,SIGNAL(accepted()),this,SLOT(MyEvent())); }  Dialog::~Dialog() {     delete ui; }  void Dialog::changeEvent(QEvent *e) {     QDialog::changeEvent(e);     switch (e->type()) {     case QEvent::LanguageChange:         ui->retranslateUi(this);         break;     default:         break;     } }  void Dialog::MyEvent() {   this->setWindowTitle("MyEvent"); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

About this example
------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com)

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 [GUI](CppGui.md) Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Qt](CppQt.md): version 4.7.0 (32 bit)

 

-   [Download the Qt Creator project
    'CppQtAddEvent' (zip)](CppQtAddEvent.zip)

 

 

 

 

 

 

