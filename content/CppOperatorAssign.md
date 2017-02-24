
 

 

 

 

 

([C++](Cpp.md)) [operator=](CppOperatorAssign.md)
===================================================

 

[operator=](CppOperatorAssign.md) is an [operator](CppOperator.md),
that is called the [assign operator](CppOperatorAssign.md) and
[assignment operator](CppOperatorAssign.md).

 

  ------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   MyClass& operator=(const MyClass& rhs)   {     //Copy the class members     return *this;   } };`
  ------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Handle assignment to self: Identity test
----------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   MyClass& operator=(const MyClass& rhs)   {     //'Identity test'     if (this == &rhs) return *this;       //Copy     //...       //Return *this     return *this;   } };`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Handle assignment to self: Copy and swap
----------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   MyClass& operator=(MyClass tempCopy) //'Copy' (by passing by value)   {     //'Swap'     Swap(tempCopy); //Swaps the data of temp with *this       return *this;   }     void Swap(MyClass& m)   {     //Swap data of m with this     std::swap(mX, m.mX);     //Other data...   }    int mX; //Just to have a member variable };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   In [class design](CppClassDesign.md), have [assignment
    operators](CppOperatorAssign.md) return a reference to
    \*[this](CppThis.md) \[1,3\].
-   In [class design](CppClassDesign.md), also handle assignment to
    self \[2,4\]. To handle assignment to self there are two techniques:
    'identity test' or 'copy and swap'.
-   Prefer the [{}-initializer](CppListInitialization.md)
    [syntax](CppSyntax.md) for [declarations](CppDeclaration.md) with
    a named type \[7\]. Prefer the [=](CppOperatorAssign.md)
    [syntax](CppSyntax.md) for the
    [initialization](CppListInitialization.md) in
    [declarations](CppDeclaration.md) using [auto](CppAuto.md) \[6\]
-   Reversing the order of the pair of symbols in the
    [operators](CppOperator.md) [!=](CppOperatorNotEqual.md),
    [&gt;=](CppOperatorGreaterEqual.md) and
    [&lt;=](CppOperatorLessEqual.md) (by writing them as =!, =&gt; and
    =&lt; respectively) is normally a [syntax error](CppSyntaxError.md)
    \[5\]
-

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 10: Have assignment operators
    return a reference to \*this.
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 11: Handle assignment to self
    in operator=.
3.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 82: 'An assignment operator shall
    return a reference to \*this.'
4.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 81: 'The assignment operator shall
    handle self-assignment correctly'
5.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Common Programming
    Error 2.2. page 32: 'Reversing the order of the pair of symbols in
    the operators !=, &gt;= and &lt; (by writing them as =!, =&gt; and
    =&lt; respectively) is normally a syntax error. In some cases,
    writing != as =! will not be a syntax error, but almost certainly
    will be a logic error that has an effect at execution time.'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[20\] Prefer the = syntax for the initialization
    in declarations using auto'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[19\] Prefer the {}-initializer syntax for
    declarations with a named type'

 

 

 

 

 

 

