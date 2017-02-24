
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QComboBox example 1: use of QStringListModel](CppQComboBoxExample1.md)
==========================================================================================================

 

[QComboBox example 1: use of QStringListModel](CppQComboBoxExample1.md)
is an example of how to set a [QComboBox](CppQComboBox.md) its model
with a [QStringListModel](CppQStringListModel.md).

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.04 (raring)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.7.0

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.3

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppQComboBoxExample1.pro
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

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
