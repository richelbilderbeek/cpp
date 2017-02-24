
 

 

 

 

 

([C++](Cpp.md))[type qualifiers ignored on function return type](CppCompileWarningTypeQualifiersIgnoredOnFunctionReturnType.md)
=================================================================================================================================

 

[Compile warning](CppCompileWarning.md).

 

 

 

 

 

Full warning message
--------------------

 

  -------------------------------------------------------------------------
  ` main.cpp:2: warning: type qualifiers ignored on function return type`
  -------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQt.md) 1.2.1

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

Project type: Qt4 Console Application

 

  --------------------------------------------------------------------
  ` template <typename T> const T Do(); template <> const int Do();`
  --------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Unknown. Removing the [constness](CppConst.md) in the
[integer](CppInt.md) [return type](CppReturnType.md) results in a
[compile error](CppCompileError.md).

 

 

 

 

 

 

