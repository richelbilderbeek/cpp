



 

 

 

 

 

([C++](Cpp.htm)) [Cast](CppCast.htm)
====================================

 

A [cast](CppCast.htm) is used to convert one [data
type](CppDataType.htm) to another. Avoid [casts](CppCast.htm) \[4,7\].
Don't use C-style casts \[1-2,5\], but use one of the four C++ casting
keywords instead \[1-3,5,8\].

 

There are four [keywords](CppKeyword.htm) for the different types of
[casts](CppCast.htm):

1.  [static\_cast](CppStatic_cast.htm): to cast related types, for
    example [int](CppInt.htm) to [double](CppDouble.htm)
2.  [dynamic\_cast](CppDynamic_cast.htm): to cast between types in an
    [inheritance](CppInheritance.htm) hierarchy, for example from the
    [base class](CppBaseClass.htm) ChessPiece to its [derived
    class](CppDerivedClass.htm) Pawn
3.  [const\_cast](CppConst_cast.htm)
4.  [reinterpret\_cast](CppReinterpret_cast.htm)

 

It is also possible to [cast](CppCast.htm) [smart
pointers](CppSmartPointer.htm):

-   [static\_pointer\_cast](CppStatic_pointer_cast.htm)
-   [dynamic\_pointer\_cast](CppDynamic_pointer_cast.htm)
-   [const\_pointer\_cast](CppConst_pointer_cast.htm)
-   shared\_static\_cast (deprecated \[6\])
-   shared\_dynamic\_cast (deprecated \[6\])
-   shared\_polymorphic\_cast (deprecated \[6\])
-   shared\_polymorphic\_downcast (deprecated \[6\])

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 6.5.5: 'When explicit
    type conversion is necessary, prefer the more specific cast
    operators to the C-style cast'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 95:
    'Don't use C-style casts'.
3.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section D.4. Guidelines, chapter 9, page
    823: 'Consider avoiding 'cast' operators, especially to fundumental
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
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[12\] Avoid explicit type conversions (casts)'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[13\] When explicit type conversion is
    necessary, prefer a named cast'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
