



 

 

 

 

 

([C++](Cpp.md)) [const member](CppConstMember.md)
===================================================

 

The value of a member variable that is declared [const](CppConst.md)
cannot be changed after [construction](CppConstructor.md).

 

In [class design](CppClassDesign.md), a [const
member](CppConstMember.md) reflects an attribute that can be different
between objects, but stay constant after
[construction](CppConstructor.md). When modeling humans (or persons)
attributes as name, gender and birth date are candidates for a [const
member](CppConstMember.md).

 

  ----------------------------------------------------------------------------------------------
  ` struct Person {   Person(const bool isMale) : mIsMale(isMale) {}   const bool mIsMale; };`
  ----------------------------------------------------------------------------------------------

 

As a [const member](CppConstMember.md) cannot be changed after
[construction](CppConstructor.md), you might choose to make it
[public](CppPublic.md), instead of writing a getter.

 

Use [const](CppConst.md) whenever possible \[1-6\].

 

[Exercise 5: the many types of
const](CppExerciseTheManyTypesOfConst.md) is an exercise about the many
types of [const](CppConst.md).

 

[Const members](CppConstMember.md) often make [classes](CppClass.md)
noncopyable. A solution to this feature is to store the objects in a
[boost::shared\_ptr](CppShared_ptr.md) and/or using the
[Pimpl](CppPimpl.md) idiom.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 7.9.3: 'Use const
    extensively and consistently'
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 3: 'Use const whenever possible'
3.  [Jarrod Hollingworth](CppJarrodHollingworth.md), [Bob
    Swart](CppBobSwart.md), [Mark Cashman](CppMarkCashman.md), [Paul
    Gustavson](CppPaulGustavson.md). Sams C++ Builder 6
    Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Understand and
    use const in your code'
4.  [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 8, chapter 'Const member
    functions': 'Use const whenever possible.'
5.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: 'Prefer consts, enums and inlines to
    \#defines'
6.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 15:
    'Use const proactively'

 

 

 

 

 





 



