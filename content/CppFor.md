



 

 

 

 

 

([C++](Cpp.htm)) [for](CppFor.htm)
==================================

 

[for](CppFor.htm) is a [keyword](CppKeyword.htm) to start a for-loop.

 

 

 

 

 

 

![C++98](PicCpp98.png)![C++11](PicCpp11.png) [For](CppFor.htm) loop syntax
--------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` for ( /* initialization */ ; /* breaking condition */ ; /* after-loop operation */ ) {   // The code block that will be repeated while the breaking condition is true }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [algorithms](CppAlgorithm.htm) over loops \[1,2\] (see
    [Exercise \#9: No for-loops](CppExerciseNoForLoops.htm) to learn how
    to do so)
-   Prefer a [for](CppFor.htm)-[statement](CppStatement.htm) to a
    [while](CppWhile.htm)-[statement](CppStatement.htm) when there is an
    obvious loop [variable](CppVariable.htm) \[5\]
-   Prefer a [while](CppWhile.htm)-[statement](CppStatement.htm) to a
    [for](CppFor.htm)-[statement](CppStatement.htm) when there is no
    obvious loop [variable](CppVariable.htm) \[6\]
-   In [C++11](Cpp11.htm), prefer a
    [range-for](CppRangeFor.htm)-statement to a for-statement when there
    is a choice \[4\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 18.12.1 :
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 84: 'Prefer algorithm calls to handwritten loops'
3.  [GCC page about C++0x
    support](http://gcc.gnu.org/projects/cxx0x.html)
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8.
    Advice. page 240: '\[3\] Prefer a range-for-statement to a
    for-statement when there is a choice'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8.
    Advice. page 240: '\[4\] Prefer a for-statement to a while-statement
    when there is an obvious loop variable'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8.
    Advice. page 240: '\[5\] Prefer a while-statement to a for-statement
    when there is no obvious loop variable'

 

 

 

 

 





 



