

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [friend](CppFriend.htm)
========================================

 

[friend](CppFriend.htm) is a [keyword](CppKeyword.htm) to grant
[private](CppPrivate.htm) access to a [function](CppFunction.htm),
[member function](CppMemberFunction.htm) or [class](CppClass.htm).

 

Avoid unnecessary [friendships](CppFriend.htm) \[1\]. Avoiding granting
[friendship](CppFriend.htm) to individual [functions](CppFunction.htm)
\[2\].

 

 

 

 

 

Example: [overloading](CppOverload.htm) [operator&lt;&lt;](CppOperatorStreamOut.htm)
------------------------------------------------------------------------------------

 

In this example, [operator&lt;&lt;](CppOperatorStreamOut.htm) is made a
[friend](CppFriend.htm) of [class](CppClass.htm) MyClass, so that
[operator&lt;&lt;](CppOperatorStreamOut.htm) can access the
[private](CppPrivate.htm) [variable](CppVariable.htm) mValue.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  struct MyClass {   MyClass(const int value) : mValue(value) {}   private:   const int mValue;   friend std::ostream& operator<<(std::ostream& os, const MyClass& myClass); };  std::ostream& operator<<(std::ostream& os, const MyClass& myClass) {   os << "MyClass.value: " << myClass.mValue;   return os; }  int main() {   const MyClass myClass(13);   std::cout << myClass << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

References

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.13: 'Avoiding unnecessary
    friendships (even within the same component) can improve
    maintainability'
2.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.13: 'Avoiding granting
    friendship to individual functions'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
