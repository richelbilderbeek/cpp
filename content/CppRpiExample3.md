

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [RpiExample3](CppRpiExample3.htm)
==================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppRpiExample3/CppRpiExample3.pro
----------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt #QMAKE_CXXFLAGS += -std=c++0x  #QMAKE_CXX = gcc #QMAKE_CXXFLAGS = -x c  INCLUDEPATH += \     ../../Libraries/Arduino/hardware/arduino/cores/arduino \     ../../Libraries/Arduino/hardware/arduino/variants/standard \     ../../Libraries/avr-libc-1.8.0/include   SOURCES += \     ../../Libraries/Arduino/hardware/arduino/cores/arduino/main.cpp \     mymain.cpp \     ../../Libraries/Arduino/hardware/arduino/cores/arduino/wiring_digital.c`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppRpiExample3/mymain.cpp
---------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <Arduino.h>  void init() {}  void setup() {   pinMode(3,OUTPUT); }  void loop() {   digitalWrite(3,HIGH);   delay(1000);   digitalWrite(3,LOW);   delay(1000); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
