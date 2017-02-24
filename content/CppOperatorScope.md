



 

 

 

 

 

([C++](Cpp.htm)) [operator::](CppOperatorScope.htm)
===================================================

 

[operator::](CppOperatorScope.htm) (pronounced as 'scope
[operator](CppOperator.htm)') is an [operator](CppOperator.htm) to
determine the [namespace](CppNamespace.htm) used.

 

The example below shows how to call a [function](CppFunction.htm) in the
[global](CppGlobal.htm) [namespace](CppNamespace.htm) and that
[std::cout](CppCout.htm) is in the [std](CppStd.htm)
[namespace](CppNamespace.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void X() {   std::cout << "Hello world\n"; }  int main() {   ::X(); //Scope operator can be omitted }`
  -------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



