[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [constructor](CppConstructor.htm)
==================================================

 

The [constructor](CppConstructor.htm) is the [class](CppClass.htm)
element called when a [class](CppClass.htm) is created. The
[class](CppClass.htm) element that is called when a
[class](CppClass.htm) goes out of [scope](CppScope.htm) is called the
[destructor](CppDestructor.htm).

 

'A [constructor](CppConstructor.htm) is a [function](CppFunction.htm)
which initializes an [object](CppObject.htm).' \[18\]

 

There are multiple types of [constructors](CppConstructor.htm):

-   [copy constructor](CppCopyConstructor.htm)
-   [default constructor](CppDefaultConstructor.htm)
-   [move constructor](CppMoveConstructor.htm)

 

A [class](CppClass.htm) can have multiple
[constructors](CppConstructor.htm). [Constructors](CppConstructor.htm)
can have zero to multiple [arguments](CppArgument.htm).
[Delegation](CppDelegation.htm) is the technique of
[constructors](CppConstructor.htm) calling each other. If a
[class](CppClass.htm) does not have a [constructor](CppConstructor.htm),
it can be [initialized](CppInitialize.htm) by [memberwise
initialization](CppMemberwiseInitialization.htm) \[13\].

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Design [constructors](CppContructor.htm), assignments, and the
    [destructor](CppDestructor.htm) as a matched set of operations
    \[10\]
-   Define a [constructor](CppConstructor.htm) to handle initialization
    of objects \[8\]
-   Let a [constructor](CppConstructor.htm) establish an
    [invariant](CppInvariant.htm) \[6,11\], and [throw](CppThrow.htm) if
    it cannot \[6\]
-   Ensure that an [object](CppObject.htm) is fully initialized before
    the client code invokes the [object](CppObject.htm)'s [member
    functions](CppMemberFunction.htm) \[19\]
-   By default declare single-[argument](CppArgument.htm)
    [constructors](CppConstructor.htm) [explicit](CppExplicit.htm) \[9\]
-   Be sure that every resource acquired in a
    [constructor](CppConstructor.htm) is released when
    [throwing](CppThrow.htm) an [exception](CppException.htm) in that
    [constructor](CppConstructor.htm) \[7\]
-   Avoid calling [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm) in
    [constructors](CppConstructor.htm) and
    [destructors](CppDestructor.htm) \[2\]
-   Don't call [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm) in
    [constructors](CppConstructor.htm) and
    [destructors](CppDestructor.htm) \[17\]
-   Prefer initialization to assignment in
    [constructors](CppConstructor.htm) \[1\]. In [C++98](Cpp11.htm), use
    the T(e) notation for contruction \[1\]. In [C++11](Cpp11.htm), use
    the T{e} notation for contruction \[5\]
-   If a [constructor](CppConstructor.htm) acquires a resource, its
    class needs a [destructor](CppDestructor.htm) to release the
    resource \[12\]
-   Give a [class](CppClass.htm) a [default
    constructor](CppDefaultConstructor.htm) if and only if there is a
    "natural" default value \[15\]
-   If a [class](CppClass.htm) is a [container](CppContainer.htm), give
    it an initializer-list [constructor](CppContructor.htm) \[14\]
-   An [abstract class](CppAbstractClass.htm) typically doesn't need a
    [constructor](CppConstructor.htm) \[16\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 48: 'Prefer initialization to assignment in constructors'
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 49: 'Avoid calling virtual functions in constructors and
    destructors'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 19,
    1.3.2 'Advice', item 1: 'Use constructors to establish invariants'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 19,
    1.3.2 'Advice', item 2: 'Use constructor/destructor pairs to
    simplify resource management'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[11\] Use the T{e} notation for contruction'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[11\] Let a constructor establish an invariant,
    and throw if it cannot'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[13\] Be sure that every resource acquired in a
    constructor is released when throwing an exception in that
    constructor'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[4\] Define a constructor to handle
    initialization of objects'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[5\] By default declare single-argument
    constructors explicit'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[1\] Design constructors, assignments, and the
    destructor as a matched set of operations'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[2\] Use a constructor to establish an invariant
    for a class'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[3\] If a constructor acquires a resource, its
    class needs a destructor to release the resource'
13. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[5\] If a class does not have a constructor, it
    can be initialized by memberwise initialization'
14. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[8\] If a class is a container, give it an
    initializer-list constructor'
15. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice, page 525: '\[7\] Give a class a default constructor if and
    only if there is a "natural" default value'
16. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[9\] An abstract class typically doesn't need a
    constructor'
17. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[7\] Don't call virtual functions during
    construction and destruction'
18. Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. 4.3.10: 'A constructor is a function which
    initializes an object.'
19. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.5, Software Engineering
    Observation 3.2. page 54: 'Data members can be initialized in a
    constructor, or their values may be set later after the object
    is created. However, it's a good software engineering practice to
    ensure that an object is fully initialized before the client code
    invokes the object's member functions. You should not rely on the
    client code to ensure that an object gets initialized properly.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
