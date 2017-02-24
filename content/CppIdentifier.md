



 

 

 

 

 

([C++](Cpp.htm)) [identifier](CppIdentifier.htm)
================================================

 

An [identifier](CppIdentifier.htm) is the name given to a
[variable](CppVariable.htm).

 

In the example below, a [variable](CppVariable.htm) is
[defined](CppDefinition.htm) with the [int](CppInt.htm) [data
type](CppDataType.htm) and the [identifier](CppIdentifier.htm) 'x':

 

  --------------------------------
  ` int main() {   int x = 1; }`
  --------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Keep common and local names short, and keep uncommon and nonlocal
    names longer \[4\]
-   Avoid similar-looking names \[5\]
-   Be consistent about [identifier](CppIdentifier.htm) names \[1,7\]
-   Use either uppercase or underscore but not both to delimit words
    \[1\]
-   -   Use meaningful names \[2,12\], as these make the code
    self-documenting \[12\]
-   Consider not letting [identifiers](CppIdentifier.htm) start with a
    leading underscore \[3,14\], as it might cause name collision
    \[3,14\]
-   Name an object to reflect its meaning rather than its type \[6\]
-   -   Avoid using [Hungarian notation](CppHungarianNotation.htm)
    \[9-10\]
-   Avoid using abbreviations in identifiers \[13\]
-   Avoid ALL\_CAPS names \[8\]
-   Use [identifiers](CppIdentifier.htm) of 31 characters or fewer to
    ensure portability \[11\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.7: 'Be consistent about
    identifier names; use either uppercase or underscore but not both to
    delimit words in identifiers'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). Programming. 2009.
    ISBN: 978-0-321-54372-1. Chapter 5.9.1: 'Use meaningful names'
3.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 47: 'Identifiers will not begin with
    the underscore character '\_'. Rationale: '\_' is often used as the
    first character in the name of library functions (e.g. \_main,
    \_exit, etc.) In order to avoid name collisions, identifiers should
    not begin with '\_'.'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[12\] Keep common and local names short, and
    keep uncommon and nonlocal names longer'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[13\] Avoid similar-looking names'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[14\] Name an object to reflect its meaning
    rather than its type'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[15\] Maintain a consistent naming style'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[16\] Avoid ALL\_CAPS names'
9.  [Bjarne Stroustrup's C++
    glossary](http://www.stroustrup.com/glossary.html): 'Hungarian
    notation - a coding convention that encodes type information in
    variable names. Its main use is to compensate for lack of type
    checking in weakly-typed or untyped languages. It is totally
    unsuitable for C++ where it complicates maintenance and gets in the
    way of abstraction'
10. [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 0, example 3: 'Therefore, no C++ coding standard should require
    Hungarian notation, though a C++ coding standard might legitimately
    choose to ban it
11. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Portability Tip 2.1.
    page 26: 'C++ allows identifiers of any length, but your C++
    implementation may restrict identifier lengths. Use identifiers of
    31 characters or fewer to ensure portability.'
12. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Good Programming
    Practice 2.4. page 26: 'Choosing meaningful indentifiers makes a
    program self-documenting - a person can understand the program
    simply by reading it rather than having to refer to program comments
    or documentation.'
13. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Good Programming
    Practice 2.5. page 26: 'Avoid using abbreviations in identifiers.
    This improves program readability.'
14. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Good Programming
    Practice 2.6. page 26: 'Do not use identifiers that begin with
    underscores and double underscores, because C++ compilers may use
    names like that for their own purposes internally. This will prevent
    the names you choose from being confused with names the compiler
    chooses'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
