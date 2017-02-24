[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Reference](CppReference.htm)
==============================================

 

A [function](CppFunction.htm) [argument](CppArgument.htm) can be passed
by copy, [reference](CppReference.htm) or [pointer](CppPointer.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------
  ` void f(T  t); //t is a copy of the value passed void f(T &t); //t is the value passed void f(T* t); //t is a pointer to the value passed passed`
  ----------------------------------------------------------------------------------------------------------------------------------------------------

 

When a [function](CppFunction.htm) [argument](CppArgument.htm) is passed
by [reference](CppReference.htm), the [function](CppFunction.htm) can
modify the original [variable](CppVariable.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  void swap(int& x, int& y) {   const int temp = x;   x = y;   y = temp; }  int main() {   int value1 = 1;   int value2 = 2;   swap(value1,value2);   assert(value1==2);   assert(value2==1); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Prefer [const](CppConst.htm) [reference](CppReference.htm)
[arguments](CppArgument.htm) to plain [reference](CppReference.htm)
[arguments](CppArgument.htm) \[1\]. Use [const](CppConst.htm)
[reference](CppReference.htm) to express immutability in
[interfaces](CppInterface.htm) \[2\]. Prefer
[references](CppReference.htm) to [pointers](CppPointer.htm) as
[arguments](CppArgument.htm), except where "no object" is a reasonable
option \[3\]. Use pass-by-const-reference to pass large values that you
don't need to modify, use pass-by-non-const-reference only if you have
to \[5\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[9\] Prefer const reference arguments to plain
    reference arguments'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[13\] Use const pointers and const references to
    express immutability in interfaces'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[14\] Prefer references to pointers as
    arguments, except where "no object" is a reasonable option'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[8\] Use pass-by-const-reference to pass large
    values that you don't need to modify'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[12\] Use pass-by-non-const-reference only if
    you have to'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
