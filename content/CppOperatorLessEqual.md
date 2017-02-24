
 

 

 

 

 

([C++](Cpp.md)) [operator&lt;=](CppOperatorLessEqual.md)
==========================================================

 

[operator&lt;=](CppOperatorLessEqual.md) is the
[operator](CppOperator.md) to determine if the left-hand
[instance](CppInstance.md) is less or equal the right-hand
[instance](CppInstance.md).

 

The following code uses [operator&lt;=](CppOperatorLessEqual.md) to
determine that one plus two is less or equal equal to three:

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   if (1 + 2 <= 3) std::cout << "One plus two is less or equal than three" << std::endl; }`
  --------------------------------------------------------------------------------------------------------------------------------

 

[operator&lt;=](CppOperatorLessEqual.md) is encapsulated by the
[functor](CppFunctor.md) [std::less\_equal](CppLess_equal.md).

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

 

-   Reversing the order of the pair of symbols in the
    [operators](CppOperator.md) [!=](CppOperatorNotEqual.md),
    [&gt;=](CppOperatorGreaterEqual.md) and
    [&lt;=](CppOperatorLessEqual.md) (by writing them as =!, =&gt; and
    =&lt; respectively) is normally a [syntax error](CppSyntaxError.md)
    \[1\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Common Programming
    Error 2.2. page 32: 'Reversing the order of the pair of symbols in
    the operators !=, &gt;= and &lt; (by writing them as =!, =&gt; and
    =&lt; respectively) is normally a syntax error. In some cases,
    writing != as =! will not be a syntax error, but almost certainly
    will be a logic error that has an effect at execution time.'

 

 

 

 

 

 

