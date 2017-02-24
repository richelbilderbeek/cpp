



 

 

 

 

 

([C++](Cpp.htm)) [explicit](CppExplicit.htm)
============================================

 

[explicit](CppExplicit.htm) is a [keyword](CppKeyword.htm) to disable
converting [constructors](CppConstructor.htm).

 

 

 

 

 

Example
-------

 

The example below will not [compile](CppCompile.htm), due to the
[explicit](CppExplicit.htm) [keyword](CppKeyword.htm) written in the
[constructor](CppConstructor.htm) of Test:

 

  -------------------------------------------------------------------------------------
  ` struct Test {   explicit Test(const int x) {} };  int main() {   Test t_i = 0; }`
  -------------------------------------------------------------------------------------

 

The line in [main](CppMain.htm) needs to call a converting
[constructor](CppConstructor.htm), because an [int](CppInt.htm) is not a
Test (that is: they are different [data types](CppDataType.htm)).

 

-   [Download the C++ Qt Creator project of this
    example (zip)](CppExplicit.zip)

 

 

 

 

[advice](CppAdvice.htm)
-----------------------

 

-   Make [constructors](CppConstructor.htm) [explicit](CppExplicit.htm)
    whenever possible \[1\]
-   By default declare single-[argument](CppArgument.htm)
    [constructors](CppConstructor.htm) [explicit](CppExplicit.htm) \[2\]

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN: 0-201-61562-2. Item 20, page 71, top guideline :'Watch out for
    hidden temporaries created by implicit conversions. One good way to
    avoid this is to make constructors explicit when possible, and
    avoiding writing conversion operators'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[5\] By default declare single-argument
    constructors explicit'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
