



 

 

 

 

 

([C++](Cpp.htm)) ['auto' will change meaning in C++0x; please remove it](CppCompileWarningAutoWillChangeMeaningInC++0x.htm)
===========================================================================================================================

 

[Compile warning](CppCompileWarning.htm).

 

 

 

 

 

Full warning message
--------------------

 

  ---------------------------------------------------------------------------------
  ` MyMain.cpp:3: warning: 'auto' will change meaning in C++0x; please remove it`
  ---------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 1.2.1

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

Project type: Qt4 Console Application

 

  -------------------------------------
  ` int main() {   auto int x = 3; }`
  -------------------------------------

 

 

 

 

 

Solution
--------

 

Remove [auto](CppAuto.htm). Never use [auto](CppAuto.htm) \[1\], until
[C++11](Cpp11.htm) arrives.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 28 guideline: 'Never write auto'.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
