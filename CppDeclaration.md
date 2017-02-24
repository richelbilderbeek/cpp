[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [declaration](CppDeclaration.htm)
==================================================

 

'A [declaration](CppDeclaration.htm) introduces a name into a program'
\[1\].

 

'A [declaration](CppDeclaration.htm) of a [variable](CppVariable.htm) or
[function](CppFunction.htm) announces the properties of the
[variable](CppVariable.htm) or [function](CppFunction.htm); it consists
of a [type name](CppTypeName.htm) and then the
[variable](CppVariable.htm) or [function](CppFunction.htm) name. For
[functions](CppFunction.htm), it tells the [compiler](CppCompiler.htm)
the name, [return type](CppReturnType.htm) and
[parameters](CppParameter.htm). For [variables](CppVariable.htm), it
tells the [compiler](CppCompiler.htm) the name and [type](CppType.htm).'
\[3\]

 

There are multiple types of [declarations](CppDeclaration.htm):

1.  A [variable](CppVariable.htm) [declaration](CppDeclaration.htm) is
    naming a [variable](CppVariable.htm) to be used.
2.  A [function](CppFunction.htm) [declaration](CppDeclaration.htm) is
    naming a [function](CppFunction.htm) to be
    [defined](CppDefinition.htm).

 

 

 

 

 

Example
-------

 

In the code below, the [function](CppFunction.htm) MagicFunction and the
[integer](CppInt.htm) x are [declared](CppDeclaration.htm).

 

  ----------------------------------------------------
  ` void MagicFunction();  int main() {   int x;  }`
  ----------------------------------------------------

 

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   [Declare](CppDeclaration.htm) only one [variable](CppVariable.htm)
    in each [declaration](CppDeclaration.htm) \[2,4\]
-   When [declaring](CppDeclaration.htm) a [variable](CppVariable.htm),
    provide a [comment](CppComment.htm) that explains the
    [variable](CppVariable.htm)'s purpose in the program \[4\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 1.1.1
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[11\] Declare one name (only) per declaration'
3.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. 4.3.13: 'A declaration of a variable or
    function announces the properties of the variable or function; it
    consists of a type name and then the variable or function name. For
    functions, it tells the compiler the name, return type
    and parameters. For variables, it tells the compiler the name and
    type'
4.  Paul Deitel, Harvey Deitel. C++11 for progrgrammers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Good Programming
    Practice 2.3. page 26: 'Declare only one variable in each
    declaration and provide a comment that explains the variable's
    purpose in the program.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
