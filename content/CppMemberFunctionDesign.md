



 

 

 

 

 

([C++](Cpp.md)) [member function design](CppMemberFunctionDesign.md)
======================================================================

 

[member function design](CppMemberFunctionDesign.md) is the design of
'good' [member functions](CppMemberFunction.md).

 

 

 

 

 

General
-------

 

-   Follow a good [function design](CppFunctionDesign.md). Note: many
    points of [advice](CppAdvice.md)!
-   Prefer writing short [member functions](CppMemberFunction.md) \[3\]
    (and [helper functions](CppHelperFunction.md) \[18-20\]).
-   Attempt to make your names so clear that comments are unnecessary
    \[24\]

 

 

 

 

 

[Member function](CppMemberFunction.md) or [friend](CppFriend.md)/non-[friend](CppFriend.htm) [helper function](CppHelperFunction.htm)?
-----------------------------------------------------------------------------------------------------------------------------------------

 

-   Prefer non-[friend](CppFriend.md) [helper
    functions](CppHelperFunction.md) to [member
    functions](CppMemberFunction.md) \[4,5\]
-   Make [&gt;&gt;](CppOperatorStreamIn.md) and
    [operator&lt;&lt;](CppOperatorStreamOut.md)\
    a [befriended](CppFriend.md) [helper
    function](CppHelperFunction.md) \[1\]
-   Make a [function](CppFunction.md) that needs type conversions on
    its leftmost argument, a [befriended](CppFriend.md) [helper
    function](CppHelperFunction.md) \[1\]
-   Make [functions](CppFunction.md) that can be implemented using the
    ([public](CppPublic.md)) [interface](CppInterface.md) a [helper
    functions](CppHelperFunction.md) \[1\]
-   Make a [function](CppFunction.md) a [member
    function](CppMemberFunction.md) only if it needs direct access to
    the representation of a [class](CppClass.md), else make it a
    [helper function](CppHelperFunction.md) \[10\]
-   The [operators](CppOperator.md) = () \[\] and -&gt; must be [member
    functions](CppMemberFunction.md) \[1\]
-   Use [helper functions](CppHelperFunction.md) for symmetric
    [operators](CppOperator.md) \[21\], for example
    [operator+](CppOperatorPlus) and [operator-](CppOperatorPlus)
-   Use [member functions](CppMemberFunction.md) to express
    [operators](CppOperator.md) that require an [lvalue](CppLvalue.md)
    as their left-hand operand \[22\], for example
    [operator+=](CppOperatorPlusAssign.md)

 

 

 

 

 

[The Big Four](CppBigFour.md)
------------------------------

 

-   Design [constructors](CppContructor.md), assignments, and the
    [destructor](CppDestructor.md) as a matched set of operations
    \[13\]
-   Define a [constructor](CppConstructor.md) to handle initialization
    of objects \[6\]
-   By default declare single-[argument](CppArgument.md)
    [constructors](CppConstructor.md) [explicit](CppExplicit.md) \[7\]
    Make [constructors](CppConstructor.md) [explicit](CppExplicit.md)
    whenever possible \[8\]
-   If a [class](CppClass.md) is a [container](CppContainer.md), give
    it an [initializer-list](CppInitializerList.md)
    [constructor](CppContructor.md) \[15\]
-   If a [class](CppClass.md) has a [reference](CppReference.md)
    [member variable](CppMemberVariable.md), it probably needs a [copy
    constructor](CppCopyConstructor.md) and [copy assignment
    operator](CppCopyAssignmentOperator.md))

 

 

 

 

 

Regular [member functions](CppMemberFunction.md)
-------------------------------------------------

 

-   Use function overloading and default arguments to create an
    intuitive, easy-to-use interface \[24\]
-   Provide setters and getters for a [member
    variable](CppMemberVariable.md) only if the fundamental semantics
    of a class requires them \[23\]
-   [Avoid duplication in const and non-const member
    functions](CppAvoidDuplicationInConstAndNonConstMemberFunctions.md)
    \[2\]
-   Make [functions](CppFunction.md) that should behave virtually a
    virtual [member functions](CppMemberFunction.md) \[1\]
-   If a [class](CppClass.md) has a [virtual](CppVirtual.md) [member
    functions](CppMemberFunction.md), it needs a
    [virtual](CppVirtual.md) [destructor](CppDestructor.md) \[14\]
-   Declare a [member function](CppMemberFunction.md) that does not
    modify the state of its object a [const member
    function](CppConstMemberFunction.md) \[9,11\]
-   Make a function that needs access to the representation of a class
    but needn't be called for a specific object a [static member
    function](CppStaticMemberFunction.md) \[12\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2. Item 20: Class mechanics.
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. Item 3, paragraph 'Avoid duplication in const
    and non-const member functions'.
3.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 1: 'Any one function (or method) will
    contain no more than 200 logical source lines of code.'
4.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 23: Prefer non-member non-friend functions
    to member functions.
5.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 44: 'Prefer writing nonmember nonfriend functions'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[4\] Define a constructor to handle
    initialization of objects'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[5\] By default declare single-argument
    constructors explicit'
8.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2. Item 20, page 71, top guideline :'Watch out for
    hidden temporaries created by implicit conversions. One good way to
    avoid this is to make constructors explicit when possible, and
    avoiding writing conversion operators'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[6\] Declare a member function that does not
    modify the state of its object const'
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[8\] Make a function a member only if it needs
    direct access to the representation of a class'
11. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[10\] Make a member function that doesn't modify
    the value of an object a const member function'
12. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[11\] Make a function that needs access to the
    representation of a class but needn't be called for a specific
    object a static member function'
13. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[1\] Design constructors, assignments, and the
    destructor as a matched set of operations'
14. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[4\] If a class has a virtual function, it needs
    a virtual destructor'
15. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[8\] If a class is a container, give it an
    initializer-list constructor'
16. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[10\] If a class has a reference member, it
    probably needs copy operations (copy constructor and copy
    assignment)'
17. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice, page 547: '\[2\] Redefine or prohib '
18. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 20:
    'Avoid long functions. Avoid deep nesting'
19. Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 1: 'Any one function (or method) will
    contain no more than 200 logical source lines of code.'
20. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[3\] Keep functions short'
21. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[8\] Use nonmember functions for symmetric
    operators'
22. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[9\] Use member functions to express operators
    that require an lvalue as their left-hand operand'
23. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[11\] Provide "set() and get() functions" for a
    data member only if the fundamental semantics of a class requires
    them'
24. [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Chapter B:
    Programming Guidelines. Item 7: 'When you create a class, make your
    names as clear as possible. Your goal should be to make the client
    programmer’s interface conceptually simple. Attempt to make your
    names so clear that comments are unnecessary. To this end, use
    function overloading and default arguments to create an intuitive,
    easy-to-use interface.'

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
