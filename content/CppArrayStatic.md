



 

 

 

 

 

([C++](Cpp.htm)) [static array](CppArrayStatic.htm)
===================================================

 

A [static array](CppArrayStatic.htm) is an [array](CppArray.htm) of
which the size is known at [compile time](CppCompileTime.htm) (as
opposite of the [dynamically allocated arrays](CppArrayDynamic.htm)).

 

Prefer a [std::vector](CppVector.htm) over an [array](CppArray.htm) by
default \[1-5\].

 

Take care not to write beyond the bounds of an [array](CppArray.htm)
\[6\].

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {    //Create an array   int array[10];    //Set array values   for (int i=0; i!=10; ++i)    {     array[i] = i;   }    //Get array values   for (int i=0; i!=10; ++i)    {     std::cout << array[i] << '\n';   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[Static arrays](CppArrayStatic.htm) cannot have a size of zero elements.
This is used for compile-time assertions
([BOOST\_STATIC\_ASSERT](CppBOOST_STATIC_ASSERT.htm)).

 

 

 

 

 

### ![Boost](PicBoost.png) boost::array

 

The [Boost](CppBoost.htm) supplies a class called boost::array, which
might be chosen over a std::vector when there is no need of resizing at
run-time.

 

 

 

 

 

How to determine a [static array](CppArrayStatic.htm)'s size?
-------------------------------------------------------------

 

This can be done from the array's pointer and the size of the zero-th
element:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  int main() {   const int staticSize = 100;   int myArray[staticSize];   const int size = sizeof(myArray) / sizeof(myArray[0]);   assert(size==staticSize); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 Chapter 5.8.4 'Use
    vector and valarray rather than built-in (C-style) arrays'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm) . C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    76: 'Use vector by default. Otherwise choose an appropriate
    container'
3.  [Marshall Cline](CppMarshallCline.htm), [Greg
    Lomow](CppGregLomow.htm) and [Mike Girou](CppMikeGirou.htm).
    C++ FAQs. ISBN: 0-201-3098301, FAQ 28.02: 'Are arrays good or evil?'
    (Answer: 'Arrays are evil'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 Chapter C.14.11 'Prefer
    vector over array'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 5.8.2: 'Take care not to
    write beyond the bounds of an array'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 5.8.2:
    'Take care not to write beyond the bounds of an array'.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
