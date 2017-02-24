



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [How to add an Event?](CppQtAddEvent.htm)
===========================================================================

 

[How to add an Event?](CppQtAddEvent.htm) is a [QT FAQ](CppQtFaq.htm),
especially for people with a [C++ Builder](CppBuilder.htm) background
(like me): in [C++ Builder](CppBuilder.htm) the following steps were
done for you automatically.

 

To add an Event (in [Qt](CppQt.htm) these are called
'[slots](CppSlot.htm)'), three steps must be takes:

1.  [Declare](CppDeclaration.htm) the Event/[slot](CppSlot.htm)
2.  [Define](CppDefinition.htm) the Event/[slot](CppSlot.htm)
3.  Connect a [signal](CppSignal.htm) with the Event/[slot](CppSlot.htm)

 

At the bottom of this page, a complete [Qt Creator](CppQtCreator.htm)
project can be downloaded.

 

 

 

 

Step 1: [Declare](CppDeclaration.htm) the Event/[slot](CppSlot.htm)
-------------------------------------------------------------------

 

The Event/[slot](CppSlot.htm) must be [declared](CppDeclaration.htm) in
the dialog's [header file](CppHeaderFile.htm). In the example below the
[slot](CppSlot.htm) 'MyEvent' is [declared](CppDeclaration.htm). All
other code is default-created by [Qt Creator](CppQtCreator.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui {   class Dialog; }  class Dialog : public QDialog {   Q_OBJECT  public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();  protected:   void changeEvent(QEvent *e);  private:   Ui::Dialog *ui;  private slots:   void MyEvent(); };  #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Step 2: [Define](CppDefinition.htm) the Event/[slot](CppSlot.htm)
-----------------------------------------------------------------

 

The Event/[slot](CppSlot.htm) must be [defined](CppDefinition.htm) in
the dialog's [implementation file](CppImplementationFile.htm). In the
example below the [slot](CppSlot.htm) 'MyEvent' is
[defined](CppDefinition.htm) to changed the dialog's title. All other
code is default-created by [Qt Creator](CppQtCreator.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }  Dialog::~Dialog() {     delete ui; }  void Dialog::changeEvent(QEvent *e) {     QDialog::changeEvent(e);     switch (e->type()) {     case QEvent::LanguageChange:         ui->retranslateUi(this);         break;     default:         break;     } }  void Dialog::MyEvent() {   this->setWindowTitle("MyEvent"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Step 3: Connect a [signal](CppSignal.htm) with the Event/[slot](CppSlot.htm)
----------------------------------------------------------------------------

 

Now that the Event/[slot](CppSlot.htm) is
[declared](CppDeclaration.htm), it must be specified what triggers its
call. In Qt, Event/[slots](CppSlot.htm) are triggered by a
[signal](CppSignal.htm). In the example below the [slot](CppSlot.htm)
'MyEvent' is set to be triggered (that is: connected) to the signal
'accepted()'. Note that this is a nearly-useless trigger: better would
be something like a [QPushButton](CppQPushButton.htm)'s clicked()
[signal](CppSignal.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this);     QObject::connect(this,SIGNAL(accepted()),this,SLOT(MyEvent())); }  Dialog::~Dialog() {     delete ui; }  void Dialog::changeEvent(QEvent *e) {     QDialog::changeEvent(e);     switch (e->type()) {     case QEvent::LanguageChange:         ui->retranslateUi(this);         break;     default:         break;     } }  void Dialog::MyEvent() {   this->setWindowTitle("MyEvent"); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

About this example
------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com)

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 [GUI](CppGui.htm) Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

-   [Download the Qt Creator project
    'CppQtAddEvent' (zip)](CppQtAddEvent.zip)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
