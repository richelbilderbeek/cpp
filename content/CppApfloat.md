



 

 

 

 

 

([C++](Cpp.htm)) [apfloat](CppApfloat.htm)
==========================================

 

[apfloat](CppApfloat.htm) is a [library](CppLibrary.htm) to work with
[arbitrary precision](CppArbitraryPrecision.htm)
[double](CppDouble.htm).

 

 

 

 

 

[apfloat](CppApfloat.htm) examples
----------------------------------

 

-   [1: basics](CppApfloatExample1.htm)
-   [2: basics](CppApfloatExample2.htm)
-   [ApfloatToDouble](CppApfloatToDouble.htm): convert an aploat to
    double

 

 

 

 

 

My [apfloat](CppApfloat.htm) review
-----------------------------------

 

In general, I'd review [apfloat](CppApfloat.htm) positively.

 

Pros:

 

-   Works under both Linux and Windows
-   No installation needed
-   Uses only the STL; no other libraries needed
-   Intuitive interface
-   Mostly const-correct
-   Uses some internal asserts

 

Cons:

 

-   All apfloat classes and functions are in the global namespace,
    causing namespace pollution: there will be some common names
    entering the global namespace, either as a \#define ('BIN') or
    constant ('INFINITE')
-   Some apfloat functions have the some name as used by the STL.
    Instead of specializing these (and put them in namespace std), these
    are put in the global namespace. This means that instead of
    'std::abs' I have to use 'abs' on apfloats
-   The apfloat constructor taking a string as an argument, is not const
    correct: it takes 'char \*' as an argument, instead of 'const
    char\*'
-   The apfloat header file does not use as much type forwarding as
    possible, slowing down compile time
-   The apfloat class name does not start with a capital 'a'. Are there
    coding standards for custom classes that think this is a good idea?
    Sure, a typedef can fix this
-   apfloat functions do not declare and initialize variables directly,
    instead all variables are declared and initialized later
-   apfloat use C-style casts
-   apfloat uses functions that takes 'void' as an argument. This is the
    C way to denote that there are no arguments. In C++, this is an
    abomination
-   apfloat functions sometimes have unused variables, either as
    function arguments or as local variables
-   apfloat its implementation of std::atan2 has its arguments the other
    way around. In other words, std::atan(1.0,2.0)
    equals atan(apfloat(2.0),apfloat(1.0))

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
