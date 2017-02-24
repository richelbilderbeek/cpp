



 

 

 

 

 

([C++](Cpp.htm)) [magic constant](CppMagicConstant.htm)
=======================================================

 

A [magic constant](CppMagicConstant.htm) is the use of a
[literal](CppLiteral.htm) without mentioning where that
[literal](CppLiteral.htm) came from.

 

For example, in the code below, 12 is a [magic
constant](CppMagicConstant.htm) that occurs twice. How is this 12
determined? Is it the number of notes per chord, or is it a dozen? And
if the upper 12 is changed, must the lower 12 be changed as well?

 

  ---------------------------------------------------------------------------------------------------------
  ` int main() {   for (int i=0; i!=12; ++i)   {     //   }   for (int i=0; i!=12; ++i)   {     //   } }`
  ---------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Avoid [magic constants](CppMagicConstant.htm) \[1,3\]
-   Define symbolic constants to avoid [magic
    constants](CppMagicConstant.htm) \[2\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[6\] Avoid "magic constants"'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 10.6.
    Advice. page 271: '\[6\] Define symbolic constants to avoid "magic
    constants"'
3.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 17: 'Avoid magic numbers'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
