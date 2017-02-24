



 

 

 

 

 

([C++](Cpp.md)) [operator!](CppOperatorLogicalNot.md)
=======================================================

 

[operator!](CppOperatorLogicalNot.md) (pronounced 'logical not
[operator](CppOperator.md)') is an [operator](CppOperator.md) to do a
logical not on a [boolean](CppBool.md). In other words:
[!](CppOperatorLogicalNot.md)[true](CppTrue.md) is
[false](CppFalse.md), and
[!](CppOperatorLogicalNot.md)[false](CppFalse.md) is
[true](CppTrue.md).

 

The example code below [asserts](CppAssert.md) that a
[std::string](CppString.md) is not empty, before
[returning](CppReturn.md) the first [character](CppChar.md) of it.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string>  char GetFirstChar(const std::string& s) {   assert(!s.empty());   return s[0]; }  int main() {   assert(GetFirstChar("Bilderbikkel")=='B'); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



