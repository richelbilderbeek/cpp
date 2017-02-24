



 

 

 

 

 

([C++](Cpp.htm)) [dynamically allocated array](CppArrayDynamic.htm)
===================================================================

 

A [dynamically allocated array](CppArrayDynamic.htm) is an
[array](CppArray.htm) of which the size is not known at [compile
time](CppCompileTime.htm) (as opposite of the [static
arrays](CppArrayStatic.htm)).

 

Prefer a [std::vector](CppVector.htm) to [dynamically allocated
arrays](CppArrayDynamic.htm) \[1-5\].

 

A [dynamically allocated array](CppArrayDynamic.htm) is created using
[new](CppNew.htm) and must be [delete\[\]](CppDeleteArray.htm)-ed.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const int randomSize = std::rand() % 100;   int * const myArray = new int[randomSize];   delete[] myArray; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
