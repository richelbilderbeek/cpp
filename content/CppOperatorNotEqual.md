



 

 

 

 

 

([C++](Cpp.htm)) [operator!=](CppOperatorNotEqual.htm)
======================================================

 

[operator!=](CppOperatorNotEqual.htm) is the [operator](CppOperator.htm)
to determine if two [instances](CppInstance.htm) are different.

 

The following code uses [operator!=](CppOperatorNotEqual.htm) to
determine that three is not equal to four:

 

  --------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   if (3 != 4) std::cout << "Three is not equal to four" << std::endl; }`
  --------------------------------------------------------------------------------------------------------------

 

[operator!=](CppOperatorNotEqual.htm) is encapsulated by the
[functor](CppFunctor.htm) [std::not\_equal\_to](CppNot_equal_to.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

 

-   In some cases, writing [!=](CppOperatorNotEqual.htm) as =! will not
    be a [syntax error](CppSyntaxError.htm), but almost certainly will
    be a [logic error](CppLogicError.htm) that has an effect at
    execution time \[1\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Common Programming
    Error 2.2. page 32: 'Reversing the order of the pair of symbols in
    the operators !=, &gt;= and &lt; (by writing them as =!, =&gt; and
    =&lt; respectively) is normally a syntax error. In some cases,
    writing != as =! will not be a syntax error, but almost certainly
    will be a logic error that has an effect at execution time.'

 

 

 

 

 





 



