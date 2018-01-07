
 

 

 

 

 

([C++](Cpp.md)) [dynamically allocated array](CppArrayDynamic.md)
===================================================================

 

A [dynamically allocated array](CppArrayDynamic.md) is an
[array](CppArray.md) of which the size is not known at [compile
time](CppCompileTime.md) (as opposite of the [static
arrays](CppArrayStatic.md)).

 

Prefer a [std::vector](CppStdVector.md) to [dynamically allocated
arrays](CppArrayDynamic.md) \[1-5\].

 

A [dynamically allocated array](CppArrayDynamic.md) is created using
[new](CppNew.md) and must be [delete\[\]](CppDeleteArray.md)-ed.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const int randomSize = std::rand() % 100;   int * const myArray = new int[randomSize];   delete[] myArray; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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

 

 

 

 

 

 

