



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QComboBox example 1: use of QStringListModel](CppQComboBoxExample1.htm)
==========================================================================================================

 

[QComboBox example 1: use of QStringListModel](CppQComboBoxExample1.htm)
is an example of how to set a [QComboBox](CppQComboBox.htm) its model
with a [QStringListModel](CppQStringListModel.htm).

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 13.04 (raring)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.7.0

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.3

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppQComboBoxExample1.pro
-----------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #-------------------------------------------------  #  # Project created by QtCreator 2013-05-21T13:27:44  #  #-------------------------------------------------    QT       += core gui    TARGET = CppQComboBoxExample1  TEMPLATE = app      SOURCES += main.cpp\          qtdialog.cpp    HEADERS  += qtdialog.h    FORMS    += qtdialog.ui `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtGui/QApplication>  #include "qtdialog.h"    int main(int argc, char *argv[])  {    QApplication a(argc, argv);    QtDialog w;    w.show();        return a.exec();  } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtdialog.h
----------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef QTDIALOG_H  #define QTDIALOG_H    #include <QDialog>    namespace Ui {    class QtDialog;  }    class QtDialog : public QDialog  {    Q_OBJECT      public:    explicit QtDialog(QWidget *parent = 0);    ~QtDialog();      private slots:    void on_pushButton_clicked();    private:    Ui::QtDialog *ui;  };    #endif // QTDIALOG_H `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

qtdialog.cpp
------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "qtdialog.h"    #include <QStringListModel>  #include "ui_qtdialog.h"    QtDialog::QtDialog(QWidget *parent) :    QDialog(parent),    ui(new Ui::QtDialog)  {    ui->setupUi(this);    ui->pushButton->click();  }    QtDialog::~QtDialog()  {    delete ui;  }    void QtDialog::on_pushButton_clicked()  {    QStringList strings;    if ((std::rand() >> 4) % 2) strings.append("A");    if ((std::rand() >> 4) % 2) strings.append("B");    if ((std::rand() >> 4) % 2) strings.append("C");    if ((std::rand() >> 4) % 2) strings.append("D");      QStringListModel * const model = new QStringListModel(strings);    ui->comboBox_1->setModel(model);    ui->comboBox_2->setModel(model);    ui->comboBox_3->setModel(model);    ui->comboBox_4->setModel(model);  } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
