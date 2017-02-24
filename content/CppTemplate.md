

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [template](CppTemplate.htm)
============================================

 

[template](CppTemplate.htm) is a [keyword](CppKeyword.htm) for
[templates](CppTemplate.htm). [Templates](CppTemplate.htm) 'provide
direct support for generic programming in the form of programming using
types as parameters' \[1\].

 

A [template](CppTemplate.htm) can take parameters \[2\]:

 

-   Type parameters
-   Value parameters
-   Template parameters

 

[templates](CppTemplate.htm) can be used to:

 

-   write [template functions](CppTemplateFunction.htm)
-   write [template classes](CppTemplateClass.htm)
-   do [template metaprogrammming](CppTemplateMetaprogram.htm) (programs
    performed at compile time)

 

Templates make it possible to use one [function](CppFunction.htm) or
[class](CppClass.htm) to handle many different [data
types](CppDataType.htm).

 

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [Example 1: templated class of type T](CppTemplateClassExample1.htm)
-   [Example 2: templated class of type T, full specialisation to int
    and double](CppTemplateClassExample2.htm)
-   [Example 3: templated class with integer template argument, full
    specialisation to zero and one](CppTemplateClassExample3.htm)
-   [Example 4: templated class with enum template argument, full
    specialisation for each enum value](CppTemplateClassExample4.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   There is no semantic difference between [class](CppClass.htm) and
    [typename](CppTypename.htm) in a template-parameter \[3,4\]:
    'template &lt;class T&gt;' and 'template&lt;typename T&gt;' are
    synonymous \[5\]
-   Use [templates](CppTemplate.htm) to express
    [algorithms](CppAlgorithm.htm) that apply to many
    [argument](CppArgument.htm) [types](CppDataType.htm) \[6\]
-   Use [templates](CppTemplate.htm) to express
    [containers](CppContainer.htm) \[7\]
-   When [defining](CppDefinition.htm) a [template](CppTemplate.htm),
    first design and [debug](CppDebug.htm) a non-template version; later
    generalize by adding parameters \[8\]
-   [Templates](CppTemplate.htm) are type-safe, but checking happens too
    late \[9\]
-   When designing a [template](CppTemplate.htm), carefully consider the
    [concepts](CppConcept.htm) assumed for its
    [template](CppTemplate.htm) [arguments](CppArgument.htm) \[10\]
-   If a class template should be copyable, give it a
    non-[template](CppTemplate.htm) copy constructor and a
    non-[template](CppTemplate.htm) copy assignment \[11\]
-   If a class template should be movable, give it a
    non-[template](CppTemplate.htm) move constructor and a
    non-[template](CppTemplate.htm) move assignment \[12\]
-   A virtual function member cannot be a [template](CppTemplate.htm)
    member function \[13\]
-   Define a type as a member of a [template](CppTemplate.htm) only if
    it depends on all the class [template](CppTemplate.htm)'s arguments
    \[14\]
-   Use function [templates](CppTemplate.htm) to deduce class
    [template](CppTemplate.htm) argument types \[15\]
-   Overload function [templates](CppTemplate.htm) to get the same
    semantics for a variety of argument types \[16\]
-   Use argument substitution failure to provide just the right set of
    functions for a program \[17\]
-   Use [template](CppTemplate.htm) aliases to simplify notation and
    hide implementation details \[18\]
-   There is no seperate compilation of [templates](CppTemplate.htm):
    \#include [template](CppTemplate.htm) definitions in every
    translation unit that uses them \[19\]
-   Use ordinary functions as interfaces to code that cannot deal with
    [templates](CppTemplate.htm) \[20\]
-   Seperately compile large [templates](CppTemplate.htm) and
    [templates](CppTemplate.htm) with nontrivial context dependencies
    \[21\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.1,
    page 665: 'Templates provide direct support for generic programming
    in the form of programming using types as parameters
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 25.2,
    page 722: 'A template can take parameters: Type parameters \[...\],
    Value parameters \[...\], Template parameters \[...\]'
3.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 14.1.2.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 25.2,
    page 722: 'A template argument is defined to be a type argument by
    prefixing it with typename or class. The result of using either is
    completely equivalent'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[3\] template &lt;class T&gt;' and 'template&lt;typename
    T&gt;' are synonymous'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[1\] Use templates to express algorithms that apply to
    many argument types'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[2\] Use templates to express containers'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[4\] When defining a template, first design and debug a
    non-template version; later generalize by adding parameters'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[5\] Templates are type-safe, but checking happens too
    late'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[6\] When designing a template, carefully consider the
    concepts (requirements) assumed for its template arguments'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[7\] If a class template should be copyable, give it a
    non-template copy constructor and a non-template copy assignment'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[8\] If a class template should be movable, give it a
    non-template move constructor and a non-template move assignment'
13. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[9\] A virtual function member cannot be a template
    member function'
14. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[10\] Define a type as a member of a template only if it
    depends on all the class template's arguments'
15. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[11\] Use function templates to deduce class template
    argument types'
16. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[12\] Overload function templates to get the same
    semantics for a variety of argument types'
17. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[13\] Use argument substitution failure to provide just
    the right set of functions for a program'
18. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[14\] Use template aliases to simplify notation and hide
    implementation details'
19. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[15\] There is no seperate compilation of templates:
    \#include template definitions in every translation unit that uses
    them'
20. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[16\] Use ordinary functions as interfaces to code that
    cannot deal with templates'
21. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[17\] Seperately compile large templates and templates
    with nontrivial context dependencies'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
