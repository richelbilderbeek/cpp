[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [argument](CppArgument.htm)
============================================

 

-   argument &lt;function call expression&gt;: expression in the
    comma-separated list bounded by the parentheses \[1\]
-   argument &lt;function-like macro&gt; sequence of preprocessing
    tokens in the comma-separated list bounded by the parentheses \[2\]
-   argument &lt;throw expression&gt; the operand of throw \[3\]
-   argument &lt;template instantiation&gt; expression, type-id or
    template-name in the comma-separated list bounded by the angle
    brackets \[4\]

 

An [argument](CppArgument.htm) is a value that a
[function](CppFunction.htm) or [member function](CppMemberFunction.htm)
needs to perform its task. In a [function
declaration](CppFunctionDeclaration.htm) [arguments](CppArgument.htm)
are seperated by comma's.

 

 

 

 

 

Examples
--------

 

The [function](CppFunction.htm) 'SayHello' below does not need an
[argument](CppArgument.htm): all it does it put the text 'Hello' on
screen. It does not need additional information to perform its task.

 

  ------------------------------------------------------------------------
  ` #include <iostream>   void SayHello() {   std::cout << "Hello\n"; }`
  ------------------------------------------------------------------------

 

The [function](CppFunction.htm) 'SayHelloManyTimes' below needs one
[argument](CppArgument.htm): how often to put the text 'Hello' on
screen. The part '[const](CppConst.htm) [int](CppInt.htm) n' is said to
be the first and only [argument](CppArgument.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void SayHelloManyTimes(const int n) {   for (int i=0; i!=n; ++i)   {     std::cout << "Hello\n";   } }`
  --------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Working Draft, Standard for Programming Language C++.
    International Standard. ISO/IEC document number N3936. 2014-08-22.
    Paragraph 1.3.1
2.  Working Draft, Standard for Programming Language C++.
    International Standard. ISO/IEC document number N3936. 2014-08-22.
    Paragraph 1.3.2
3.  Working Draft, Standard for Programming Language C++.
    International Standard. ISO/IEC document number N3936. 2014-08-22.
    Paragraph 1.3.3
4.  Working Draft, Standard for Programming Language C++.
    International Standard. ISO/IEC document number N3936. 2014-08-22.
    Paragraph 1.3.4

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
