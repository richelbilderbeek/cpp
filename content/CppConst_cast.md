



 

 

 

 

 

([C++](Cpp.htm)) [const\_cast](CppConst_cast.htm)
=================================================

 

[const\_cast](CppConst_cast.htm) is a [keyword](CppKeyword.htm) to
[cast](CppCast.htm) away [constness](CppConst.htm).

 

Avoid [casting](CppCast.htm) [constness](CppConst.htm) away \[1,3\],
except when using a non-[const-correct](CppConstCorrect.htm) API \[1\]
or to [avoid duplication in const and non-const member
functions](CppAvoidDuplicationInConstAndNonConstMemberFunctions.htm)
\[1,2\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    94: 'Avoid casting away const'
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. Item 3, paragraph 'Avoid duplication in const
    and non-const member functions'
3.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.6: 'Think twice (at least)
    before casting away const'

 

 

 

 

 





 



