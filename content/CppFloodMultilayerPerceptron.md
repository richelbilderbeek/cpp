
 

 

 

 

 

([C++](Cpp.md)) [Flood::MultilayerPerceptron](CppFloodMultilayerPerceptron.md)
================================================================================

 

[Flood::MultilayerPerceptron](CppFloodMultilayerPerceptron.md) is a
[Flood](CppFlood.md) [data type](CppDataType.md) for a multilayer
perceptron.

 

 

 

 

 

[Flood::MultilayerPerceptron](CppFloodMultilayerPerceptron.md) bug
-------------------------------------------------------------------

 

Note: this bug is known to the author of [Flood](CppFlood.md) and he
kindly delivered the following patch: [download the patch of this
bug](CppFloodMultilayerPerceptron.patch).

 

Some simple getters seem to give errors. The error depends on the index
of the hidden layer where I request the weights from. See the code
below.

 

-   [Download the Qt Creator project
    'CppFloodBug1' (zip)](CppFloodBug1.zip)

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md): [GUI](CppGui.md) application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Flood](CppFlood.md): version 3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-08-15T20:28:01 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppFloodBug1 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp SOURCES += ../../Flood/MultilayerPerceptron/MultilayerPerceptron.cpp SOURCES += ../../Flood/Perceptron/Perceptron.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #define _DEBUG #include "../../Flood/MultilayerPerceptron/MultilayerPerceptron.h"  int main() {   Flood::MultilayerPerceptron t(3,3,3);   t.get_hidden_layer_synaptic_weights(1); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output depends. Sometimes the program gives an access violation.
Sometimes I get:

 

  ----------------------------------------------------------------------------------------------------------
  ` Flood Error: Matrix Template. Constructor Matrix(int, int). Number of rows must be greater than zero.`
  ----------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

