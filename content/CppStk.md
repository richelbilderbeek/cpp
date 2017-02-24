



 

 

 

 

 

([C++](Cpp.htm)) [STK](CppStk.htm)
==================================

 

 

The [STK](CppStk.htm) (abbreviation for 'Systhesis ToolKit') is a free
[C++](Cpp.htm) [audio](CppAudio.htm) [library](CppLibrary.htm).

 

 

 

 

 

![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png) Installing the [STK](CppStk.htm)
-----------------------------------------------------------------------------------

 

Under [Ubuntu](CppUbuntu.htm) and [Lubuntu](CppLubuntu.htm), the
[STK](CppStk.htm) can be installed from Ubuntu's Software Center:

 

  -------------------------------------
  ` sudo apt-get install libstk0-dev`
  -------------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Adding [STK](CppStk.htm) to the [project file](CppQtProjectFile.htm)
----------------------------------------------------------------------------------------------------

 

In [Qt Creator](CppQtCreator.htm), to be able to use the
[STK](CppStk.htm), add the following lines to your [project
file](CppQtProjectFile.htm):

 

  -----------------------------------------------------------------------
  ` INCLUDEPATH += /usr/include/stk LIBS += -L/usr/lib -lstk -lrtaudio`
  -----------------------------------------------------------------------

 

Thanks to Michael Jenkinson for his '-lrtaudio' suggestion in the
[project file](CppQtProjectFile.htm).

 

 

 

 

 

![Qt Creator](PicQtCreator.png) [STK](CppStk.htm) examples
----------------------------------------------------------

 

-   [STK example 1: beep](CppStkExample1.htm)
-   [STK example 2: random beeps](CppStkExample2.htm)

 

 

 

 

 

Critique on [STK](CppStk.htm)
-----------------------------

 

The [STK](CppStk.htm) is the only [audio](CppAudio.htm)
[library](CppLibrary.htm) I got to produce beeps from source code.

 

It hurts me that I have much critique on the coding style of the
[STK](CppStk.htm):

1.  The [STK](CppStk.htm) is not [const correct](CppConstCorrect.htm).
    One should use [const](CppConst.htm) whenever
    possible/feasible \[1\]\[2\]\[3\]\[4\]\[5\]\[6\]. One should be
    [const correct](CppConstCorrect.htm) \[7\]\[8\]\[9\]\[10\].
2.  The [STK](CppStk.htm) uses the [keyword](CppKeyword.htm)
    [register](CppRegister.htm). In this case, one should not use
    [register](CppRegister.htm) \[11\].
3.  The [STK](CppStk.htm) uses C-style [casts](CppCast.htm). One should
    use C++ style [casts](CppCast.htm) \[12\]\[13\].

 

 

 

 

 

External links
--------------

 

-   [STK homepage](https://ccrma.stanford.edu/software/stk/index.html)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 7.9.3: 'Use const
    extensively and consistently'.
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 3: 'Use const whenever possible'.
3.  [Jarrod Hollingworth](CppJarrodHollingworth.htm), [Bob
    Swart](CppBobSwart.htm), [Mark Cashman](CppMarkCashman.htm), [Paul
    Gustavson](CppPaulGustavson.htm). Sams C++ Builder 6
    Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Understand and
    use const in your code'.
4.  [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 8, chapter 'Const member
    functions': 'Use const whenever possible.'.
5.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: 'Prefer consts, enums and inlines
    to \#defines'.
6.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 15:
    'Use const proactively'.
7.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 1 guideline: 'Be const correct'.
8.  [Marshall Cline](CppMarshallCline.htm), [Greg
    Lomow](CppGregLomow.htm) and [Mike Girou](CppMikeGirou.htm).
    C++ FAQs. ISBN: 0-201-3098301. FAQ 14.05: 'Is const correctness
    tedious?' (Answer: no).
9.  [The C++ FAQ
    Lite](http://www.parashift.com/c++-faq-lite/const-correctness.html#faq-18.1).
    Item 18.1: What is 'const correctness' (Answer: 'A good thing')?
10. [Bruce Eckel](CppBruceEckel.htm). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Item 8: 'Constants', paragraph
    'Summary': 'const-correctness can be a lifesaver for projects'.
11. [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 28 guideline: 'Never write
    register \[...\]'.
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 6.5.5: 'When explicit
    type conversion is necessary, prefer the more specific cast
    operators to the C-style cast'.
13. [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 95:
    'Don't use C-style casts'.

 

 

 

 

 





 



