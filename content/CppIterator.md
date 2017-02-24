

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Iterator](CppIterator.htm)
============================================

 

[Iterators](CppIterator.htm) allow a uniform way to travel through all
[STL](CppStl.htm) [containers](CppContainer.htm).

 

 

 

 

 

[Example](CppExample.htm)
-------------------------

 

-   [Iterator example 1: basics](CppIteratorExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer using standard [algorithms](CppAlgorithm.htm), instead of
    crafting your own [for](CppFor.htm) loops \[1\]
-   Use [const](CppConst.htm) [iterators](CppIterator.htm) when you are
    not modifying the contents of a [container](CppContainer.htm)
    \[2,4\]
-   Prefer comparing [iterators](CppIterator.htm) with
    [operator!=](CppOperatorNotEqual.htm), instead of
    [operator&lt;](CppOperatorLess.htm) \[3\]
-   Use [auto](CppAuto.htm) to avoid verbosity and typos when you use
    [iterators](CppIterator.htm) \[5\]
-   Don't use [iterators](CppIterator.htm) into a resized
    [std::vector](CppVector.htm) or [std::deque](CppDeque.htm) \[6\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 1 guideline: 'Prefer reusing algorithms,
    particularly standard algorithms (e.g., for\_each), instead of
    crafting your own loops'.
2.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 1 guideline: 'Use const\_iterator when you
    are not modifying the contents of a container'.
3.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 1 guideline: 'Prefer comparing iterators
    with !=, not &lt;'.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[16\] Use const iterators where you don't need
    to modify the elements of a container'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[17\] Use auto to avoid verbosity and typos when
    you use iterators'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[21\] Don't use iterators into a resized vector
    or deque'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
