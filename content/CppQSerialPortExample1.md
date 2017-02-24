



 

 

 

 

 

([C++](Cpp.htm)) [QSerialPortExample1](CppQSerialPortExample1.htm)
==================================================================

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQSerialPortExample1/CppQSerialPortExample1.pro
--------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core gui QMAKE_CXXFLAGS += -std=c++1y -Wextra -Werror greaterThan(QT_MAJOR_VERSION, 4): QT += widgets serialport TEMPLATE = app SOURCES += main.cpp \         dialog.cpp HEADERS  += dialog.h FORMS    += dialog.ui`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQSerialPortExample1/dialog.h
---------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DIALOG_H #define DIALOG_H  #include <QDialog> #include <memory>  namespace Ui {   class Dialog; }  struct QSerialPort;  class Dialog : public QDialog {   Q_OBJECT    public:   explicit Dialog(QWidget *parent = 0);   ~Dialog();    private slots:   void OnTimer();  private:   Ui::Dialog *ui;   const std::shared_ptr<QSerialPort> m_serial;   static std::shared_ptr<QSerialPort> AcquireSerialPort() noexcept; };  #endif // DIALOG_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQSerialPortExample1/dialog.cpp
-----------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string>  #include <QDebug> #include <QtSerialPort/QSerialPort> #include <QtSerialPort/QSerialPortInfo> #include <QTimer> #include "dialog.h" #include "ui_dialog.h"  Dialog::Dialog(QWidget *parent) :   QDialog(parent),   ui(new Ui::Dialog),   m_serial{AcquireSerialPort()} {   ui->setupUi(this);    if (!m_serial)   {     this->setWindowTitle("No serial port found");   }   else   {     QTimer * const timer{new QTimer(this)};     QObject::connect(timer,SIGNAL(timeout()),this,SLOT(OnTimer()));     timer->setInterval(100);     timer->start();   } }  Dialog::~Dialog() {   delete ui; }  std::shared_ptr<QSerialPort> Dialog::AcquireSerialPort() noexcept {   for(const QSerialPortInfo &info: QSerialPortInfo::availablePorts())   {     std::shared_ptr<QSerialPort> serial{new QSerialPort};     serial->setPort(info);     if (serial->open(QIODevice::ReadWrite))     {       return serial;     }   }   return std::shared_ptr<QSerialPort>(); }  void Dialog::OnTimer() {   const QByteArray b = m_serial->readAll();   if (b.isEmpty()) return;   this->ui->progressBar->setValue(std::atoi(b)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQSerialPortExample1/main.cpp
---------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /* Upload this code to the Arduino:  const int pin_read = A0; const int read_every_msec = 100;  void setup() {   Serial.begin(9600); }  void loop() {   const int sensorValue = analogRead(pin_read);   Serial.println(sensorValue);   delay(read_every_msec); }   */  #include <QApplication> #include "dialog.h"  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Dialog w;   w.show();     return a.exec(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
