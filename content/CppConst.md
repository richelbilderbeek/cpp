# ([C++](Cpp.md)) [const](CppConst.md)

[const](CppConst.md) (an abbreviation of 'constant') is a
[keyword](CppKeyword.md) to ensure read-only operations.

```c++
int main()
{
  const int dozen = 12;
}
```
 
There are five types of [const](CppConst.md):

1.  [const variable](CppConstVariable.md)
2.  [const argument](CppConstArgument.md)
3.  [const return type](CppConstReturnType.md)
4.  [const member function](CppConstMemberFunction.md)
5.  [const member](CppConstMember.md)

Using the [const](CppConst.md) [keyword](CppKeyword.md), design flaws
can be spotted at [compile time](CppCompileTime.md).

[Const is not deep](CppConstIsNotDeep.md) as one can [delete a pointer-to-const](CppDeletePointerToConst.md).

Active use of [const](CppConst.md) is termed [const correctness](CppConstCorrect.md).

In [function design](CppFunctionDesign.md) consider using: 

 * [const arguments](CppConstArgument.md), whenever these need to be read-only
 * [const variables](CppConstVariable.md), whenever these need not change after initialization
 * In C++98 only: [const return types](CppConstReturnType.md)

In [class design](CppClassDesign.md) consider using: 

 * [const members](CppConstMember.md): for member variables that must not change after construction
 * [const member functions](CppConstMemberFunction.md): for member functions that must not change the class's state
 
## [Advice](CppAdvice.md)

-   Use [const](CppConst.md) whenever possible [1-6,14].
-   Be [const correct](CppConstCorrect.md) [7-10, 12]
-   Prefer [const](CppConst.md) over [#define](CppDefine.md)s [5]
-   Avoid [magic constants](CppMagicConstant.md) [13]
-   Avoid [constants](CppConst.md) at file scope in [header files](CppHeaderFile.md) [11]
-   Consider [casting away](CppConst_cast.md) [const](CppConst.md) only as the very last resort [15]

## [References](CppReferences.md)

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
11. [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.3
12. [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.6: 'Every object in a system
    should be const-correct'
13. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[6\] Avoid "magic constants"'
14. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[13\] Use const extensively and consistently'
15. Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 5.2.3.2: 'Consider casting away const only as the very last resort'

