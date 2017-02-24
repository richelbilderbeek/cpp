[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [const](CppConst.htm)
======================================

 

[const](CppConst.htm) (an abbreviation of 'constant') is a
[keyword](CppKeyword.htm) to ensure read-only operations.

 

Use [const](CppConst.htm) whenever possible \[1-6,14\].

 

Prefer [const](CppConst.htm) over [\#define](CppDefine.htm)s \[5\].
Avoid [magic constants](CppMagicConstant.htm) \[13\]. Avoid
[constants](CppConst.htm) at file scope in [header
files](CppHeaderFile.htm) \[11\].

 

Active use of [const](CppConst.htm) is termed [const
correctness](CppConstCorrect.htm). Be [const
correct](CppConstCorrect.htm) \[7-10,12\].

 

  -------------------------------------------
  ` int main() {   const int dozen = 12; }`
  -------------------------------------------

 

There are five types of [const](CppConst.htm):

1.  [const variable](CppConstVariable.htm)
2.  [const argument](CppConstArgument.htm)
3.  [const return type](CppConstReturnType.htm)
4.  [const member function](CppConstMemberFunction.htm)
5.  [const member](CppConstMember.htm)

 

Using the [const](CppConst.htm) [keyword](CppKeyword.htm), design flaws
can be spotted at [compile time](CppCompileTime.htm).

 

In [function design](CppFunctionDesign.htm) consider using [const
arguments](CppConstArgument.htm), [const
variables](CppConstVariable.htm) and [const return
types](CppConstReturnType.htm).

 

In [class design](CppClassDesign.htm) you might consider using [const
members](CppConstMember.htm) and [const member
functions](CppConstMemberFunction.htm).

 

Be aware that [const is not deep](CppConstIsNotDeep.htm) and that one
can [delete a pointer-to-const](CppDeletePointerToConst.htm).

 

 

 

 

 

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
11. [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.3
12. [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.6: 'Every object in a system
    should be const-correct'
13. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[6\] Avoid "magic constants"'
14. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[13\] Use const extensively and consistently'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
