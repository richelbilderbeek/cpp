

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Exercise \#6: refactoring quadratic solver](CppExerciseRefactoringQuadraticSolver.htm)
========================================================================================================

 

Difficulty: 2/10

Date added: 21th of July 2008

 

In this [exercise](CppExercise.htm) you must refactor a class that is
given as an example in reference \[1\]. You will learn how to think to
correctly refactor a class and that literature does not always set a
good examples.

 

A quadratic equation is an equation in the form 'ax^2^ + bx + c = 0'.
For which x or x's is this true? The number of solutions this equation
has is determined by the discrimant: D = b^2^ - 4ac. If D is smaller
then zero, the equation has no solutions. If D equals zero, the solution
to the equation is x = -b/2a. If D is bigger then zero, the solutions
are x = (-b-sqrt(D)) / (2a) and x = (-b+sqrt(D)) / (2a).

 

Below of a piece of code (from \[1\]) demonstrating a class to solve a
quadratic equation. Can you refactor this class to follow good [class
design](CppClassDesign.htm), [member function
design](CppMemberFunctionDesign.htm), [function
design](CppFunctionDesign.htm) and good thinking?

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath>  using namespace std;  class Qs { public:   void coeff(double aa, double bb, double cc)   {     a = aa;     b = bb;     c = cc;   }   bool solve()   {     double D = b * b - 4 * a * c;     if (a == 0 || D < 0) return false;     double rD = sqrt(D);     x1 = (-b + rD)/(2 * a);     x2 = (-b - rD)/(2 * a);     return true;   }   double root1() const { return x1; }   double root2() const { return x2; }   private:   double a,b,c,x1,x2; }; `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[View the answer of this
exercise](CppExerciseRefactoringQuadraticSolverAnswer.htm).

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Leen Ammeraal. C++ (6th edition). ISBN: 90-395-1935-8. 2001

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
