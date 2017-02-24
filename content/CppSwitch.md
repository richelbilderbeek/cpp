
 

 

 

 

 

([C++](Cpp.md)) [switch](CppSwitch.md)
========================================

 

[switch](CppSwitch.md) is a [keyword](CppKeyword.md) to perform a kind
of multiple [if](CppIf.md) statements on a certain value.
[case](CppCase.md) determines which values can be switch on. If there
is no named value to [switch](CppSwitch.md) on,
[default](CppDefault.md) can be used optionally.

 

 

 

 

 

[Example](CppExample.md)
-------------------------

 

-   [switch example 1: basics](CppSwitchExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer a [switch](CppSwitch.md)-[statement](CppStatement.md) to an
    [if](CppIf.md)-[statement](CppStatement.md) when there is a choice
    \[1\]
-   Prefer [virtual](CppVirtual.md) functions to repeated
    [switch](CppSwitch.md)-statements based on [typeid](CppTypeid.md)
    or [dynamic\_cast](CppDynamic_cast.md) \[2\]

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8.
    Advice, page 240: '\[2\] Prefer a switch-statement to an
    if-statement when there is a choice'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[10\] Prefer virtual functions to repeated
    switch-statements based on typeid or dynamic\_cast'

 

 

 

 

 

 

