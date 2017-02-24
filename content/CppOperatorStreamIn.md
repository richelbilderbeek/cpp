

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [operator&gt;&gt;](CppOperatorStreamIn.htm)
============================================================

 

[operator&gt;&gt;](CppOperatorStreamIn.htm) (pronounced 'Stream in
[operator](CppOperator.htm)') is an [operator](CppOperator.htm) for
sending data from a [stream](CppStream.htm) to something. For doing the
other way around, use [operator&lt;&lt;](CppOperatorStreamOut.htm).

 

 

 

 

 

[Overloading](CppOverload.htm) [operator&gt;&gt;](CppOperatorStreamIn.htm)
--------------------------------------------------------------------------

 

Prefer [overloading](CppOverload.htm)
[operator&gt;&gt;](CppOperatorStreamIn.htm) with a free
[function](CppFunction.htm) \[1\]. To be able to access the
[private](CppPrivate.htm) member variables, make this
[function](CppFunction.htm) a [friend](CppFriend.htm).

 

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

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN: 0-201-61562-2.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
