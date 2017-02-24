



 

 

 

 

 

([C++](Cpp.htm)) [global](CppGlobal.htm)
========================================

 

A [global](CppGlobal.htm) (also: [global variable](CppGlobal.htm)) is a
[variable](CppVariable.htm) that is visible by all code (as opposite of
a [local](CppLocal.htm) [variable](CppVariable.htm), which is only
visible in its [scope](CppScope.htm)). A non-[const](CppConst.htm)
[global](CppGlobal.htm) is one of the biggest contributors of increasing
[state](CppState.htm)-space.

 

[Compare the speed of local versus global
variables](CppLocalVersusGlobal.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Avoid using [global](CppGlobal.htm) data \[1-6,8\]. Instead,
    [declare](CppDeclaration.htm) [variables](CppVariable.htm) as
    [locally](CppLocal.htm) as possible \[7\]

 

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Andrei Alexandrescu](CppAndreiAlexandrescu.htm). Modern C++ Design.
    2001. ISBN: 0201704315. Item 10: 'Minimize global and shared data'.
2.  Stephen C. Dewhurst. C++ Gotchas. 2003. ISBN: 0-321-12518-5. Gotcha
    \#3: 'Avoid global variables'.
3.  [C++ FAQ Lite](http://www.parashift.com/c++-faq/global-vars.html):
    'The names of global variables should start with //' and 'Instead of
    using a global variable, you should seriously consider if there are
    ways to limit the variable's visibility and/or lifetime'.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition).ISBN: 0-201-88954-4. Chapter 1.8.2.a: 'Don't
    use global data (use members)'
5.  [Jarrod Hollingworth](CppJarrodHollingworth.htm) , Bob Swart, Mark
    Cashman, Paul Gustavson. Sams C++ Builder 6 Developer's Guide.
    ISBN: 0-672-32480-6. Chapter 3: 'Avoid using global variables'
6.  [Jesse Liberty](CppJesseLiberty.htm) . Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 5, paragraph 'Global variables':
    'In C++, global variables are avoided because they can create very
    confusing code that is hard to maintain.'
7.  [Andrei Alexandrescu](CppAndreiAlexandrescu.htm). Modern C++ Design.
    2001. ISBN: 0201704315. Item 18: 'Declare variables as locally
    as possible'.
8.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 207: 'Unencapsulated global data will
    be avoided.'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
