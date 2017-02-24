



 

 

 

 

 

([C++](Cpp.htm)) [const member function](CppConstMemberFunction.htm)
====================================================================

 

A [const member function](CppConstMemberFunction.htm) is a type of
[member function](CppMemberFunction.htm) that will not change the value
of its [class](CppClass.htm) [members](CppMember.htm) when called.

 

'A [constant member function](CppConstMemberFunction.htm) is a
[function](CppMemberFunction.htm) which may not modify [data
members](CppDataMember.htm).' \[11\]

 

In [class design](CppClassDesign.htm), a [const member
function](CppConstMemberFunction.htm) reflects a read-only member
function.

 

[Exercise 5: the many types of
const](CppExerciseTheManyTypesOfConst.htm) is an exercise about the many
types of [const](CppConst.htm).

 

 

 

 

 

Keeping a read-only method const using mutable
----------------------------------------------

 

In a class, when you see the following member function:

 

  ----------------------------------------------------------------------
  ` struct MyClass {   double GetValue() const { /* SOMETHING */ } };`
  ----------------------------------------------------------------------

 

 

You know it's a function that does not alter the member variables or the
class.

 

But imagine that getting this value is a very time-intensive process.
Then you might want the class to also store the amount of times this
function has been called. Then you would use:

 

  ------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   double GetValue()   {     ++mRequests; //A member variable     return mValue;   } };`
  ------------------------------------------------------------------------------------------------------------

 

Although this is one of those occasions to use mutable, as every
programmer expects a getter to be const:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   double GetValue() const   {     ++mRequests; //A member variable     return mValue;   }   private:   mutable int mRequests; };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [const](CppConst.htm) whenever possible \[1-5\]
-   Declare a [member function](CppMemberFunction.htm) that does not
    modify the state of its object a [const member
    function](CppConstMemberFunction.htm) \[9,10\]
-   [Avoid duplication in const and non-const member
    functions](CppAvoidDuplicationInConstAndNonConstMemberFunctions.htm)
    \[7,8\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 7.9.3:
    'Use const extensively and consistently'
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 3: 'Use const whenever possible'
3.  [Jarrod Hollingworth](CppJarrodHollingworth.htm), [Bob
    Swart](CppBobSwart.htm), [Mark Cashman](CppMarkCashman.htm), [Paul
    Gustavson](CppPaulGustavson.htm). Sams C++ Builder 6
    Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Understand and
    use const in your code'
4.  [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. 2001. ISBN: 0-672-32224-2. Hour 8, chapter 'Const member
    functions': 'Use const whenever possible.'
5.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: 'Prefer consts, enums and inlines to
    \#defines'
6.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 15: 'Use const proactively'
7.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 94: 'Avoid casting away const', item 'Exceptions'
8.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 3, paragraph 'Avoid duplication in const
    and non-const member functions'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[6\] Declare a member function that does not
    modify the state of its object const'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[10\] Make a member function that doesn't modify
    the value of an object a const member function'
11. Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. 4.3.9: 'A constant member function is a
    function which may not modify data members.'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
