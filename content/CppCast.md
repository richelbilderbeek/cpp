# ([C++](Cpp.md)) [Cast](CppCast.md)

A [cast](CppCast.md) is used to convert one [data
type](CppDataType.md) to another. 

There are four [keywords](CppKeyword.md) for the different types of
[casts](CppCast.md):

1.  [static\_cast](CppStatic_cast.md): to cast related types, for
    example [int](CppInt.md) to [double](CppDouble.md)
2.  [dynamic\_cast](CppDynamic_cast.md): to cast between types in an
    [inheritance](CppInheritance.md) hierarchy, for example from the
    [base class](CppBaseClass.md) ChessPiece to its [derived
    class](CppDerivedClass.md) Pawn
3.  [const\_cast](CppConst_cast.md)
4.  [reinterpret\_cast](CppReinterpret_cast.md)

It is also possible to [cast](CppCast.md) [smart
pointers](CppSmartPointer.md):

-   [static\_pointer\_cast](CppStatic_pointer_cast.md)
-   [dynamic\_pointer\_cast](CppDynamic_pointer_cast.md)
-   [const\_pointer\_cast](CppConst_pointer_cast.md)
-   shared\_static\_cast (deprecated \[6\])
-   shared\_dynamic\_cast (deprecated \[6\])
-   shared\_polymorphic\_cast (deprecated \[6\])
-   shared\_polymorphic\_downcast (deprecated \[6\])

## [Advice](CppAdvice.md)

-   Avoid [casts](CppCast.md) [4,7]
-   Don't use C-style casts [1-2,5,9], but use one of the four C++ casting keywords instead [1-3,5,8,9].

## [References](CppReferences.md)

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 6.5.5: 'When explicit
    type conversion is necessary, prefer the more specific cast
    operators to the C-style cast'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 95:
    'Don't use C-style casts'.
3.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. 
    Section D.4. Guidelines, chapter 9, page 823: 'Consider avoiding 'cast' operators, especially to fundumental
    integral types; instead, make the conversion explicit'
4.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 183: 'Every possible measure should be
    taken to avoid type casting'
5.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 185: 'C++ style casts (const\_cast,
    reinterpret\_cast, and static\_cast) shall be used instead of the
    traditional C-style casts.'
6.  Comment in shared\_ptr.hpp (Boost version 1.49), line 536:
    'shared\_\*\_cast names are deprecated. Use \*\_pointer\_cast
    instead.'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[12\] Avoid explicit type conversions (casts)'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[13\] When explicit type conversion is
    necessary, prefer a named cast'
9.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 6.5: 'Do not use C-style casts'
