



 

 

 

 

 

([C++](Cpp.md)) [Overloading](CppOverload.md)
===============================================

 

[Overloading](CppOverload.md) is to redefine a standard
[operator](CppOperator.md). The example below shows how to
[overload](CppOverload.md)
[operator&lt;&lt;](CppOperatorStreamOut.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  struct MyClass {   MyClass(const int value) : mValue(value) {}   private:   const int mValue;   friend std::ostream& operator<<(std::ostream& os, const MyClass& myClass);   friend std::ostream& operator<<(std::ostream& os, const MyClass& myClass); };  std::ostream& operator<<(std::ostream& os, const MyClass& myClass) {   os << "MyClass.value: " << myClass.mValue;   return os; }  int main() {   const MyClass myClass(13);   std::cout << myClass << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



