

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Why do you use \[a certain style/syntax\]?](CppStyle.htm)
===========================================================================

 

[FAQ](CppFaq.htm) about my personal style and syntax.

 

 

 

 

 

Not returning const int in main
-------------------------------

 

I use [const](CppConst.htm) whenever possible \[3-8\], so I nearly
always use [const return types](CppConstReturnType.htm).

 

I do write:

 

  ----------------------------
  ` int main() {   //Code }`
  ----------------------------

 

I do not write:

 

  ------------------------------------------------------------------
  ` const int main() //Not my style and non-standard {   //Code }`
  ------------------------------------------------------------------

 

This is because the standard states that main has one of the following
syntaxes \[1\] :

 

  -----------------------------------
  ` int main() { /* Your code */ }`
  -----------------------------------

 

and

 

  ---------------------------------------------------------
  ` int main(int argc, char* argv[]) { /* Your code */ }`
  ---------------------------------------------------------

 

I choose to stick with the standard.

 

 

 

 

 

Not returning zero in main
--------------------------

 

When main reaches its closing bracket, I never write explicity to let
main return a zero.

 

I do write:

 

  ----------------------------
  ` int main() {   //Code }`
  ----------------------------

 

I do not write:

 

  -------------------------------------------------------
  ` int main() {   //Code   return 0; //Not my style }`
  -------------------------------------------------------

 

This is because the standard states that the closing bracket of main()
must have the same effect of returning zero \[2\]. Therefore, return
zero can be omitted. And I do so.

 

 

 

 

 

[References](CppReference.htm)
------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 3.6.1.2
2.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 3.6.1.5
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 7.9.3: 'Use const
    extensively and consistently'
4.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd
    edition).ISBN: 0-321-33487-6. Item 3: 'Use const whenever possible'
5.  [Jarrod Hollingworth](CppJarrodHollingworth.htm), [Bob
    Swart](CppBobSwart.htm), [Mark Cashman](CppMarkCashman.htm), [Paul
    Gustavson](CppPaulGustavson.htm). Sams C++ Builder 6
    Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Understand and
    use const in your code'
6.  [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 8, chapter 'Const member
    functions': 'Use const whenever possible.'
7.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: 'Prefer consts, enums and inlines to
    \#defines'
8.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 15:
    'Use const proactively'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
