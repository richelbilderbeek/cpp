



 

 

 

 

 

([C++](Cpp.htm)) [const argument](CppConstArgument.htm)
=======================================================

 

The value of an [argument](CppArgument.htm) that is
[declared](CppDeclaration.htm) [const](CppConst.htm) cannot be changed.

 

[Exercise 5: the many types of
const](CppExerciseTheManyTypesOfConst.htm) is an
[exercise](CppExercise.htm) about the many types of
[const](CppConst.htm).

 

In [function design](CppFunctionDesign.htm), consider making read-only
arguments [const](CppConst.htm) (but note \[8\] advising against this).

 

Be suspicious of non-const reference arguments; if you want the
[function](CppFunction.htm) or [member function](CppMemberFunction.htm)
to modify its arguments, use [pointers](CppPointer.htm) and value
[return](CppReturn.htm) instead \[1\]. Use [const](CppConst.htm)
reference arguments when you need to minimize copying of arguments
\[2\].

 

Use [const](CppConst.htm) whenever possible \[1-7\].

 

 

 

 

 

[const arguments](CppConstArgument.htm) in a [declaration](CppDeclaration.htm)
------------------------------------------------------------------------------

 

A [function](CppFunction.htm) (or [member
function](CppMemberFunction.htm)) [declaration](CppDeclaration.htm) is
the first impression of its body, as it summarizes the effect of the
[variables](CppVariable.htm) involved or produced.

 

If, for example, you want to calculate the area of a circle (the output)
from its ray (the input), you expect the ray not te be modified in the
body of the function:

 

  --------------------------------------------------
  ` double CalculateCircleArea(const double ray);`
  --------------------------------------------------

 

Note that '**[double](CppDouble.htm)**
CalculateAreaCircle(**[const](CppConst.htm)**
**[double](CppDouble.htm)**& ray)' would be correct as well. The
guideline is: for easy-to-copy [data types](CppDataType.htm), pass by
value.

 

  -------------------------------
  ` void Swap(int& a, int& b);`
  -------------------------------

 

When swapping two values by reference, there will no number be
calculated in the process (therefore its a void function. But both
variables will/can be changed in the process, therefore the reference
operator '&'.

 

Many newbies do not use const and referencing, yielding code like:

 

  -------------------------------------------------
  ` int CalculateSquare(int value); //Incorrect!`
  -------------------------------------------------

 

Newbies are easily spotted from their function prototypes. In this
function the value of 'value' is copied, squared and returned. Why make
a copy? The only reason you WANT a copy is when e.g. using a function
that uses referencing or when you temporarily want to modify a copy of a
variable:

 

  ------------------------------------------------------------------------------------------------------------------------
  ` void PerformMagic(const std::string& s) {   const std::string t = s;   t[0] = "X";   std::cout << t << std::endl; }`
  ------------------------------------------------------------------------------------------------------------------------

 

In this case, you just use:

 

  --------------------------------------------------------------------------------------
  ` void PerformMagic(std::string s) {   s[0] = "X";   std::cout << s << std::endl; }`
  --------------------------------------------------------------------------------------

 

 

 

 

 

[Pointers](CppPointer.htm)
--------------------------

 

When using pointers, const can be used twice for every argument.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyStruct { int mX; };  void Transmogrify1(const MyStruct * p) {   // p->mX = 12; //Error: cannot modify where p points to   p = 0; // Okay, won't do harm to p }  void Transmogrify2(MyStruct * const p) {   p->mX = 12; // Okay, can modify where p points to   // p = 0; // Error: cannot modify pointer }  void Transmogrify3(const MyStruct * const p) {   // p->mX = 12; // Error: cannot modify where p points to   // p = 0; // Error: cannot modify pointer }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To indicate that MyStruct is only read from, use Transmogrify1 and
Transmogrify3.

 

Use [const](CppConst.htm) whenever possible \[1-7\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Paragraph 7.9.3:
    'Use const extensively and consistently'
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 3: 'Use const whenever possible'
3.  [Jarrod Hollingworth](CppJarrodHollingworth.htm),[Bob
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
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 15: 'Use const proactively'
7.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.1.6: 'Every object in a system
    should be const-correct'
8.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
