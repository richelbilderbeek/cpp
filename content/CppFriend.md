
 

 

 

 

 

([C++](Cpp.md)) [friend](CppFriend.md)
========================================

 

[friend](CppFriend.md) is a [keyword](CppKeyword.md) to grant
[private](CppPrivate.md) access to a [function](CppFunction.md),
[member function](CppMemberFunction.md) or [class](CppClass.md).

 

Avoid unnecessary [friendships](CppFriend.md) \[1\]. Avoiding granting
[friendship](CppFriend.md) to individual [functions](CppFunction.md)
\[2\].

 

 

 

 

 

Example: [overloading](CppOverload.md) [operator&lt;&lt;](CppOperatorStreamOut.md)
------------------------------------------------------------------------------------

 

In this example, [operator&lt;&lt;](CppOperatorStreamOut.md) is made a
[friend](CppFriend.md) of [class](CppClass.md) MyClass, so that
[operator&lt;&lt;](CppOperatorStreamOut.md) can access the
[private](CppPrivate.md) [variable](CppVariable.md) mValue.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  struct MyClass {   MyClass(const int value) : mValue(value) {}   private:   const int mValue;   friend std::ostream& operator<<(std::ostream& os, const MyClass& myClass); };  std::ostream& operator<<(std::ostream& os, const MyClass& myClass) {   os << "MyClass.value: " << myClass.mValue;   return os; }  int main() {   const MyClass myClass(13);   std::cout << myClass << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

References

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.13: 'Avoiding unnecessary
    friendships (even within the same component) can improve
    maintainability'
2.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.13: 'Avoiding granting
    friendship to individual functions'

 

 

 

 

 

 

