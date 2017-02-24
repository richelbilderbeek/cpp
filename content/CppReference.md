
 

 

 

 

 

([C++](Cpp.md)) [Reference](CppReference.md)
==============================================

 

A [function](CppFunction.md) [argument](CppArgument.md) can be passed
by copy, [reference](CppReference.md) or [pointer](CppPointer.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------
  ` void f(T  t); //t is a copy of the value passed void f(T &t); //t is the value passed void f(T* t); //t is a pointer to the value passed passed`
  ----------------------------------------------------------------------------------------------------------------------------------------------------

 

When a [function](CppFunction.md) [argument](CppArgument.md) is passed
by [reference](CppReference.md), the [function](CppFunction.md) can
modify the original [variable](CppVariable.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  void swap(int& x, int& y) {   const int temp = x;   x = y;   y = temp; }  int main() {   int value1 = 1;   int value2 = 2;   swap(value1,value2);   assert(value1==2);   assert(value2==1); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Prefer [const](CppConst.md) [reference](CppReference.md)
[arguments](CppArgument.md) to plain [reference](CppReference.md)
[arguments](CppArgument.md) \[1\]. Use [const](CppConst.md)
[reference](CppReference.md) to express immutability in
[interfaces](CppInterface.md) \[2\]. Prefer
[references](CppReference.md) to [pointers](CppPointer.md) as
[arguments](CppArgument.md), except where "no object" is a reasonable
option \[3\]. Use pass-by-const-reference to pass large values that you
don't need to modify, use pass-by-non-const-reference only if you have
to \[5\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[9\] Prefer const reference arguments to plain
    reference arguments'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[13\] Use const pointers and const references to
    express immutability in interfaces'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[14\] Prefer references to pointers as
    arguments, except where "no object" is a reasonable option'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[8\] Use pass-by-const-reference to pass large
    values that you don't need to modify'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[12\] Use pass-by-non-const-reference only if
    you have to'

 

 

 

 

 

 

