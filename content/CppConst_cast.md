# ([C++](Cpp.md)) [const_cast](CppConst_cast.md)

[const_cast](CppConst_cast.md) is a [keyword](CppKeyword.md) to
[cast](CppCast.md) away [constness](CppConst.md).

## [Advice](CppAdvice.md)

-   Avoid [casting](CppCast.md) [constness](CppConst.md) away [1, 3-4]
-   [const_cast](CppConst_cast.md) may be used when using a non-[const-correct](CppConstCorrect.md) API [1] 
-   [const_cast](CppConst_cast.md) may be used to [avoid duplication in const and non-const member functions](CppAvoidDuplicationInConstAndNonConstMemberFunctions.md) [1, 2].

## [References](CppReferences.md)

1.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter 94: 'Avoid 
    casting away const'
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition). ISBN:0-321-33487-6. 
    Item 3, paragraph 'Avoid duplication in const
    and non-const member functions'
3.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. 
    Chapter 9.1.6: 'Think twice (at least) before casting away const'
4.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 5.2.3.2: 'Consider casting away const only as the very last resort'
 

