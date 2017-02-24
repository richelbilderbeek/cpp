



 

 

 

 

 

([C++](Cpp.md)) [QtSignalExample3](CppQtSignalExample3.md)
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQtSignalExample3/CppQtSignalExample3.pro
--------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += \     main.cpp \     receiver.cpp  HEADERS += \     receiver.h`
  ---------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample3/main.cpp
------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <iostream>  #include <QApplication> #include <QDoubleSpinBox>  #include "receiver.h" #pragma GCC diagnostic pop  int main(int argc,char* argv[]) {   QApplication a(argc,argv);    QDoubleSpinBox b;   Receiver r;   //QObject::connect(&b,SIGNAL(valueChanged(double)),&r,SLOT(OnReceive(double))); //Qt4   QObject::connect(&b,     static_cast<void (QDoubleSpinBox::*)(double)>(&QDoubleSpinBox::valueChanged),     &r,     static_cast<void (Receiver::*)(double) const>(&Receiver::OnReceive)   ); //Qt5   b.setValue(1.1);   b.setValue(2.2);     a.exit(); //To satisfy the compiler   return 0; //To satisfy the compiler }  /* Screen output:  Receiver: received signal: a double with value 1.1 Receiver: received signal: a double with value 2.2  */`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample3/receiver.h
--------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef RECEIVER_H #define RECEIVER_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <QObject> #pragma GCC diagnostic pop  class Receiver : public QObject {   Q_OBJECT public:   explicit Receiver(QObject *parent = 0);  public slots:   void OnReceive() const noexcept;   void OnReceive(const double x) const noexcept; };  #endif // RECEIVER_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQtSignalExample3/receiver.cpp
----------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "receiver.h"  #include <iostream>  Receiver::Receiver(QObject *parent)   : QObject(parent) {  }  void Receiver::OnReceive() const noexcept {   std::clog << "Receiver: received signal" << std::endl; }  void Receiver::OnReceive(const double x) const noexcept {   std::clog << "Receiver: received signal: a double with value " << x << std::endl; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
