
 

 

 

 

 

([C++](Cpp.md)) [operator--](CppOperatorDecrement.md)
=======================================================

 

[operator--](CppOperatorDecrement.md) (also called the [decrement
operator](CppOperatorDecrement.md)) decreases an
[integer](CppInt.md)'s value by one. To increase an
[integer](CppInt.md)'s value by one, use
[operator++](CppOperatorIncrement.md)

 

[operator--](CppOperatorDecrement.md) has a pre-fix and post-fix form,
which are '--i' and 'i--' respectively. The prefix form
[returns](CppReturn.md) the value of i its new value, the postfix form
[returns](CppReturn.md) the value of i before its decrement. Prefer
'--i' over 'i--' \[1\].

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  int main() {   int i = 0;   --i; // preferred [1]   assert(i==1);   i--; // not preferred [1]   assert(i==2); }`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

There are four ways to decrement a value by 1, that make use of
different [operators](CppOperator.md) and some of temporary copies.

 

+--------------------------------------+--------------------------------------+
| **Code**                             | **Temporary copy yes/no**            |
+--------------------------------------+--------------------------------------+
| `i = i - 1;`                         | yes                                  |
+--------------------------------------+--------------------------------------+
| `i -= 1;`                            | no                                   |
+--------------------------------------+--------------------------------------+
| `--i;`                               | yes                                  |
+--------------------------------------+--------------------------------------+
| `i--;`                               | no                                   |
+--------------------------------------+--------------------------------------+

 

 

 

 

 

[Overloading](CppOverload.md) [operator--](CppOperatorDecrement.md)
---------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyInt {   //Prefix   MyInt& operator--()   {     --mX;         //Decrement     return *this; //Return class reference   }    //Postfix   MyInt operator--(int)   {     MyInt old(*this); //Copy     --(*this);        //Decrement original using prefix     return old;       //Return old copy   }    int mX; };  int main() {   MyInt m;   --m;   m--; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 19.5.7:
    'Prefer ++p to p++'

 

 

 

 

 

 

