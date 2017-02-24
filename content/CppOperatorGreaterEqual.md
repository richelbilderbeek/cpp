



 

 

 

 

 

([C++](Cpp.htm)) [operator&gt;=](CppOperatorGreaterEqual.htm)
=============================================================

 

[operator&gt;=](CppOperatorGreaterEqual.htm) is the
[operator](CppOperator.htm) to determine if the left-hand
[instance](CppInstance.htm) is greater or equal the right-hand
[instance](CppInstance.htm).

 

The following code uses [operator&gt;=](CppOperatorGreaterEqual.htm) to
determine that one plus two is greater or equal equal to three:

 

  -------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   if (1 + 2 >= 3) std::cout << "One plus two is greater or equal than three.\n"; }`
  -------------------------------------------------------------------------------------------------------------------------

 

[operator&gt;=](CppOperatorGreaterEqual.htm) is encapsulated by the
[functor](CppFunctor.htm) [std::greater\_equal](CppGreater_equal.htm).

 

 

 

 

 

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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
