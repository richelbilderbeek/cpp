
 

 

 

 

 

([C++](Cpp.md)) [inline](CppInline.md)
========================================

 

 

[inline](CppInline.md) is a [keyword](CppKeyword.md) to suggest to the
compiler to perhaps put that [function](CppFunction.md)'s body at the
call site and thus preventing a [function](CppFunction.md) call. To
select a default [namespace](CppNamespace.md), use [inline
namespace](CppInlineNamespace.md).

 

Prefer [inline](CppInline.md) over [\#define](CppDefine.md) \[1,22\].

 

Understand the ins and outs of [inlining](CppInline.md) \[2,19\]. The
criteria for inlining are complex, subtle and platform-dependent \[15\].
Do not inline by default \[11\].

 

Use [inline](CppInline.md) when:

-   you know you need the performance boost from inlining tiny functions
    \[12\]
-   performance measurements show the need \[18,20-21\]
-   the functions [inlined](CppInline.md) will have serious positive
    impact on the performance of the system \[17\]
-   the [member function](CppMemberFunction.md) is a trivial accessor
    or mutator function \[24\]
-   the [member function](CppMemberFunction.md) is a trivial forwarding
    function \[25\]

 

Avoid declaring a function [inline](CppInline.md) when:

-   the code is used in larger systems \[3\]
-   the object code is larger than the object code produced by the
    equivalent non-[inline](CppInline.md) [function
    call](CppFunctionCall.md) itself \[4\]. Do not break this rule
    without performance analysis at the system level \[7\]
-   the functions has actively used loops or switch statements \[9\]
-   the function consists out of more than two expressions \[14\]
-   your compiler will not generate it [inline](CppInline.md) \[5\]

 

Some rules of thumb when these is no need to perform analysis at the
system level:

-   Functions that merely get and set data members \[6,20\]
-   Function that consist of one or two statements \[23\]
-   Function that are less than five lines \[13\]
-   Function that are less than ten lines \[8\]
-   Function that are very small \[16\]
-   Function that are small and frequently called \[10\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: 'Prefer consts, enums, and inlines to
    defines'
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 30: 'Understand the ins and outs of
    inlining'
3.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section 7.7, page 530: 'In general, avoid
    granting one component license that, if also taken by other
    components, would adversely impact the system as a whole.' and
    'Excessive use of inline functions is just one kind of behavior that
    can lead to subtle integration problems down the road. By cavelierly
    declararing inappropriately large member functions inline, we can
    often improve the runtime performance of our own object in isolation
    or within a small subsystem. However, this runtime improvement is
    obtained at the cost of repeated code and increased executable size'
    and 'The end result of this selfishness is a net decrease in overall
    system performance.'
4.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section D.4. Guidelines, Chapter 9, page
    823: 'Avoid declaring a function inline whose body object code is
    larger than the object code produced by the equivalent non-inline
    function call itself'
5.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section D.4. Guidelines, Chapter 9, page
    823: 'Avoid declaring a function inline that your compiler will not
    generate inline'
6.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.14, page 631: 'For functions
    that merely get and set data members, it is often reasonable to use
    an inline function without first acquiring performance data'
7.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.14, page 631: 'For function
    bodies that generate more object code than the corresponding
    non-inline function call, performance analysis at the system level
    should precede the decision to define the function inline'
8.  Benjy Weinberger, Craig Silverstein, Gregory Eitzmann, Mark
    Mentovai, Tashana Landray. Google C++ Style Guide. Revision 3.199.
    Section 'Inline functions': 'Define functions inline only when they
    are small, say, 10 lines or less'
9.  Benjy Weinberger, Craig Silverstein, Gregory Eitzmann, Mark
    Mentovai, Tashana Landray. Google C++ Style Guide. Revision 3.199.
    Section 'Inline functions': 'Another useful rule of thumb: it's
    typically not cost effective to inline functions with loops or
    switch statements (unless, in the common case, the loop or switch
    statement is never executed)'
10. [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 30: 'Understand the ins and outs of
    inlining', page 139: 'Limit most inlining to small, frequenctly
    called functions'
11. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 8: 'Too many programmers 'inline by default' in the name of
    optimization, nearly always trading higher coupling for at best
    dubious benefit'
12. [Bjarne Stroustrup](CppBjarneStroustrup.md). Programming. 2009.
    ISBN: 978-0-321-54372-1. Paragraph 9.4.4, page 312: 'The obvious
    rule of thumb is: Don't put member function bodies in the class
    declaration unless you know that you need the performance boost from
    inlining tiny functions'
13. [Bjarne Stroustrup](CppBjarneStroustrup.md). Programming. 2009.
    ISBN: 978-0-321-54372-1. Paragraph 9.4.4, page 312: 'Large
    functions, say five lines of code, don't benefit from inlining'
14. [Bjarne Stroustrup](CppBjarneStroustrup.md). Programming. 2009.
    ISBN: 978-0-321-54372-1. Paragraph 9.4.4, page 312: 'We rarely
    inline a function that consists of more than one or two expressions'
15. [Scott Meyers](CppScottMeyers.md). More Effective C++.
    ISBN: 020163371X. Introduction, page 7: 'However, the criteria for
    determining whether a function should be inlined can be complex,
    subtle, and platform-dependent'
16. [Herbert Schildt](CppHerbertSchildt.md). C++: The Complete
    Reference, fourth edition. ISBN: 0-07-222680-3. Chapter 12,
    paragraph 'Inline functions', page 304: 'For this reason, it is best
    to inline only very small functions'
17. [Herbert Schildt](CppHerbertSchildt.md). C++: The Complete
    Reference, fourth edition. ISBN: 0-07-222680-3. Chapter 12,
    paragraph 'Inline functions', page 304: 'Further, it is also a good
    idea to inline only those functions that will have significant
    impact on the performance of your program'
18. [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 25, page 193: 'Avoid writing inline or
    other attempted optimizations until performance measurements show
    the need'
19. [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 25, page 198: 'There's more to inlining
    than the inline keyword alone'
20. [Marshall Cline](CppMarshallCline.md), [Greg
    Lomow](CppGregLomow.md) and [Mike Girou](CppMikeGirou.md).
    C++ FAQs. ISBN: 0-201-3098301. FAQ 13.08, page 188: 'Except for
    trivial access member functions, the information for making
    intelligent inlining decisions usually comes from profiling actual
    code, not from developer's intuition'
21. [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2. Item 46, page 193: 'Avoid inlining or detailed
    tuning until performance profiles prove the need'
22. Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 29: 'The \#define pre-processor
    directive shall not be used to create inline macros. Inline
    functions shall be used instead.'
23. Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 121: 'Only functions with 1 or 2
    statements should be considered candidates for inline functions.'
24. Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 122: 'Trivial accessor and mutator
    functions should be inlined.'
25. Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 124: 'Trivial forwarding functions
    should be inlined.'

 

 

 

 

 

 

