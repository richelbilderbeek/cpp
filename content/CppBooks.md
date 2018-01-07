
 

 

 

 

 

([C++](Cpp.md)) [Which books should I read when I learn C++?](CppBooks.md)
============================================================================

 

There are many C++ books for starters. I would recommend to start with a
book you just like the writing style of. However, there are many
programming books out there that get you into bad habits. When selecting
for a book, pay attention to the following:

 

-   It should use '[int](CppInt.md) [main](CppMain.md)' instead of
    '[void](CppVoid.md) [main](CppMain.md)' \[1-5\]
-   It should use '[string](CppString.md)', instead of
    '[char](CppChar.md) \*' \[6-10\]
-   It should use '[vector](CppStdVector.md)', instead of
    [arrays](CppArray.md) \[6-10\]
-   It should use '[cout](CppCout.md)', instead of
    '[printf](CppPrintf.md)' (which is an unsafe C function)
-   It should not encourage the use of [macro](CppMacro.md)'s \[11,12\]
-   It should encourage the use of [const](CppConst.md)\[13-17\]

 

A book that does all of the above is 'Thinking C++' by [Bruce
Eckel](CppBruceEckel.md), can be downloaded **for free**. Try Google!

 

When getting the hang of programming and wondering about 'good
practices', 'good naming conventions' and so on, I strongly recommend
'C++ coding standards: 101 rules, guidelines, and best practices'\[6\].
Put it under your pillow, read some pages once in a while and gain huge
benfits.

 

To deepen your knowledge about C++, I'd recommend 'The C++ Programming
Language' \[10\] from [Bjarne Stroustrup](CppBjarneStroustrup.md).

 

To improve you [class design](CppClassDesign.md) using [design
patterns](CppDesignPattern.md), I'd recommend the book 'Design
Patterns' \[18\].

 

To deepen your insight about the philosphy behind C++, read 'The design
and evolution of C++' \[19\], also from [Bjarne
Stroustrup](CppBjarneStroustrup.md).

 

 

 

 

The most important C++ books ...ever
------------------------------------

 

The most important C++ books are (according to \[20\]):

-   [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++
    Programming Language. 3rd edition. ISBN: 0-201-88954-4. 1997
-   [Scott Meyers](CppScottMeyers.md). Effective C++. 3rd edition.
    2005.
-   [Erich Gamma](CppErichGamma.md), [Richard
    Helm](CppRichardHelm.md), [Ralph Johnson](CppRalphJohnson.md),
    [John Vlissides](CppJohnVlissides.md). Design Patterns.
    (1st edition) 1995. ISBN: 0201633612
-   Iternational standard for C++. ISO/IEC 14882. 2nd edition, 2003.
-   [Andrei Alexandrescu](CppAndreiAlexandrescu.md). Modern C++ design.
    2001.

 

 

 

 

 

External links
--------------

 

-   [WikiBooks about C++](http://en.wikibooks.org/wiki/C%2B%2B)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 3.6.1.2
2.  From http://www.parashift.com/c++-faq-lite/newbie.html\#faq-29.3:\
     \
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     main() must return int. Not void, not bool, not float. int. Just int, nothing but int, only     int. Some compilers accept void main(), but that is non-standard and shouldn't     be used. Instead use int main().     `
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     
3.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN:0-201-61562-2. Item 21: void main() is nonstandard
    and nonportable.
4.  From [Bjarne Stroustrup](CppBjarneStroustrup.md)'s homepage
    (http://www.research.att.com/\~bs/bs\_faq2.html\#void-main):\
     \
      -------------------------------------------------------------------------------------------------------------------------------
      `     The definition          void main() { /* ... */ }          is not and never has been C++, nor has it even been C.     `
      -------------------------------------------------------------------------------------------------------------------------------

     
5.  From the The alt.comp.lang.learn.c-c++ FAQ:
    http://ma.rtij.nl/acllc-c++.FAQ.html\#q3.4: 3.4: Why does everyone
    make so much fuss about "void main()"?\
     \
      ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     Because the return type of the main() function must be int in both C and C++. Anything else is undefined. Bottom line - don't try to start a thread about this in alt.comp.lang.learn.c-c++ as it has already been discussed many, many times and generates more flamage than any other topic.     `
      ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     
6.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    77: 'Use vector and string instead of arrays
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition).ISBN: 0-201-88954-4
8.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6, chapter
    76: 'Use vector by default. Otherwise, choose an appropriate
    container', chapter 77: 'Use vector and string instead of arrays.'
9.  [Marshall Cline](CppMarshallCline.md), [Greg
    Lomow](CppGregLomow.md) and [Mike Girou](CppMikeGirou.md).
    C++ FAQs. ISBN:0-201-3098301, FAQ 28.02: 'Are arrays good or evil?'
    (Answer: 'Arrays are evil')
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition).ISBN: 0-201-88954-4 Chapter C.14.11 'Prefer
    vector over array'
11. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition).ISBN: 0-201-88954-4, chapter 7.9.4: 'Avoid
    macros'
12. [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    16: 'Avoid macros'
13. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition).ISBN: 0-201-88954-4 7.9.3: 'Use const
    extensively and consistently'
14. [Scott Meyers](CppScottMeyers.md). Effective C++
    (3rd edition).ISBN:0-321-33487-6. Item 3: 'Use const whenever
    possible'
15. [Jarrod Hollingworth](CppJarrodHollingworth.md), [Bob
    Swart](CppBobSwart.md), [Mark Cashman](CppMarkCashman.md), [Paul
    Gustavson](CppPaulGustavson.md). Sams C++ Builder 6
    Developer's Guide. ISBN:0-672-32480-6. Chapter 3: 'Understand and
    use const in your code'
16. [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN:0-672-32224-2. Hour 8, chapter 'Const member
    functions': 'Use const whenever possible.'
17. [Scott Meyers](CppScottMeyers.md). Effective C++
    (3rd edition).ISBN:0-321-33487-6. Item 2: 'Prefer consts, enums and
    inlines to \#defines'
18. [Erich Gamma](CppErichGamma.md), [Richard
    Helm](CppRichardHelm.md), [Ralph Johnson](CppRalphJohnson.md),
    [John Vlissides](CppJohnVlissides.md). Design Patterns.
    (1st edition) 1995. ISBN: 0201633612
19. [Bjarne Stroustrup](CppBjarneStroustrup.md). The Design and
    Evolution of C++ ISBN: 0-201-54330-3
20. [Scott Meyers](CppScottMeyers.md). The most important C++
    books ...ever. 2006. Online at:
    http://www.artima.com/cppsource/top\_cpp\_books.html

 

 

 

 

 

 

