

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Hello World using C++ Builder](CppHelloWorldCppBuilder.htm)
=============================================================================

 

[Hello World](CppHelloWorld.htm) (or 'The Hello World program') is a
standard example program to see if your programming environment works.
Note that this example code is not standarized, so multiple and similar
variants are on the Internet. A more demanding example is [Hello
Boost](CppHelloBoost.htm), which also tests if the [Boost](CppBoost.htm)
[libraries](CppLibrary.htm) are installed correctly.

 

-   [Watch my YouTube movie 'How to create a Hello World program in C++
    Builder' in English](http://youtube.com/watch?v=VlypSzepsKA)
-   [Watch my YouTube movie 'How to create a Hello World program in C++
    Builder' in Dutch](http://youtube.com/watch?v=NLbHC0j26sA)

 

The ([C++](Cpp.htm)) code of [Hello World](CppHelloWorld.htm) is as
follows:

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

In [C++ Builder](CppBuilder.htm), when the program is run, a window pops
up and immediatly disappears. This is okay (because the program runs).
If you want the program to wait for a key press, change the code to the
following:

 

  ------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n";   std::cin.get(); }`
  ------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
