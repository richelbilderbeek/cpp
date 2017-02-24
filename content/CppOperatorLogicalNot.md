



 

 

 

 

 

([C++](Cpp.htm)) [operator!](CppOperatorLogicalNot.htm)
=======================================================

 

[operator!](CppOperatorLogicalNot.htm) (pronounced 'logical not
[operator](CppOperator.htm)') is an [operator](CppOperator.htm) to do a
logical not on a [boolean](CppBool.htm). In other words:
[!](CppOperatorLogicalNot.htm)[true](CppTrue.htm) is
[false](CppFalse.htm), and
[!](CppOperatorLogicalNot.htm)[false](CppFalse.htm) is
[true](CppTrue.htm).

 

The example code below [asserts](CppAssert.htm) that a
[std::string](CppString.htm) is not empty, before
[returning](CppReturn.htm) the first [character](CppChar.htm) of it.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string>  char GetFirstChar(const std::string& s) {   assert(!s.empty());   return s[0]; }  int main() {   assert(GetFirstChar("Bilderbikkel")=='B'); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



