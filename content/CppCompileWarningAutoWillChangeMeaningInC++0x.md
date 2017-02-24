



 

 

 

 

 

([C++](Cpp.md)) ['auto' will change meaning in C++0x; please remove it](CppCompileWarningAutoWillChangeMeaningInC++0x.md)
===========================================================================================================================

 

[Compile warning](CppCompileWarning.md).

 

 

 

 

 

Full warning message
--------------------

 

  ---------------------------------------------------------------------------------
  ` MyMain.cpp:3: warning: 'auto' will change meaning in C++0x; please remove it`
  ---------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQt.md) 1.2.1

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

Project type: Qt4 Console Application

 

  -------------------------------------
  ` int main() {   auto int x = 3; }`
  -------------------------------------

 

 

 

 

 

Solution
--------

 

Remove [auto](CppAuto.md). Never use [auto](CppAuto.md) \[1\], until
[C++11](Cpp11.md) arrives.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 28 guideline: 'Never write auto'.

 

 

 

 

 





 



