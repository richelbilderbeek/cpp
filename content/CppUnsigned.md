

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [unsigned](CppUnsigned.htm)
============================================

 

[unsigned](CppUnsigned.htm) is a [keyword](CppKeyword.htm) that modifies
a [data type](CppDataType.htm) to hold only positive values.

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [unsigned example 1: one minus two](CppUnsignedExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer plain [char](CppChar.htm) over [signed](CppSigned.htm)
    [char](CppChar.htm) and [unsigned](CppUnsigned.htm)
    [char](CppChar.htm) \[8\]
-   Avoid using [unsigned](CppUnsigned.htm) in a [class](CppClass.htm)
    [interface](CppInterface.htm); use [int](CppInt.htm) instead \[1\]
-   Consider avoiding [unsigned](CppUnsigned.htm) \[2\] or
    [unsigned](CppUnsigned.htm) arithmetic \[3\] as using an
    [unsigned](CppUnsigned.htm) instead of an [int](CppInt.htm) to gain
    one more [bit](CppBit.htm) to represent positive integers is almost
    never a good idea \[4\]
-   If you do use [unsigned](CppUnsigned.htm), always check your ranges
    \[6\] (note that \[6\] is in favor of using
    [unsigned](CppUnsigned.htm))
-   View [signed](CppSigned.htm) to [unsigned](CppUnsigned.htm) and
    [unsigned](CppUnsigned.htm) to [signed](CppSigned.htm)
    [conversions](CppConvert.htm) with suspicion \[5,7,9\]

 

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.2.2: 'Avoid using unsigned in
    the interface; use int instead'
2.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 163: 'Unsigned arithmetic shall not be
    used.'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 4.10
    'Advice', item 18: 'Avoid unsigned arithmetic'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 4.4
    'Integer types': 'Using an unsigned instead of an int to gain one
    more bit to represent positive integers is almost never a good idea.
    Attempts to ensure that some values are positive by declaring
    variables unsigned will typically be defeated by implicit conversion
    rules'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 4.10
    'Advice', item 19: 'View signed to unsigned and unsigned to signed
    conversions with suspicion'
6.  [C++ FAQ
    Lite](http://www.parashift.com/c++-faq/numeric-literal-suffixes.html).
    \[29.12\] What's the point of the L, U and f suffixes on numeric
    literals?: 'It's probably a good idea to use unsigned integers for
    variables that are always &gt;= 0. \[...\] at least if you are
    careful to check your ranges'
7.  [C++ FAQ
    Lite](http://www.parashift.com/c++-faq/numeric-literal-suffixes.html).
    \[29.12\] What's the point of the L, U and f suffixes on numeric
    literals?: 'If you end up using unsigned variables, it is generally
    a good idea to force your numeric literals to also be unsigned'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[9\] Prefer plain char over signed char and
    unsigned char'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[10\] Beware of conversions between signed and
    unsigned types'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
