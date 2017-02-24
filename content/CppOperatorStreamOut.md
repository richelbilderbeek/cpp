
 

 

 

 

 

([C++](Cpp.md)) [operator&lt;&lt;](CppOperatorStreamOut.md)
=============================================================

 

[operator&lt;&lt;](CppOperatorStreamOut.md) (pronounced as 'stream out
operator') is an [operator](CppOperator.md) to sending data to a
[stream](CppStream.md). Use [operator&gt;&gt;](CppOperatorStreamIn.md)
to read data from a [stream](CppStream.md).

 

 

 

 

 

[Examples](CppExample.md)
--------------------------

 

-   [Hello World](CppHelloWorld.md)
-   [operator &lt;&lt; example 1:
    overloading](CppOperatorStreamOutExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [overloading](CppOverload.md)
    [operator&lt;&lt;](CppOperatorStreamOut.md) with a free
    [function](CppFunction.md) \[1\]
-   Note to self: prefer [overloading](CppOverload.md)
    [operator&lt;&lt;](CppOperatorStreamOut.md) over a 'ToStr' [member
    function](CppMemberFunction.md), because a [stream](CppStream.md)
    can be more flexibly manipulated (consider streaming a
    [std::setprecision](CppStdSetprecision.md) before streaming a
    [class](CppClass.md) [instance](CppInstance.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2.

 

 

 

 

 

 

