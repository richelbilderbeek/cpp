
 

 

 

 

 

([C++](Cpp.md)) [SolveQuadratic](CppSolveQuadratic.md)
========================================================

 

[SolveQuadratic](CppSolveQuadratic.md) is a [math](CppMath.md) [code
snippet](CppCodeSnippets.md) to solve a quadratic equation.

 

[SolveQuadratic](CppSolveQuadratic.md) is demonstrated in the tool
[QuadraticSolver](CppQuadraticSolver.md).

 

[Exercise \#6: refactoring quadratic
solver](CppExerciseRefactoringQuadraticSolver.md) is an
[exercise](CppExercise.md) about refactoring a quadratic equation
solver class.

 

-   [View the code of 'SolveQuadratic' in plain
    text](CppSolveQuadratic.txt)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>  //From http://www.richelbilderbeek.nl/CppSolveQuadratic.htm const std::vector<double> SolveQuadratic(const double a, const double b, const double c) {   if (a == 0.0)    {     if (b == 0.0)        return std::vector<double>(1,0.0);     else       return std::vector<double>(1,c/b);   }   const double d = (b * b) - (4.0 * a * c);   if (d < 0.0)      return std::vector<double>();   if (d == 0.0)      return std::vector<double>(1,-b/(2.0*a));   const double rD = std::sqrt(d);   std::vector<double> solutions;   solutions.reserve(2);   solutions.push_back((-b + rD)/(2.0 * a));   solutions.push_back((-b - rD)/(2.0 * a));   return solutions; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Wikipedia's page about quadratic
    equations](http://en.wikipedia.org/wiki/Quadratic_equation)
-   [PerpetualPC showing how NOT to do
    it](http://www.perpetualpc.net/quadsolv_c.html)

 

 

 

 

 

 

