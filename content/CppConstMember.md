[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [const member](CppConstMember.htm)
===================================================

 

The value of a member variable that is declared [const](CppConst.htm)
cannot be changed after [construction](CppConstructor.htm).

 

In [class design](CppClassDesign.htm), a [const
member](CppConstMember.htm) reflects an attribute that can be different
between objects, but stay constant after
[construction](CppConstructor.htm). When modeling humans (or persons)
attributes as name, gender and birth date are candidates for a [const
member](CppConstMember.htm).

 

  ----------------------------------------------------------------------------------------------
  ` struct Person {   Person(const bool isMale) : mIsMale(isMale) {}   const bool mIsMale; };`
  ----------------------------------------------------------------------------------------------

 

As a [const member](CppConstMember.htm) cannot be changed after
[construction](CppConstructor.htm), you might choose to make it
[public](CppPublic.htm), instead of writing a getter.

 

Use [const](CppConst.htm) whenever possible \[1-6\].

 

[Exercise 5: the many types of
const](CppExerciseTheManyTypesOfConst.htm) is an exercise about the many
types of [const](CppConst.htm).

 

[Const members](CppConstMember.htm) often make [classes](CppClass.htm)
noncopyable. A solution to this feature is to store the objects in a
[boost::shared\_ptr](CppShared_ptr.htm) and/or using the
[Pimpl](CppPimpl.htm) idiom.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 7.9.3: 'Use const
    extensively and consistently'
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 3: 'Use const whenever possible'
3.  [Jarrod Hollingworth](CppJarrodHollingworth.htm), [Bob
    Swart](CppBobSwart.htm), [Mark Cashman](CppMarkCashman.htm), [Paul
    Gustavson](CppPaulGustavson.htm). Sams C++ Builder 6
    Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Understand and
    use const in your code'
4.  [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 8, chapter 'Const member
    functions': 'Use const whenever possible.'
5.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: 'Prefer consts, enums and inlines to
    \#defines'
6.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 15:
    'Use const proactively'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
