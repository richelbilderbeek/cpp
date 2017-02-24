[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [definition](CppDefinition.htm)
================================================

 

'A [definition](CppDefinition.htm) of a [function](CppFunction.htm)
tells the [compiler](CppCompiler.htm) how the
[function](CppFunction.htm) works. It shows what instructions are
executed for the [function](CppFunction.htm).' \[3\]

 

'A [definition](CppDefinition.htm) provides a unique description of an
entity (for example, [type](CppDataType.htm),
[instance](CppInstance.htm), [function](CppFunction.htm)) within a
program' \[1\].

 

There are two types of [definitions](CppDefinition.htm):

 

1.  A [variable](CppVariable.htm) [definition](CppDefinition.htm) is a
    [variable](CppVariable.htm) [declaration](CppDeclaration.htm) with
    specifying an initial value
2.  A [function](CppFunction.htm) [definition](CppDefinition.htm) is a
    [function](CppFunction.htm) [declaration](CppDeclaration.htm) with
    specifying the [function](CppFunction.htm) body

 

 

 

 

 

[Variable](CppVariable.htm) [definition](CppDefinition.htm)
-----------------------------------------------------------

 

A [variable](CppVariable.htm) [definition](CppDefinition.htm) is a
[variable](CppVariable.htm) [declaration](CppDeclaration.htm) with
specifying an initial value.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int main() {   //Declaration of 'declared_value', initial value undefined    int declared_value;    //Definition of variable 'value'   const int value = 3; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

[Function](CppFunction.htm) [definition](CppDefinition.htm)
-----------------------------------------------------------

 

A [function](CppFunction.htm) [definition](CppDefinition.htm) is a
[function](CppFunction.htm) [declaration](CppDeclaration.htm) with
specifying the [function](CppFunction.htm) body.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //A function declaration double calculateZogsmurk(const std::vector<double>& myVector)  //A function definition double calculateSum(const std::vector<double>& myVector) {   double sum = 0.0;   const int size = myVector.size();   for (int i=0; i!=size; ++i)   {     sum+=myVector[i];   }   return sum; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Postpone [variable](CppVariable.htm)
    [definitions](CppDefinition.htm) as long as possible \[2\]
-   Forgetting the semicolon at the end of a [class](CppClass.htm)
    [definition](CppDefinition.htm) is a [syntax
    error](CppSyntaxError.htm) \[3\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 1.1.1
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 26: 'Postpone variable definitions as long
    as possible'.
3.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. 4.3.15: 'A definition of a function tells the
    compiler how the function works. It shows what instructions are
    executed for the function.'
4.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.1, Common Programming
    Error 3.1. page 39: 'Forgetting the semicolon at the end of a class
    definition is a syntax error.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
