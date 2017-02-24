
 

 

 

 

 

([C++](Cpp.md)) [operator++](CppOperatorIncrement.md)
=======================================================

 

[operator++](CppOperatorIncrement.md) (also called the [increment
operator](CppOperatorIncrement.md)) increases an
[integer](CppInt.md)'s value by one. To decrease an
[integer](CppInt.md)'s value by one, use
[operator--](CppOperatorDecrement.md)

 

[operator++](CppOperatorIncrement.md) has a pre-fix and post-fix form,
which are '++i' and 'i++' respectively. The prefix form
[returns](CppReturn.md) the value of i its new value, the postfix form
[returns](CppReturn.md) the value of i before its increment. Prefer
'++i' over 'i++' \[1,2\].

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  int main() {   int i = 0;   ++i; // preferred [1]   assert(i==1);   i++; // not preferred [1]   assert(i==2); }`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

There are four ways to increment a value by 1, that make use of
different [operators](CppOperator.md) and some of temporary copies.

 

  -------------- ---------------------------
  **Code**       **Temporary copy yes/no**
  `i = i + 1;`   yes
  `i += 1;`      no
  `++i;`         yes
  `i++;`         no
  -------------- ---------------------------

 

 

 

 

 

[Overloading](CppOverload.md) [operator++](CppOperatorIncrement.md)
---------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyInt {   //Prefix   MyInt& operator++()   {     ++mX;         //Increment     return *this; //Return class reference   }    //Postfix   MyInt operator++(int)   {     MyInt old(*this); //Copy     ++(*this);        //Increment original using prefix     return old;       //Return old copy   }    int mX; };  int main() {   MyInt m;   ++m;   m++; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 19.5.7:
    'Prefer ++p to p++'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[1\] Prefer prefix ++ over suffix ++'

 

 

 

 

 

 

