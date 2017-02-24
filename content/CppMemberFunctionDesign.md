



 

 

 

 

 

([C++](Cpp.htm)) [member function design](CppMemberFunctionDesign.htm)
======================================================================

 

[member function design](CppMemberFunctionDesign.htm) is the design of
'good' [member functions](CppMemberFunction.htm).

 

 

 

 

 

General
-------

 

-   Follow a good [function design](CppFunctionDesign.htm). Note: many
    points of [advice](CppAdvice.htm)!
-   Prefer writing short [member functions](CppMemberFunction.htm) \[3\]
    (and [helper functions](CppHelperFunction.htm) \[18-20\]).
-   Attempt to make your names so clear that comments are unnecessary
    \[24\]

 

 

 

 

 

[Member function](CppMemberFunction.htm) or [friend](CppFriend.htm)/non-[friend](CppFriend.htm) [helper function](CppHelperFunction.htm)?
-----------------------------------------------------------------------------------------------------------------------------------------

 

-   Prefer non-[friend](CppFriend.htm) [helper
    functions](CppHelperFunction.htm) to [member
    functions](CppMemberFunction.htm) \[4,5\]
-   Make [&gt;&gt;](CppOperatorStreamIn.htm) and
    [operator&lt;&lt;](CppOperatorStreamOut.htm)\
    a [befriended](CppFriend.htm) [helper
    function](CppHelperFunction.htm) \[1\]
-   Make a [function](CppFunction.htm) that needs type conversions on
    its leftmost argument, a [befriended](CppFriend.htm) [helper
    function](CppHelperFunction.htm) \[1\]
-   Make [functions](CppFunction.htm) that can be implemented using the
    ([public](CppPublic.htm)) [interface](CppInterface.htm) a [helper
    functions](CppHelperFunction.htm) \[1\]
-   Make a [function](CppFunction.htm) a [member
    function](CppMemberFunction.htm) only if it needs direct access to
    the representation of a [class](CppClass.htm), else make it a
    [helper function](CppHelperFunction.htm) \[10\]
-   The [operators](CppOperator.htm) = () \[\] and -&gt; must be [member
    functions](CppMemberFunction.htm) \[1\]
-   Use [helper functions](CppHelperFunction.htm) for symmetric
    [operators](CppOperator.htm) \[21\], for example
    [operator+](CppOperatorPlus) and [operator-](CppOperatorPlus)
-   Use [member functions](CppMemberFunction.htm) to express
    [operators](CppOperator.htm) that require an [lvalue](CppLvalue.htm)
    as their left-hand operand \[22\], for example
    [operator+=](CppOperatorPlusAssign.htm)

 

 

 

 

 

[The Big Four](CppBigFour.htm)
------------------------------

 

-   Design [constructors](CppContructor.htm), assignments, and the
    [destructor](CppDestructor.htm) as a matched set of operations
    \[13\]
-   Define a [constructor](CppConstructor.htm) to handle initialization
    of objects \[6\]
-   By default declare single-[argument](CppArgument.htm)
    [constructors](CppConstructor.htm) [explicit](CppExplicit.htm) \[7\]
    Make [constructors](CppConstructor.htm) [explicit](CppExplicit.htm)
    whenever possible \[8\]
-   If a [class](CppClass.htm) is a [container](CppContainer.htm), give
    it an [initializer-list](CppInitializerList.htm)
    [constructor](CppContructor.htm) \[15\]
-   If a [class](CppClass.htm) has a [reference](CppReference.htm)
    [member variable](CppMemberVariable.htm), it probably needs a [copy
    constructor](CppCopyConstructor.htm) and [copy assignment
    operator](CppCopyAssignmentOperator.htm))

 

 

 

 

 

Regular [member functions](CppMemberFunction.htm)
-------------------------------------------------

 

-   Use function overloading and default arguments to create an
    intuitive, easy-to-use interface \[24\]
-   Provide setters and getters for a [member
    variable](CppMemberVariable.htm) only if the fundamental semantics
    of a class requires them \[23\]
-   [Avoid duplication in const and non-const member
    functions](CppAvoidDuplicationInConstAndNonConstMemberFunctions.htm)
    \[2\]
-   Make [functions](CppFunction.htm) that should behave virtually a
    virtual [member functions](CppMemberFunction.htm) \[1\]
-   If a [class](CppClass.htm) has a [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm), it needs a
    [virtual](CppVirtual.htm) [destructor](CppDestructor.htm) \[14\]
-   Declare a [member function](CppMemberFunction.htm) that does not
    modify the state of its object a [const member
    function](CppConstMemberFunction.htm) \[9,11\]
-   Make a function that needs access to the representation of a class
    but needn't be called for a specific object a [static member
    function](CppStaticMemberFunction.htm) \[12\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN: 0-201-61562-2. Item 20: Class mechanics.
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. Item 3, paragraph 'Avoid duplication in const
    and non-const member functions'.
3.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 1: 'Any one function (or method) will
    contain no more than 200 logical source lines of code.'
4.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 23: Prefer non-member non-friend functions
    to member functions.
5.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 44: 'Prefer writing nonmember nonfriend functions'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[4\] Define a constructor to handle
    initialization of objects'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[5\] By default declare single-argument
    constructors explicit'
8.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN: 0-201-61562-2. Item 20, page 71, top guideline :'Watch out for
    hidden temporaries created by implicit conversions. One good way to
    avoid this is to make constructors explicit when possible, and
    avoiding writing conversion operators'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[6\] Declare a member function that does not
    modify the state of its object const'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[8\] Make a function a member only if it needs
    direct access to the representation of a class'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[10\] Make a member function that doesn't modify
    the value of an object a const member function'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[11\] Make a function that needs access to the
    representation of a class but needn't be called for a specific
    object a static member function'
13. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[1\] Design constructors, assignments, and the
    destructor as a matched set of operations'
14. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[4\] If a class has a virtual function, it needs
    a virtual destructor'
15. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[8\] If a class is a container, give it an
    initializer-list constructor'
16. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[10\] If a class has a reference member, it
    probably needs copy operations (copy constructor and copy
    assignment)'
17. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice, page 547: '\[2\] Redefine or prohib '
18. [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 20:
    'Avoid long functions. Avoid deep nesting'
19. Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 1: 'Any one function (or method) will
    contain no more than 200 logical source lines of code.'
20. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[3\] Keep functions short'
21. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[8\] Use nonmember functions for symmetric
    operators'
22. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[9\] Use member functions to express operators
    that require an lvalue as their left-hand operand'
23. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 548: '\[11\] Provide "set() and get() functions" for a
    data member only if the fundamental semantics of a class requires
    them'
24. [Bruce Eckel](CppBruceEckel.htm). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Chapter B:
    Programming Guidelines. Item 7: 'When you create a class, make your
    names as clear as possible. Your goal should be to make the client
    programmer’s interface conceptually simple. Attempt to make your
    names so clear that comments are unnecessary. To this end, use
    function overloading and default arguments to create an intuitive,
    easy-to-use interface.'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
