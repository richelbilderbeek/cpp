[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [main](CppMain.htm)
====================================

 

The [main](CppMain.htm) [function](CppFunction.htm) is the entry point
of your program. Have [main](CppMain.htm) [catch](CppCatch.htm) and
report every exception \[7\].

 

The C++ Standard \[1\] states that it has one of the following syntaxes:

 

  -----------------------------------
  ` int main() { /* Your code */ }`
  -----------------------------------

 

and

 

  ---------------------------------------------------------
  ` int main(int argc, char* argv[]) { /* Your code */ }`
  ---------------------------------------------------------

 

What does this all mean?

 

1.  '**[int](CppInt.htm)** [main](CppMain.htm)': means that
    [main](CppMain.htm) is a [function](CppFunction.htm)
    [returning](CppReturn.htm) an [integer](CppInt.htm). This
    [integer](CppInt.htm) is an error code given back to the [operating
    system](CppOs.htm) the program has run on.
2.  '(**[int](CppInt.htm)** [argc](CppArgc.htm), [char](CppChar.htm)\*
    [argv](CppArgv.htm)\[\])' means that the [function](CppFunction.htm)
    takes two [arguments](CppArgument.htm):
    1.  '**[int](CppInt.htm)** [argc](CppArgc.htm)': [argc](CppArgc.htm)
        is an abbreviation of 'argument count'. It is a (positive)
        [integer](CppInt.htm). This give you the number of parameters
        the user entered when starting the program, which equals 1 if he
        didn't enter parameters.
    2.  '[char](CppChar.htm)\* [argv](CppArgv.htm)\[\]': an
        [array](CppArray.htm) of [pointers](CppPointer.htm) to type
        [char](CppChar.htm) (say: '[character](CppChar.htm)
        [pointer](CppPointer.htm)'). In [argv](CppArgv.htm), all the
        arguments are stored that the user entered when starting
        the program. At index 0, the program's name is stored.

 

When [main](CppMain.htm)'s closing bracket is reached, the effect is
equivalent to \[6,8\]:

 

  --------------
  ` return 0;`
  --------------

 

You could leave out the arguments of [main](CppMain.htm). Then the
correct syntax depends on whether you program in C or C++.

 

Correct C syntax is:

 

  ------------------------------------------------------------------------------------------------------
  ` /* Correct C syntax, not correct C++ syntax */ int main(void) {   /* Your C code */   return 0; }`
  ------------------------------------------------------------------------------------------------------

 

Unlike C, where one writes [void](CppVoid.htm) when a
[function](CppFunction.htm) does not have arguments, in C++, when a
[function](CppFunction.htm) has no arguments, nothing is written between
the brackets. See the [void](CppVoid.htm) for more detailed discussion
and references.

 

Correct C++ syntax of a [main](CppMain.htm)() that does not use its
arguments, is \[1\]:

 

  ----------------------------------------------------------
  ` //Correct C++ syntax int main() {   //Your C++ code }`
  ----------------------------------------------------------

 

Note that the standard states that the closing bracket of
[main](CppMain.htm)() must have the same effect of returning zero
\[6,8\]. Therefore, return zero can be omitted, but many people like to
keep it in.

 

Incorrect/non-standard is \[1-5\] (although with some
[compilers](CppCompiler.htm) it might [compile](CppCompile.htm)):

 

  -------------------------------------------------
  ` void main() //INCORRECT!!! {   //Your code }`
  -------------------------------------------------

 

Below is an example showing all parameters a user entered.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>   int main(int argc, char* argv[]) {   for(int i=0; i!=argc; ++i)   {     std::cout << i << " : " << argv[i] << std::endl;   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------

 

This means if you start the program with e.g.

 

  -------------------------
  ` testMain Hello World`
  -------------------------

 

Your output will be something like:

 

  -------------------------------------
  ` 0 : testMain 1 : Hello 2 : World`
  -------------------------------------

 

 

 

 

Should I use void main() or int main()?
---------------------------------------

 

[int](CppInt.htm) [main](CppMain.htm)() \[1-5\].

 

 

 

 

 

Should I use int main() or int main(void)?
------------------------------------------

 

-   C: [int](CppInt.htm) [main](CppMain.htm)([void](CppVoid.htm)) \[9\]
-   C++: [int](CppInt.htm) [main](CppMain.htm)() \[9\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 3.6.1.2
2.  From http://www.parashift.com/c++-faq-lite/newbie.html\#faq-29.3:\
     \
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     main() must return int. Not void, not bool, not float. int. Just int, nothing but int, only     int. Some compilers accept void main(), but that is non-standard and shouldn't     be used. Instead use int main().     `
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     
3.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN:0-201-61562-2. Item 21: void main() is nonstandard
    and nonportable.
4.  From [Bjarne Stroustrup](CppBjarneStroustrup.htm)'s homepage
    (http://www.research.att.com/\~bs/bs\_faq2.html\#void-main):\
     \
      -------------------------------------------------------------------------------------------------------------------------------
      `     The definition          void main() { /* ... */ }          is not and never has been C++, nor has it even been C.     `
      -------------------------------------------------------------------------------------------------------------------------------

     
5.  From the The alt.comp.lang.learn.c-c++ FAQ:
    http://ma.rtij.nl/acllc-c++.FAQ.html\#q3.4: 3.4: Why does everyone
    make so much fuss about "void main()"?\
     \
      ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     Because the return type of the main() function must be int in both C and C++. Anything else is undefined. Bottom line - don't try to start a thread about this in alt.comp.lang.learn.c-c++ as it has already been discussed many, many times and generates more flamage than any other topic.     `
      ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     
6.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 3.6.1.5
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[27\] 'Have main() catch and report every
    exception'
8.  Working Draft, Standard for Programming Language C++.
    International Standard. ISO/IEC document number N3936. 2014-08-22.
    Paragraph 3.6.1.5
9.  Working Draft, Standard for Programming Language C++.
    2014-08-22. N3936. Paragraph C.1.7. First change. 'In C++, a
    function declared with an empty parameter list takes no arguments.
    In C, an empty parameter list means that the number and type of the
    function arguments are unknown.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
