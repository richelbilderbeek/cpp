[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [operator&lt;=](CppOperatorLessEqual.htm)
==========================================================

 

[operator&lt;=](CppOperatorLessEqual.htm) is the
[operator](CppOperator.htm) to determine if the left-hand
[instance](CppInstance.htm) is less or equal the right-hand
[instance](CppInstance.htm).

 

The following code uses [operator&lt;=](CppOperatorLessEqual.htm) to
determine that one plus two is less or equal equal to three:

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   if (1 + 2 <= 3) std::cout << "One plus two is less or equal than three" << std::endl; }`
  --------------------------------------------------------------------------------------------------------------------------------

 

[operator&lt;=](CppOperatorLessEqual.htm) is encapsulated by the
[functor](CppFunctor.htm) [std::less\_equal](CppLess_equal.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

 

-   Reversing the order of the pair of symbols in the
    [operators](CppOperator.htm) [!=](CppOperatorNotEqual.htm),
    [&gt;=](CppOperatorGreaterEqual.htm) and
    [&lt;=](CppOperatorLessEqual.htm) (by writing them as =!, =&gt; and
    =&lt; respectively) is normally a [syntax error](CppSyntaxError.htm)
    \[1\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Common Programming
    Error 2.2. page 32: 'Reversing the order of the pair of symbols in
    the operators !=, &gt;= and &lt; (by writing them as =!, =&gt; and
    =&lt; respectively) is normally a syntax error. In some cases,
    writing != as =! will not be a syntax error, but almost certainly
    will be a logic error that has an effect at execution time.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
