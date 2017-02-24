
 

 

 

 

 

([C++](Cpp.md)) [explicit](CppExplicit.md)
============================================

 

[explicit](CppExplicit.md) is a [keyword](CppKeyword.md) to disable
converting [constructors](CppConstructor.md).

 

 

 

 

 

Example
-------

 

The example below will not [compile](CppCompile.md), due to the
[explicit](CppExplicit.md) [keyword](CppKeyword.md) written in the
[constructor](CppConstructor.md) of Test:

 

  -------------------------------------------------------------------------------------
  ` struct Test {   explicit Test(const int x) {} };  int main() {   Test t_i = 0; }`
  -------------------------------------------------------------------------------------

 

The line in [main](CppMain.md) needs to call a converting
[constructor](CppConstructor.md), because an [int](CppInt.md) is not a
Test (that is: they are different [data types](CppDataType.md)).

 

-   [Download the C++ Qt Creator project of this
    example (zip)](CppExplicit.zip)

 

 

 

 

[advice](CppAdvice.md)
-----------------------

 

-   Make [constructors](CppConstructor.md) [explicit](CppExplicit.md)
    whenever possible \[1\]
-   By default declare single-[argument](CppArgument.md)
    [constructors](CppConstructor.md) [explicit](CppExplicit.md) \[2\]

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2. Item 20, page 71, top guideline :'Watch out for
    hidden temporaries created by implicit conversions. One good way to
    avoid this is to make constructors explicit when possible, and
    avoiding writing conversion operators'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[5\] By default declare single-argument
    constructors explicit'

 

 

 

 

 

 

