
 

 

 

 

 

([C++](Cpp.md)) [STK](CppStk.md)
==================================

 

 

The [STK](CppStk.md) (abbreviation for 'Systhesis ToolKit') is a free
[C++](Cpp.md) [audio](CppAudio.md) [library](CppLibrary.md).

 

 

 

 

 

![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png) Installing the [STK](CppStk.md)
-----------------------------------------------------------------------------------

 

Under [Ubuntu](CppUbuntu.md) and [Lubuntu](CppLubuntu.md), the
[STK](CppStk.md) can be installed from Ubuntu's Software Center:

 

  -------------------------------------
  ` sudo apt-get install libstk0-dev`
  -------------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Adding [STK](CppStk.md) to the [project file](CppQtProjectFile.md)
----------------------------------------------------------------------------------------------------

 

In [Qt Creator](CppQtCreator.md), to be able to use the
[STK](CppStk.md), add the following lines to your [project
file](CppQtProjectFile.md):

 

  -----------------------------------------------------------------------
  ` INCLUDEPATH += /usr/include/stk LIBS += -L/usr/lib -lstk -lrtaudio`
  -----------------------------------------------------------------------

 

Thanks to Michael Jenkinson for his '-lrtaudio' suggestion in the
[project file](CppQtProjectFile.md).

 

 

 

 

 

![Qt Creator](PicQtCreator.png) [STK](CppStk.md) examples
----------------------------------------------------------

 

-   [STK example 1: beep](CppStkExample1.md)
-   [STK example 2: random beeps](CppStkExample2.md)

 

 

 

 

 

Critique on [STK](CppStk.md)
-----------------------------

 

The [STK](CppStk.md) is the only [audio](CppAudio.md)
[library](CppLibrary.md) I got to produce beeps from source code.

 

It hurts me that I have much critique on the coding style of the
[STK](CppStk.md):

1.  The [STK](CppStk.md) is not [const correct](CppConstCorrect.md).
    One should use [const](CppConst.md) whenever
    possible/feasible \[1\]\[2\]\[3\]\[4\]\[5\]\[6\]. One should be
    [const correct](CppConstCorrect.md) \[7\]\[8\]\[9\]\[10\].
2.  The [STK](CppStk.md) uses the [keyword](CppKeyword.md)
    [register](CppRegister.md). In this case, one should not use
    [register](CppRegister.md) \[11\].
3.  The [STK](CppStk.md) uses C-style [casts](CppCast.md). One should
    use C++ style [casts](CppCast.md) \[12\]\[13\].

 

 

 

 

 

External links
--------------

 

-   [STK homepage](https://ccrma.stanford.edu/software/stk/index.html)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 7.9.3: 'Use const
    extensively and consistently'.
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 3: 'Use const whenever possible'.
3.  [Jarrod Hollingworth](CppJarrodHollingworth.md), [Bob
    Swart](CppBobSwart.md), [Mark Cashman](CppMarkCashman.md), [Paul
    Gustavson](CppPaulGustavson.md). Sams C++ Builder 6
    Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Understand and
    use const in your code'.
4.  [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 8, chapter 'Const member
    functions': 'Use const whenever possible.'.
5.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: 'Prefer consts, enums and inlines
    to \#defines'.
6.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 15:
    'Use const proactively'.
7.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 1 guideline: 'Be const correct'.
8.  [Marshall Cline](CppMarshallCline.md), [Greg
    Lomow](CppGregLomow.md) and [Mike Girou](CppMikeGirou.md).
    C++ FAQs. ISBN: 0-201-3098301. FAQ 14.05: 'Is const correctness
    tedious?' (Answer: no).
9.  [The C++ FAQ
    Lite](http://www.parashift.com/c++-faq-lite/const-correctness.html#faq-18.1).
    Item 18.1: What is 'const correctness' (Answer: 'A good thing')?
10. [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Item 8: 'Constants', paragraph
    'Summary': 'const-correctness can be a lifesaver for projects'.
11. [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 28 guideline: 'Never write
    register \[...\]'.
12. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 6.5.5: 'When explicit
    type conversion is necessary, prefer the more specific cast
    operators to the C-style cast'.
13. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 95:
    'Don't use C-style casts'.

 

 

 

 

 

 

