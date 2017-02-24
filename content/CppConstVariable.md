



 

 

 

 

 

([C++](Cpp.md)) [const variable](CppConstVariable.md)
=======================================================

 

The value of a [variable](CppVariable.md) that is
[declared](CppDeclaration.md) [const](CppConst.md) cannot be changed
after initialization.

 

  ----------------------------------
  ` const int notesPerChord = 12;`
  ----------------------------------

 

The [compiler](CppCompiler.md) will emit an
[error](CppCompileError.md) or [warning](CppCompileWarning.md) if
accidentally try to change the value of a [const
variable](CppConstVariable.md).

 

  -------------------------------------------------------------------------------------------
  ` const int notesPerChord = 12; //... ++notesPerChord; //ERROR! Cannot change a constant`
  -------------------------------------------------------------------------------------------

 

Use [const](CppConst.md) whenever possible \[1-5\].

 

[Exercise 5: the many types of
const](CppExerciseTheManyTypesOfConst.md) is an
[exercise](CppExercise.md) about the many types of
[const](CppConst.md).

 

 

 

 

 

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
    functions': 'Use const whenever possible'
5.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: 'Prefer consts, enums and inlines to
    \#defines'
6.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 15:
    'Use const proactively'

 

 

 

 





 



