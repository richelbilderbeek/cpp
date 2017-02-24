
 

 

 

 

 

([C++](Cpp.md)) [RpiExample3](CppRpiExample3.md)
==================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppRpiExample3/CppRpiExample3.pro
----------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt #QMAKE_CXXFLAGS += -std=c++0x  #QMAKE_CXX = gcc #QMAKE_CXXFLAGS = -x c  INCLUDEPATH += \     ../../Libraries/Arduino/hardware/arduino/cores/arduino \     ../../Libraries/Arduino/hardware/arduino/variants/standard \     ../../Libraries/avr-libc-1.8.0/include   SOURCES += \     ../../Libraries/Arduino/hardware/arduino/cores/arduino/main.cpp \     mymain.cpp \     ../../Libraries/Arduino/hardware/arduino/cores/arduino/wiring_digital.c`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppRpiExample3/mymain.cpp
---------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <Arduino.h>  void init() {}  void setup() {   pinMode(3,OUTPUT); }  void loop() {   digitalWrite(3,HIGH);   delay(1000);   digitalWrite(3,LOW);   delay(1000); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

