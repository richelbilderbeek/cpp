
 

 

 

 

 

([C++](Cpp.md)) [Hello World using C++ Builder](CppHelloWorldCppBuilder.md)
=============================================================================

 

[Hello World](CppHelloWorld.md) (or 'The Hello World program') is a
standard example program to see if your programming environment works.
Note that this example code is not standarized, so multiple and similar
variants are on the Internet. A more demanding example is [Hello
Boost](CppHelloBoost.md), which also tests if the [Boost](CppBoost.md)
[libraries](CppLibrary.md) are installed correctly.

 

-   [Watch my YouTube movie 'How to create a Hello World program in C++
    Builder' in English](http://youtube.com/watch?v=VlypSzepsKA)
-   [Watch my YouTube movie 'How to create a Hello World program in C++
    Builder' in Dutch](http://youtube.com/watch?v=NLbHC0j26sA)

 

The ([C++](Cpp.md)) code of [Hello World](CppHelloWorld.md) is as
follows:

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

In [C++ Builder](CppBuilder.md), when the program is run, a window pops
up and immediatly disappears. This is okay (because the program runs).
If you want the program to wait for a key press, change the code to the
following:

 

  ------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n";   std::cin.get(); }`
  ------------------------------------------------------------------------------------------

 

 

 

 

 

 

