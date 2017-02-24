



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [-Weffc++ and Qt](CppWeffcppAndQt.md)
========================================================================

 

[-Weffc++ and Qt](CppWeffcppAndQt.md) describes how the [compile
warning](CppCompileWarning.md) [-Weffc++](CppWeffcpp.md) goes together
smoothly with [Qt](CppQt.md). The goal is to be able to
[compile](CppCompiler.md) cleanly at high warning levels \[1\], because
we prefer [compile errors](CppCompileError.md) to [runtime
errors](CppRuntimeError.md) \[2\].

 

-   In [Qt Creator](CppQtCreator.md), select '(menu) Tools |
    (menu item) Options | (vertical tab) Designer | (horizontal tab)
    Class generation | (groupbox) Embedding of the UI class' and select
    'Aggregation' ([view a screenshot of the default
    setting](CppWeffcppAndQt.png)).
-   Around each [Qt](CppQt.md) [\#include](CppInclude.md) suppress and
    allow [-Weffc++](CppWeffcpp.md)
-   Initialize the [member variable](CppMemberVariable.md) 'ui' in the
    dialog its [constructor](CppConstructor.md)

 

There are some drawbacks following this way:

 

-   Class generation is not done in this way be default
-   [Compiling](CppCompile.md) will take longer

 

-   [Download the Qt Creator project
    'CppWeffcppAndQtAggregation' (zip)](CppWeffcppAndQtAggregation.md)
-   [Download the Qt Creator project
    'CppWeffcppAndQtPointer' (zip)](CppWeffcppAndQtPointer.md) (this
    follows another, but failing, approach)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppWeffcppAndQt.pro
------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui QMAKE_CXXFLAGS += -Weffc++ -Werror greaterThan(QT_MAJOR_VERSION, 4): QT += widgets TARGET = CppWeffcppAndQt TEMPLATE = app SOURCES += main.cpp\         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.h
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #pragma GCC diagnostic ignored "-Weffc++" #include "ui_dialog.h" #pragma GCC diagnostic pop  class Dialog : public QDialog {   Q_OBJECT    public:   explicit Dialog(QWidget *parent = 0);    private slots:   void on_pushButton_clicked();  private:   Ui::Dialog ui; };  #endif // DIALOG_H`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

dialog.cpp
----------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <string>  #pragma GCC diagnostic ignored "-Weffc++" #include "dialog.h" #pragma GCC diagnostic pop  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(Ui::Dialog()) {   ui.setupUi(this); }  void Dialog::on_pushButton_clicked() {   const std::string s = ui.label->text().toStdString() + ".";    ui.label->setText(QString(s.c_str())); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #pragma GCC diagnostic ignored "-Weffc++" #include <QApplication> #include "dialog.h" #pragma GCC diagnostic pop  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();   return a.exec(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 1: 'Compile cleanly at high warning levels'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14:
    'Prefer compile- and link-time errors to run-time errors'.

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
