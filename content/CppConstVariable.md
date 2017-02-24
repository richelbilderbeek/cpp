

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [const variable](CppConstVariable.htm)
=======================================================

 

The value of a [variable](CppVariable.htm) that is
[declared](CppDeclaration.htm) [const](CppConst.htm) cannot be changed
after initialization.

 

  ----------------------------------
  ` const int notesPerChord = 12;`
  ----------------------------------

 

The [compiler](CppCompiler.htm) will emit an
[error](CppCompileError.htm) or [warning](CppCompileWarning.htm) if
accidentally try to change the value of a [const
variable](CppConstVariable.htm).

 

  -------------------------------------------------------------------------------------------
  ` const int notesPerChord = 12; //... ++notesPerChord; //ERROR! Cannot change a constant`
  -------------------------------------------------------------------------------------------

 

Use [const](CppConst.htm) whenever possible \[1-5\].

 

[Exercise 5: the many types of
const](CppExerciseTheManyTypesOfConst.htm) is an
[exercise](CppExercise.htm) about the many types of
[const](CppConst.htm).

 

 

 

 

 

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
    functions': 'Use const whenever possible'
5.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: 'Prefer consts, enums and inlines to
    \#defines'
6.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 15:
    'Use const proactively'

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
