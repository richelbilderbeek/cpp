



 

 

 

 

 

([C++](Cpp.md)) [static array](CppArrayStatic.md)
===================================================

 

A [static array](CppArrayStatic.md) is an [array](CppArray.md) of
which the size is known at [compile time](CppCompileTime.md) (as
opposite of the [dynamically allocated arrays](CppArrayDynamic.md)).

 

Prefer a [std::vector](CppVector.md) over an [array](CppArray.md) by
default \[1-5\].

 

Take care not to write beyond the bounds of an [array](CppArray.md)
\[6\].

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {    //Create an array   int array[10];    //Set array values   for (int i=0; i!=10; ++i)    {     array[i] = i;   }    //Get array values   for (int i=0; i!=10; ++i)    {     std::cout << array[i] << '\n';   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[Static arrays](CppArrayStatic.md) cannot have a size of zero elements.
This is used for compile-time assertions
([BOOST\_STATIC\_ASSERT](CppBOOST_STATIC_ASSERT.md)).

 

 

 

 

 

### ![Boost](PicBoost.png) boost::array

 

The [Boost](CppBoost.md) supplies a class called boost::array, which
might be chosen over a std::vector when there is no need of resizing at
run-time.

 

 

 

 

 

How to determine a [static array](CppArrayStatic.md)'s size?
-------------------------------------------------------------

 

This can be done from the array's pointer and the size of the zero-th
element:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  int main() {   const int staticSize = 100;   int myArray[staticSize];   const int size = sizeof(myArray) / sizeof(myArray[0]);   assert(size==staticSize); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 Chapter 5.8.4 'Use
    vector and valarray rather than built-in (C-style) arrays'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md) . C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    76: 'Use vector by default. Otherwise choose an appropriate
    container'
3.  [Marshall Cline](CppMarshallCline.md), [Greg
    Lomow](CppGregLomow.md) and [Mike Girou](CppMikeGirou.md).
    C++ FAQs. ISBN: 0-201-3098301, FAQ 28.02: 'Are arrays good or evil?'
    (Answer: 'Arrays are evil'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 Chapter C.14.11 'Prefer
    vector over array'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 5.8.2: 'Take care not to
    write beyond the bounds of an array'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 5.8.2:
    'Take care not to write beyond the bounds of an array'.

 

 

 

 

 





 



