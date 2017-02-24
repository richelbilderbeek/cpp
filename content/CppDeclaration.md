
 

 

 

 

 

([C++](Cpp.md)) [declaration](CppDeclaration.md)
==================================================

 

'A [declaration](CppDeclaration.md) introduces a name into a program'
\[1\].

 

'A [declaration](CppDeclaration.md) of a [variable](CppVariable.md) or
[function](CppFunction.md) announces the properties of the
[variable](CppVariable.md) or [function](CppFunction.md); it consists
of a [type name](CppTypeName.md) and then the
[variable](CppVariable.md) or [function](CppFunction.md) name. For
[functions](CppFunction.md), it tells the [compiler](CppCompiler.md)
the name, [return type](CppReturnType.md) and
[parameters](CppParameter.md). For [variables](CppVariable.md), it
tells the [compiler](CppCompiler.md) the name and [type](CppType.md).'
\[3\]

 

There are multiple types of [declarations](CppDeclaration.md):

1.  A [variable](CppVariable.md) [declaration](CppDeclaration.md) is
    naming a [variable](CppVariable.md) to be used.
2.  A [function](CppFunction.md) [declaration](CppDeclaration.md) is
    naming a [function](CppFunction.md) to be
    [defined](CppDefinition.md).

 

 

 

 

 

Example
-------

 

In the code below, the [function](CppFunction.md) MagicFunction and the
[integer](CppInt.md) x are [declared](CppDeclaration.md).

 

  ----------------------------------------------------
  ` void MagicFunction();  int main() {   int x;  }`
  ----------------------------------------------------

 

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   [Declare](CppDeclaration.md) only one [variable](CppVariable.md)
    in each [declaration](CppDeclaration.md) \[2,4\]
-   When [declaring](CppDeclaration.md) a [variable](CppVariable.md),
    provide a [comment](CppComment.md) that explains the
    [variable](CppVariable.md)'s purpose in the program \[4\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 1.1.1
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
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

 

 

 

 

 

 

