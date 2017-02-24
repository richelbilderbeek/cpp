
 

 

 

 

 

([C++](Cpp.md)) [operator&gt;&gt;](CppOperatorStreamIn.md)
============================================================

 

[operator&gt;&gt;](CppOperatorStreamIn.md) (pronounced 'Stream in
[operator](CppOperator.md)') is an [operator](CppOperator.md) for
sending data from a [stream](CppStream.md) to something. For doing the
other way around, use [operator&lt;&lt;](CppOperatorStreamOut.md).

 

 

 

 

 

[Overloading](CppOverload.md) [operator&gt;&gt;](CppOperatorStreamIn.md)
--------------------------------------------------------------------------

 

Prefer [overloading](CppOverload.md)
[operator&gt;&gt;](CppOperatorStreamIn.md) with a free
[function](CppFunction.md) \[1\]. To be able to access the
[private](CppPrivate.md) member variables, make this
[function](CppFunction.md) a [friend](CppFriend.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>   struct MyClass {   MyClass(const int value) : mValue(value) {}   private:   int mValue;   friend std::istream& operator>>(std::istream& is, MyClass& myClass); };   std::istream& operator>>(std::istream& is, MyClass& myClass); {   is >> myClass.mValue;   return is; }   int main() {   MyClass myClass(13);   std::cin >> myClass; } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Another example
---------------

 

-   [Download the Qt Creator project
    'CppOperatorStreamIn' (zip)](CppOperatorStreamIn.zip)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream> #include <iostream> #include <string>  struct Person {   std::string m_name;   int m_birth_year; };  std::ostream& operator<<(std::ostream& os,const Person& p) {   os << p.m_name      << ' ' //Add either a space, tab or newline      << p.m_birth_year;   return os; }  std::istream& operator>>(std::istream& is, Person& p) {   is     >> p.m_name     >> p.m_birth_year;   return is; }  int main() {   //Create a Person and save it to file   {     Person p;     p.m_name = "Bilderbikkel";     p.m_birth_year = 1980;     std::ofstream f("tmp.txt");     f << p;   }   //Create a Person and save it to file   {     std::ifstream f("tmp.txt");     Person p;     f >> p;     assert(p.m_name == "Bilderbikkel");     assert(p.m_birth_year == 1980);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2.

 

 

 

 

 

 

