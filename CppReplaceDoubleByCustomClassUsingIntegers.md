[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Will it pay off to replace the use of doubles by a custom class using integers?](CppReplaceDoubleByCustomClassUsingIntegers.htm)
==================================================================================================================================================

 

[Will it pay off to replace the use of doubles by a custom class using
integers?](CppReplaceDoubleByCustomClassUsingIntegers.htm) is an
[FAQ](CppFaq.htm) about the expected gains of replacing floating point
(that is [double](CppDouble.htm)) calculations by using a custom
[class](CppClass.htm) that uses [integers](CppInt.htm) to emulate a
floating point.

 

I posted the original question
[here](http://www.cplusplus.com/forum/general/103139).

 

Thanks to [MiiNiPaa](http://www.cplusplus.com/user/MiiNiPaa) for his
answer:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` No  Fixed point class probably will: for example it is more profitable to store money as integer cents (1250) as opposed to fraction dollars (12.5)  Though floating point multiplication is somewhat slower (up to 5 times), it will not make any difference in your program if you don't only do simple arithmetic operations. So in most cases loss of precision in FP values creates more problems than it's speed.`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Additionally, [MiiNiPaa](http://www.cplusplus.com/user/MiiNiPaa) replied
with a link to
[stackoverflow.com](http://stackoverflow.com/questions/5069489/performance-of-built-in-types-char-vs-short-vs-int-vs-float-vs-double).
The reactions varied from repeating that in general integer operations
are faster than floating point math. [stephen
canon](http://stackoverflow.com/users/142434/stephen-canon) supplied a
link to [agner.com](http://www.agner.org/optimize), of which the article
'Optimizing software in C++: An optimization guide for Windows, Linux
and Mac platforms' gives many pinpointers. For example, it states for
integers (section 'Integer operators',page 30):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Integer operations are generally very fast. Simple integer operations such as addition, subtraction, comparison, bit operations and shift operations take only one clock cycle on most microprocessors. Multiplication and division take longer time. Integer multiplication takes 11 clock cycles on Pentium 4 processors, and 3 - 4 clock cycles on most other microprocessors. Integer division takes 40 - 80 clock cycles, depending on the microprocessor`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

And for doubles (section 'Floating point variables and operators',page
32):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Floating point addition takes 3 - 6 clock cycles, depending on the microprocessor. Multiplication takes 4 - 8 clock cycles. Division takes 14 - 45 clock cycles.`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This makes me conclude that int is faster for simpler (addition,
comparison) operations only.

 

Note that the conversion between integer and double is especially
costly, as [agner.com](http://www.agner.org/optimize) the article
'Optimizing software in C++: An optimization guide for Windows, Linux
and Mac platforms' states (section 'Float to integer conversion',page
41):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Conversion of a floating point number to an integer takes a very long time unless the SSE2 or later instruction set is enabled. Typically, the conversion takes 50 - 100 clock cycles.`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Conclusion
----------

 

Back to the original question: Will it pay off to replace the use of
doubles by a custom class using integers?

 

As such a custom class uses two integers, my guess will be: no.

 

To draw a conclusion, use a [profiler](CppProfiler.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
