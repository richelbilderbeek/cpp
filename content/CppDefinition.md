



 

 

 

 

 

([C++](Cpp.md)) [definition](CppDefinition.md)
================================================

 

'A [definition](CppDefinition.md) of a [function](CppFunction.md)
tells the [compiler](CppCompiler.md) how the
[function](CppFunction.md) works. It shows what instructions are
executed for the [function](CppFunction.md).' \[3\]

 

'A [definition](CppDefinition.md) provides a unique description of an
entity (for example, [type](CppDataType.md),
[instance](CppInstance.md), [function](CppFunction.md)) within a
program' \[1\].

 

There are two types of [definitions](CppDefinition.md):

 

1.  A [variable](CppVariable.md) [definition](CppDefinition.md) is a
    [variable](CppVariable.md) [declaration](CppDeclaration.md) with
    specifying an initial value
2.  A [function](CppFunction.md) [definition](CppDefinition.md) is a
    [function](CppFunction.md) [declaration](CppDeclaration.md) with
    specifying the [function](CppFunction.md) body

 

 

 

 

 

[Variable](CppVariable.md) [definition](CppDefinition.md)
-----------------------------------------------------------

 

A [variable](CppVariable.md) [definition](CppDefinition.md) is a
[variable](CppVariable.md) [declaration](CppDeclaration.md) with
specifying an initial value.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int main() {   //Declaration of 'declared_value', initial value undefined    int declared_value;    //Definition of variable 'value'   const int value = 3; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

[Function](CppFunction.md) [definition](CppDefinition.md)
-----------------------------------------------------------

 

A [function](CppFunction.md) [definition](CppDefinition.md) is a
[function](CppFunction.md) [declaration](CppDeclaration.md) with
specifying the [function](CppFunction.md) body.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //A function declaration double calculateZogsmurk(const std::vector<double>& myVector)  //A function definition double calculateSum(const std::vector<double>& myVector) {   double sum = 0.0;   const int size = myVector.size();   for (int i=0; i!=size; ++i)   {     sum+=myVector[i];   }   return sum; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Postpone [variable](CppVariable.md)
    [definitions](CppDefinition.md) as long as possible \[2\]
-   Forgetting the semicolon at the end of a [class](CppClass.md)
    [definition](CppDefinition.md) is a [syntax
    error](CppSyntaxError.md) \[3\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 1.1.1
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
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

 

 

 

 

 





 



