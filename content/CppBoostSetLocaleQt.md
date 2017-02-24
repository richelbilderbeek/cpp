



 

 

 

 

 

([C++](Cpp.md)) [BoostSetLocaleQt](CppBoostSetLocaleQt.md)
============================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppBoostSetLocaleQt/CppBoostSetLocaleQt.pro
--------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri) include(../../Libraries/BoostAll.pri)  SOURCES += \   main.cpp \   dialog.cpp  HEADERS  += dialog.h  FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSetLocaleQt/dialog.h
------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog>  namespace Ui { class Dialog; }  class Dialog : public QDialog {   Q_OBJECT  public:   explicit Dialog(QWidget *parent = 0);   Dialog(const Dialog&) = delete;   Dialog& operator=(const Dialog&) = delete;   ~Dialog();  private:   Ui::Dialog *ui; };  #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSetLocaleQt/dialog.cpp
--------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h"  #include <cassert> #include <iostream>  #include <boost/locale.hpp> #include <boost/math/constants/constants.hpp> #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog) {   ui->setupUi(this);    const double pi = boost::math::constants::pi<double>();    assert(std::locale().name() == "C");    assert(boost::lexical_cast<std::string>(pi)[1] == ',' && "Dutch");    boost::locale::generator gen;   std::locale::global(gen(""));   std::locale::global(gen("en_US.UTF-8"));    assert(std::locale().name() == "*");    assert(boost::lexical_cast<std::string>(pi)[1] == ',' && "Dutch"); }  Dialog::~Dialog() {   delete ui; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSetLocaleQt/main.cpp
------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "dialog.h" #include <QApplication>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();    return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
