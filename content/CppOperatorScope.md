
 

 

 

 

 

([C++](Cpp.md)) [operator::](CppOperatorScope.md)
===================================================

 

[operator::](CppOperatorScope.md) (pronounced as 'scope
[operator](CppOperator.md)') is an [operator](CppOperator.md) to
determine the [namespace](CppNamespace.md) used.

 

The example below shows how to call a [function](CppFunction.md) in the
[global](CppGlobal.md) [namespace](CppNamespace.md) and that
[std::cout](CppStdCout.md) is in the [std](CppStd.md)
[namespace](CppNamespace.md).

 

  -------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void X() {   std::cout << "Hello world\n"; }  int main() {   ::X(); //Scope operator can be omitted }`
  -------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

