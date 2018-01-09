
 

 

 

 

 

([C++](Cpp.md)) [const return type](CppConstReturnType.md)
============================================================

The value of a [return type](CppReturnType.md) that is declared
[const](CppConst.md) cannot be changed. This is especially useful when
giving a [reference](CppReference.md) to a [class](CppClass.md)'s
internals (see example \#0), but can also prevent rarer
[errors](CppError.md) (see example \#1).

 

Use [const](CppConst.md) whenever possible \[1-7\].

 

[Exercises Exercise 5: the many types of
const](CppExerciseTheManyTypesOfConst.md) is an exercise about the many
types of [const](CppConst.md).

 

 

 

 

 

Example \#0
-----------

 

  ---------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  struct Values {   const std::vector<int>& GetValues() const { return mV; }   private:   std::vector<int> mV; };`
  ---------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example \#1
-----------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Int {   Int(const int any_i = 0) : i(any_i) {}   operator bool() const { return i==0; }   int i; };  /* const */ Int operator+(const Int& lhs, const Int& rhs) {   return lhs.i + rhs.i; }  #include <iostream>  int main() {   Int a;   Int b;   Int c;   if (a+b=c)   {     std::cout << "Typo: you should have used a const return type!\n";   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The code (using [Qt Creator](CppQt.md)) above does
[compile](CppCompiler.md) and print text to the screen. If the
[const](CppConst.md) that is commented out is activated, the code will
not [compile](CppCompiler.md) anymore. Due to this, also use a
[const](CppConst.md) [return type](CppReturnType.md) (note, however,
that \[8\] advises against this advice).

 

 

 

 

 

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
    'Use const proactively'.
7.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.6: 'Every object in a system
    should be const-correct'
8.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.9: 'Avoid declaring results
    returned by value from functions as const'

 

 

 

 

 

 

