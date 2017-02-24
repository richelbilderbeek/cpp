



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [-Weffc++ and Qt](CppWeffcppAndQt.htm)
========================================================================

 

[-Weffc++ and Qt](CppWeffcppAndQt.htm) describes how the [compile
warning](CppCompileWarning.htm) [-Weffc++](CppWeffcpp.htm) goes together
smoothly with [Qt](CppQt.htm). The goal is to be able to
[compile](CppCompiler.htm) cleanly at high warning levels \[1\], because
we prefer [compile errors](CppCompileError.htm) to [runtime
errors](CppRuntimeError.htm) \[2\].

 

-   In [Qt Creator](CppQtCreator.htm), select '(menu) Tools |
    (menu item) Options | (vertical tab) Designer | (horizontal tab)
    Class generation | (groupbox) Embedding of the UI class' and select
    'Aggregation' ([view a screenshot of the default
    setting](CppWeffcppAndQt.png)).
-   Around each [Qt](CppQt.htm) [\#include](CppInclude.htm) suppress and
    allow [-Weffc++](CppWeffcpp.htm)
-   Initialize the [member variable](CppMemberVariable.htm) 'ui' in the
    dialog its [constructor](CppConstructor.htm)

 

There are some drawbacks following this way:

 

-   Class generation is not done in this way be default
-   [Compiling](CppCompile.htm) will take longer

 

-   [Download the Qt Creator project
    'CppWeffcppAndQtAggregation' (zip)](CppWeffcppAndQtAggregation.htm)
-   [Download the Qt Creator project
    'CppWeffcppAndQtPointer' (zip)](CppWeffcppAndQtPointer.htm) (this
    follows another, but failing, approach)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.3 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppWeffcppAndQt.pro
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

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 1: 'Compile cleanly at high warning levels'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14:
    'Prefer compile- and link-time errors to run-time errors'.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
