



 

 

 

 

 

([C++](Cpp.md)) [argument](CppArgument.md)
============================================

 

-   argument &lt;function call expression&gt;: expression in the
    comma-separated list bounded by the parentheses \[1\]
-   argument &lt;function-like macro&gt; sequence of preprocessing
    tokens in the comma-separated list bounded by the parentheses \[2\]
-   argument &lt;throw expression&gt; the operand of throw \[3\]
-   argument &lt;template instantiation&gt; expression, type-id or
    template-name in the comma-separated list bounded by the angle
    brackets \[4\]

 

An [argument](CppArgument.md) is a value that a
[function](CppFunction.md) or [member function](CppMemberFunction.md)
needs to perform its task. In a [function
declaration](CppFunctionDeclaration.md) [arguments](CppArgument.md)
are seperated by comma's.

 

 

 

 

 

Examples
--------

 

The [function](CppFunction.md) 'SayHello' below does not need an
[argument](CppArgument.md): all it does it put the text 'Hello' on
screen. It does not need additional information to perform its task.

 

  ------------------------------------------------------------------------
  ` #include <iostream>   void SayHello() {   std::cout << "Hello\n"; }`
  ------------------------------------------------------------------------

 

The [function](CppFunction.md) 'SayHelloManyTimes' below needs one
[argument](CppArgument.md): how often to put the text 'Hello' on
screen. The part '[const](CppConst.md) [int](CppInt.md) n' is said to
be the first and only [argument](CppArgument.md).

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void SayHelloManyTimes(const int n) {   for (int i=0; i!=n; ++i)   {     std::cout << "Hello\n";   } }`
  --------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
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

 

 

 

 

 





 



