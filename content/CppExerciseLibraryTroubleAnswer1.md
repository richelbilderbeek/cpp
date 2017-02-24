



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#8: Library trouble \#1](CppExerciseLibraryTroubleAnswer1.htm)
====================================================================================================

 

This is the answer of [Exercise \#8: library
trouble](CppExerciseLibraryTrouble.htm).

 

There are six solutions solutions, as listed below:

 

 

 

 

 

Abandon const-correctness (0/10)
--------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; /* const */ int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),n,'*');`
  ---------------------------------------------------------------------------------------------------------------------------

 

Using const is good \[1-6\], abondoning const-correctness is not.

 

 

 

 

 

Use a C-style cast (1/10)
-------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(), (int) n,'*');`
  ----------------------------------------------------------------------------------------------------------------------------

 

Don't use C-style casts, but use one of the four more-specific C++
casting keywords \[7,8\].

 

 

 

 

 

Use of reinterpret\_cast (1/10)
-------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),reinterpret_cast<int>(n) ,'*');`
  ---------------------------------------------------------------------------------------------------------------------------------------------

 

The use of [reinterpret\_cast](CppReinterpret_cast.htm) is nonsense
here, because int and const int are closely related. Also, it still will
not compile, with the same compile error.

 

 

 

 

 

Use of dynamic\_cast (1/10)
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),dynamic_cast<int>(n) ,'*');`
  -----------------------------------------------------------------------------------------------------------------------------------------

 

The use of [dynamic\_cast](CppDynamic_cast.htm) is nonsense here,
because int and const int are not members of the same class hierarchy.
Also, it still will not compile, because a dynamic\_cast cannot cast
from 'const int' to 'int'.

 

 

 

 

 

Use of const\_cast (8/10)
-------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),const_cast<int>(n) ,'*');`
  ---------------------------------------------------------------------------------------------------------------------------------------

 

The use of [const\_cast](CppConst_cast.htm) is my favorite solution. As
it is the most correct solution, as all we want to do is to cast away
the const. But too bad, it does not compile!

If you know why const\_cast does not compile and static\_cast does,
please send me an [email](Email.png).

 

 

 

 

 

Use of static\_cast (10/10)
---------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),static_cast<int>(n) ,'*');`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

I regret that the use of [static\_cast](CppStatic_cast.htm) is the best
solution, as a const\_cast is more clear. But const\_cast does not
compile, so one is left to use static\_cast.

 

If you know why const\_cast does not compile and static\_cast does,
please send me an [email](Email.png).

 

 

 

 

 

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
6.  [Herb Sutter,](CppHerbSutter.htm)[Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 15:
    'Use const proactively'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 6.5.5: 'When explicit
    type conversion is necessary, prefer the more specific cast
    operators to the C-style cast'
8.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 95:
    'Don't use C-style casts'

 

 

 

 

 





 



