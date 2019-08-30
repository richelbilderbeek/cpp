# ([C++](Cpp.md)) ![Qt](PicQt.png) [QStyleSheet](CppQStyleSheet.md)

[QStyleSheet](CppQStyleSheet.md) is a [Qt](CppQt.md)
[class](CppClass.md).

 

-   [Download the Qt Creator project
    'CppQStyleSheet' (zip)](CppQStyleSheet.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQStyleSheet.pro
-----------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui { class Dialog; }  class Dialog : public QDialog {     Q_OBJECT      public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();      private slots:   void on_button_toggle_clicked();  private:     Ui::Dialog *ui; };  #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }  Dialog::~Dialog() {     delete ui; }  void Dialog::on_button_toggle_clicked() {   ui->button_show->setEnabled( ! ui->button_show->isEnabled() );    ui->button_show->setText(     ui->button_show->isEnabled()     ? QString("I am enabled")     : QString("I am disabled")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "dialog.h"  const std::string CreateStyleSheet() {   const std::string s =     "QPushButton:enabled {"     "  background-color: green;"     "}"     "QPushButton:disabled {"     "  background-color: red;"     "}";   return s; }  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   a.setStyleSheet(CreateStyleSheet().c_str());   Dialog w;   w.show();    return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

 

 

 

 

 

([C++](Cpp.md)) [QStyleSheet](CppQStyleSheet.md)
==================================================

 

 

 

 

 

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQStyleSheet.pro
-----------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui { class Dialog; }  class Dialog : public QDialog {     Q_OBJECT      public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();      private slots:   void on_button_toggle_clicked();  private:     Ui::Dialog *ui; };  #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }  Dialog::~Dialog() {     delete ui; }  void Dialog::on_button_toggle_clicked() {   ui->button_show->setEnabled( ! ui->button_show->isEnabled() );    ui->button_show->setText(     ui->button_show->isEnabled()     ? QString("I am enabled")     : QString("I am disabled")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "dialog.h"  const std::string CreateStyleSheet() {   const std::string s =     "QPushButton:enabled {"     "  background-color: green;"     "}"     "QPushButton:disabled {"     "  background-color: red;"     "}";   return s; }  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   a.setStyleSheet(CreateStyleSheet().c_str());   Dialog w;   w.show();    return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

 

 

 

 

 

([C++](Cpp.md)) [QStyleSheet](CppQStyleSheet.md)
==================================================

 

 

 

 

 

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQStyleSheet.pro
-----------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui { class Dialog; }  class Dialog : public QDialog {     Q_OBJECT      public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();      private slots:   void on_button_toggle_clicked();  private:     Ui::Dialog *ui; };  #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }  Dialog::~Dialog() {     delete ui; }  void Dialog::on_button_toggle_clicked() {   ui->button_show->setEnabled( ! ui->button_show->isEnabled() );    ui->button_show->setText(     ui->button_show->isEnabled()     ? QString("I am enabled")     : QString("I am disabled")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "dialog.h"  const std::string CreateStyleSheet() {   const std::string s =     "QPushButton:enabled {"     "  background-color: green;"     "}"     "QPushButton:disabled {"     "  background-color: red;"     "}";   return s; }  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   a.setStyleSheet(CreateStyleSheet().c_str());   Dialog w;   w.show();    return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

 

 

 

 

 

([C++](Cpp.md)) [QStyleSheet](CppQStyleSheet.md)
==================================================

 

 

 

 

 

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQStyleSheet.pro
-----------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui { class Dialog; }  class Dialog : public QDialog {     Q_OBJECT      public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();      private slots:   void on_button_toggle_clicked();  private:     Ui::Dialog *ui; };  #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }  Dialog::~Dialog() {     delete ui; }  void Dialog::on_button_toggle_clicked() {   ui->button_show->setEnabled( ! ui->button_show->isEnabled() );    ui->button_show->setText(     ui->button_show->isEnabled()     ? QString("I am enabled")     : QString("I am disabled")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "dialog.h"  const std::string CreateStyleSheet() {   const std::string s =     "QPushButton:enabled {"     "  background-color: green;"     "}"     "QPushButton:disabled {"     "  background-color: red;"     "}";   return s; }  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   a.setStyleSheet(CreateStyleSheet().c_str());   Dialog w;   w.show();    return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

 

 

 

 

 

([C++](Cpp.md)) [QStyleSheet](CppQStyleSheet.md)
==================================================

 

 

 

 

 

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQStyleSheet.pro
-----------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui { class Dialog; }  class Dialog : public QDialog {     Q_OBJECT      public:     explicit Dialog(QWidget *parent = 0);     ~Dialog();      private slots:   void on_button_toggle_clicked();  private:     Ui::Dialog *ui; };  #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :     QDialog(parent),     ui(new Ui::Dialog) {     ui->setupUi(this); }  Dialog::~Dialog() {     delete ui; }  void Dialog::on_button_toggle_clicked() {   ui->button_show->setEnabled( ! ui->button_show->isEnabled() );    ui->button_show->setText(     ui->button_show->isEnabled()     ? QString("I am enabled")     : QString("I am disabled")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include "dialog.h"  const std::string CreateStyleSheet() {   const std::string s =     "QPushButton:enabled {"     "  background-color: green;"     "}"     "QPushButton:disabled {"     "  background-color: red;"     "}";   return s; }  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   a.setStyleSheet(CreateStyleSheet().c_str());   Dialog w;   w.show();    return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

