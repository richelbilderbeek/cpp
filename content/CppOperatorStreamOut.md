



 

 

 

 

 

([C++](Cpp.htm)) [operator&lt;&lt;](CppOperatorStreamOut.htm)
=============================================================

 

[operator&lt;&lt;](CppOperatorStreamOut.htm) (pronounced as 'stream out
operator') is an [operator](CppOperator.htm) to sending data to a
[stream](CppStream.htm). Use [operator&gt;&gt;](CppOperatorStreamIn.htm)
to read data from a [stream](CppStream.htm).

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [Hello World](CppHelloWorld.htm)
-   [operator &lt;&lt; example 1:
    overloading](CppOperatorStreamOutExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [overloading](CppOverload.htm)
    [operator&lt;&lt;](CppOperatorStreamOut.htm) with a free
    [function](CppFunction.htm) \[1\]
-   Note to self: prefer [overloading](CppOverload.htm)
    [operator&lt;&lt;](CppOperatorStreamOut.htm) over a 'ToStr' [member
    function](CppMemberFunction.htm), because a [stream](CppStream.htm)
    can be more flexibly manipulated (consider streaming a
    [std::setprecision](CppStdSetprecision.htm) before streaming a
    [class](CppClass.htm) [instance](CppInstance.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN: 0-201-61562-2.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
