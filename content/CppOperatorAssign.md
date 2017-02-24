

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [operator=](CppOperatorAssign.htm)
===================================================

 

[operator=](CppOperatorAssign.htm) is an [operator](CppOperator.htm),
that is called the [assign operator](CppOperatorAssign.htm) and
[assignment operator](CppOperatorAssign.htm).

 

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

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   In [class design](CppClassDesign.htm), have [assignment
    operators](CppOperatorAssign.htm) return a reference to
    \*[this](CppThis.htm) \[1,3\].
-   In [class design](CppClassDesign.htm), also handle assignment to
    self \[2,4\]. To handle assignment to self there are two techniques:
    'identity test' or 'copy and swap'.
-   Prefer the [{}-initializer](CppListInitialization.htm)
    [syntax](CppSyntax.htm) for [declarations](CppDeclaration.htm) with
    a named type \[7\]. Prefer the [=](CppOperatorAssign.htm)
    [syntax](CppSyntax.htm) for the
    [initialization](CppListInitialization.htm) in
    [declarations](CppDeclaration.htm) using [auto](CppAuto.htm) \[6\]
-   Reversing the order of the pair of symbols in the
    [operators](CppOperator.htm) [!=](CppOperatorNotEqual.htm),
    [&gt;=](CppOperatorGreaterEqual.htm) and
    [&lt;=](CppOperatorLessEqual.htm) (by writing them as =!, =&gt; and
    =&lt; respectively) is normally a [syntax error](CppSyntaxError.htm)
    \[5\]
-   

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 10: Have assignment operators
    return a reference to \*this.
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd
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
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[20\] Prefer the = syntax for the initialization
    in declarations using auto'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[19\] Prefer the {}-initializer syntax for
    declarations with a named type'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
