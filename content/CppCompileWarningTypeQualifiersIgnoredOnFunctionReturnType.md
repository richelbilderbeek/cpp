



 

 

 

 

 

([C++](Cpp.htm))[type qualifiers ignored on function return type](CppCompileWarningTypeQualifiersIgnoredOnFunctionReturnType.htm)
=================================================================================================================================

 

[Compile warning](CppCompileWarning.htm).

 

 

 

 

 

Full warning message
--------------------

 

  -------------------------------------------------------------------------
  ` main.cpp:2: warning: type qualifiers ignored on function return type`
  -------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 1.2.1

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

Project type: Qt4 Console Application

 

  --------------------------------------------------------------------
  ` template <typename T> const T Do(); template <> const int Do();`
  --------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Unknown. Removing the [constness](CppConst.htm) in the
[integer](CppInt.htm) [return type](CppReturnType.htm) results in a
[compile error](CppCompileError.htm).

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
