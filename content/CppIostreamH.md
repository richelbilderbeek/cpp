



 

 

 

 

 

([C++](Cpp.htm)) [iostream.h](CppIostreamH.htm)
===============================================

 

[iostream.h](CppIostreamH.htm) is the [header file](CppHeaderFile.htm)
containg the [definitions](CppDefinition.htm) from input and output
[streams](CppStream.htm) like [std::cout](CppCout.htm) and
[std::cin](CppCin.htm).

 

 

 

 

 

  -----------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello world" << std::endl; }`
  -----------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Forgetting to [include](CppInclude.htm) the
    &lt;[iostream](CppIostreamH.htm)&gt; [header](CppHeaderFile.htm) in
    a program that inputs data from the keyboard or outputs data to the
    screen causes the [compiler](CppCompiler.htm) to issue an
    [error](CppCompileError.htm) message \[1\], for example ['cout' is
    not a member of 'std'](CppCompileErrorCoutIsNotAmemberOfStd.htm)

 

 

 

 

 

[References](CppReference.htm)
------------------------------

 

1.  Paul Deitel, Harvey Deitel. C++11 for progrgrammers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.2, Common Programming
    Error 2.1. page 21: 'Forgetting to include the &lt;iostream&gt;
    header in a program that inputs data from the keyboard or outputs
    data to the screen causes the compiler to issue an error message'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
