



 

 

 

 

 

([C++](Cpp.htm)) [scope](CppScope.htm)
======================================

 

The [scope](CppScope.htm) of a [variable](CppVariable.htm) is the area
where its name is valid.

 

There are multiple types of [scope](CppScope.htm) \[10\]:

-   [local scope](CppLocalScope.htm)
-   [class scope](CppClassScope.htm)
-   [namespace scope](CppNamespaceScope.htm)
-   [global scope](CppGlobalScope.htm)
-   [statement scope](CppStatementScope.htm)
-   [function scope](CppFunctionScope.htm)

 

A [variable](CppVariable.htm) [declared](CppDeclaration.htm) inside a
[function](CppFunction.htm) is only valid inside that
[function](CppFunction.htm). Thus its [scope](CppScope.htm) is inside
the [function](CppFunction.htm).

 

A [scope](CppScope.htm) is defined by accolades, as shown in the
commented example below:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>   int main() {   //Start of main() scope   int a = 0;   {     //Start of scope inside of main() scope     int b = 0;   } //b goes out of scope   for (int i=0; i!=10; ++i)   {     //Start of for-loop scope in main() scope     //Note: i is scoped to here     std::cout << i << ": Hello world\n";   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

A [variable](CppVariable.htm) 'without scope' is called a
[global](CppGlobal.htm) [variable](CppVariable.htm). Avoid using
[global](CppGlobal.htm) data \[1-5,8-9\]. When the
[compiler](CppCompiler.htm) can choose between a [global](CppGlobal.htm)
and [local](CppLocal.htm) [variable](CppVariable.htm) with the same
name, the [local](CppLocal.htm) will be used, as shown in the example
below:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream>  int a = 1; //Global 'a'  int main() {   int a = 2; //Local 'a'   assert(a==2);   assert(::a==1); //Use scope operator to get global 'a' }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Keep scopes small \[6,11\] . Don't use the same name in both a scope and
an enclosing scope \[7,12\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 10:
    'Minimize global and shared data'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm) . C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 18:
    'Declare variables as locally as possible'.
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition).ISBN: 0-201-88954-4. Chapter 1.8.2.a: 'Don't
    use global data (use members)'
4.  [Jarrod Hollingworth](CppJarrodHollingworth.htm) , Bob Swart, Mark
    Cashman, Paul Gustavson. Sams C++ Builder 6 Developer's Guide.
    ISBN: 0-672-32480-6. Chapter 3: 'Avoid using global variables'
5.  [Jesse Liberty](CppJesseLiberty.htm) . Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 5, paragraph 'Global variables':
    'In C++, global variables are avoided because they can create very
    confusing code that is hard to maintain.'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 4.10.1:
    'Keep scopes small'.
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm) . The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 4.10.2:
    'Don't use the same name in both a scope and an enclosing scope'.
8.  Stephen C. Dewhurst. C++ Gotchas. 2003. ISBN: 0-321-12518-5. Gotcha
    \#3: 'Avoid global variables'.
9.  [C++ FAQ Lite](http://www.parashift.com/c++-faq/global-vars.html):
    'The names of global variables should start with //' and 'Instead of
    using a global variable, you should seriously consider if there are
    ways to limit the variable's visibility and/or lifetime'.
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2.
    Chapter 6.3.4. Scope, page 157
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[17\] Keep scopes small'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[18\] Don't use the same name in both a scope
    and its enclosing scope'

 

 

 

 

 





 



