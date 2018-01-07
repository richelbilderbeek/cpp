
 

 

 

 

 

([C++](Cpp.md)) [std::list](CppList.md)
=========================================

 

[std::list](CppList.md) is an [STL](CppStl.md)
[container](CppContainer.md) implemented as a doubly-linked list.

 

[std::list](CppList.md) is suitable for constant-time random-access
insertion and deletion at the cost of linear-time read and write.

 

 

 

 

 

[Examples](CppExample.md)
--------------------------

 

-   [std::list example 1: basics](CppListExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Insertion operators, such as insert() and push\_back() are often
    more efficient on a [std::vector](CppStdVector.md) than on a
    [std::list](CppList.md) \[1\]
-   A [std::list](CppList.md) is relatively expensive to traverse \[2\]
-   A [std::list](CppList.md) usually has a four-word-per-element
    memory overhead \[3\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[3\] Insertion operators, such as insert()
    and push\_back() are often more efficient on a vector than on a
    list'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 925: '\[28\] A list is relatively expensive to
    traverse'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 925: '\[29\] A list usually has a four-word-per-element
    memory overhead'

 

 

 

 

 

 

