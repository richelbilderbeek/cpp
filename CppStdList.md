[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::list](CppList.htm)
=========================================

 

[std::list](CppList.htm) is an [STL](CppStl.htm)
[container](CppContainer.htm) implemented as a doubly-linked list.

 

[std::list](CppList.htm) is suitable for constant-time random-access
insertion and deletion at the cost of linear-time read and write.

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [std::list example 1: basics](CppListExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Insertion operators, such as insert() and push\_back() are often
    more efficient on a [std::vector](CppVector.htm) than on a
    [std::list](CppList.htm) \[1\]
-   A [std::list](CppList.htm) is relatively expensive to traverse \[2\]
-   A [std::list](CppList.htm) usually has a four-word-per-element
    memory overhead \[3\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[3\] Insertion operators, such as insert()
    and push\_back() are often more efficient on a vector than on a
    list'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 925: '\[28\] A list is relatively expensive to
    traverse'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 925: '\[29\] A list usually has a four-word-per-element
    memory overhead'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
