



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#6: refactoring quadratic solver](CppExerciseRefactoringQuadraticSolverAnswer.htm)
========================================================================================================================

 

This is the answer of [exercise \#6: refactoring quadratic
solver](CppExerciseRefactoringQuadraticSolver.htm).

 

Below the original code is shown:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath>   using namespace std;   class Qs {   public:   void coeff(double aa, double bb, double cc)   {     a = aa;     b = bb;     c = cc;   }   bool solve()   {     double D = b * b - 4 * a * c;     if (a == 0 || D < 0) return false;     double rD = sqrt(D);     x1 = (-b + rD)/(2 * a);     x2 = (-b - rD)/(2 * a);     return true;   }   double root1() const { return x1; }   double root2() const { return x2; }     private:   double a,b,c,x1,x2; };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

There are many ways to Rome to improve this class, but I'll start at
looking at the [member functions](CppMemberFunction.htm) 'coeff' and
'solve': why is it necessary to temporarily store three
[doubles](CppDouble.htm) when you want to solve a quadratic equation
using these three [doubles](CppDouble.htm)? Or: why does the user first
needs to set these three values, before solving them? In my humble
opinion, the place to start improving this class is to remove the
[member functions](CppMemberFunction.htm) 'coeff' and directly pass
these three [doubles](CppDouble.htm) to 'solve'.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath>   using namespace std;   class Qs {   public:   bool solve(double aa, double bb, double cc)   {     a = aa;     b = bb;     c = cc;     double D = b * b - 4 * a * c;     if (a == 0 || D < 0) return false;     double rD = sqrt(D);     x1 = (-b + rD)/(2 * a);     x2 = (-b - rD)/(2 * a);     return true;   }   double root1() const { return x1; }   double root2() const { return x2; }     private:   double a,b,c,x1,x2; };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In the resulting piece of code, the [variables](CppVariable.htm) 'a','b'
and 'c' are needed only [locally](CppLocal.htm) to 'solve' (instead of
[class](CppClass.htm) [scope](CppScope.htm)). This removes the need to
internally store these three [doubles](CppDouble.htm) in the
[private](CppPrivate.htm) section:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath>   using namespace std;   class Qs {   public:   bool solve(double a, double b, double c)   {     double D = b * b - 4 * a * c;     if (a == 0 || D < 0) return false;     double rD = sqrt(D);     x1 = (-b + rD)/(2 * a);     x2 = (-b - rD)/(2 * a);     return true;   }   double root1() const { return x1; }   double root2() const { return x2; }     private:   double x1,x2; };`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Can we refactor the piece of code above? Sure we can! As you could have
read, the number of solutions of a quadratic equation can be zero, one
or two. In the code above we face the following design problems:

 

-   If the equation only has one solution, the solution is not given
-   If the solution has no solution, one must not call 'root1' and
    'root2' but one can do so
-   If the solution has two solutions, one must call 'root1' and 'root2'
    but one cannot do so or accidentally call one of these twice

 

The solution to these problems is to let the method 'solve' return a
[std::vector](CppVector.htm) containg all solutions (returning an empty
[std::vector](CppVector.htm) for zero solution):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>   using namespace std;   class Qs {   public:   std::vector<double> solve(double a, double b, double c)   {     double D = b * b - 4 * a * c;     if (a == 0 || D < 0)       return std::vector<double>();           //Empty std::vector (size zero)     if (D == 0.0)       return std::vector<double>(1,-b/(2*a)); //std::vector size one     double rD = sqrt(D);     x1 = (-b + rD)/(2 * a);     x2 = (-b - rD)/(2 * a);     std::vector<double> solutions;     solutions.push_back(x1);     solutions.push_back(x2);     return solutions;   }   double root1() const { return x1; }   double root2() const { return x2; }     private:   double x1,x2; };`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In the resulting piece of code, the [variables](CppVariable.htm) 'x1'
and 'x2' are needed only [locally](CppLocal.htm) to 'solve' (instead of
[class](CppClass.htm) [scope](CppScope.htm)) and the methods 'root1' and
'root2' are no longer needed. This results in the following code:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>   using namespace std;   class Qs {   public:   std::vector<double> solve(double a, double b, double c)   {     double D = b * b - 4 * a * c;     if (a == 0 || D < 0)       return std::vector<double>();           //Empty std::vector (size zero)     if (D == 0.0)       return std::vector<double>(1,-b/(2*a)); //std::vector size one     double rD = sqrt(D);     double x1 = (-b + rD)/(2 * a);     double x2 = (-b - rD)/(2 * a);     std::vector<double> solutions;     solutions.push_back(x1);     solutions.push_back(x2);     return solutions;   } };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Now, we have ended up with a stateless [class](CppClass.htm) with only
one [member function](CppMemberFunction.htm)! Therefore, nothing stops
you from making it a [function](CppFunction.htm):

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>   using namespace std;   std::vector<double> solve(double a, double b, double c) {   double D = b * b - 4 * a * c;   if (a == 0 || D < 0)     return std::vector<double>();           //Empty std::vector (size zero)   if (D == 0.0)     return std::vector<double>(1,-b/(2*a)); //std::vector size one   double rD = sqrt(D);   double x1 = (-b + rD)/(2 * a);   double x2 = (-b - rD)/(2 * a);   std::vector<double> solutions;   solutions.push_back(x1);   solutions.push_back(x2);   return solutions; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Now, what is left to do? Well, the first part of the first 'if'
statement ('if ( a == 0' ) is nonsense: if 'a' equals zero and 'b'
equals non-zero, the solution of the equation is x = c/b. If 'a' equals
zero and 'b' equals zero, the solution is x = 0.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>   using namespace std;   std::vector<double> solve(double a, double b, double c) {   if (a == 0.0)   {     if (b == 0.0)       return std::vector<double>(1,0.0);     else       return std::vector<double>(1,c/b);   }   double D = b * b - 4 * a * c;   if (D < 0)     return std::vector<double>();   if (D == 0.0)     return std::vector<double>(1,-b/(2.0*a));   double rD = sqrt(D);   double x1 = (-b + rD)/(2 * a);   double x2 = (-b - rD)/(2 * a);   std::vector<double> solutions;   solutions.push_back(x1);   solutions.push_back(x2);   return solutions; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The [function](CppFunction.htm) above works fine. The only thing left to
do is doing some cleaning:

-   Make all [const](CppConst.htm) [variables](CppVariable.htm)
    [const](CppConst.htm)
-   Instead of using '0' or '2' for [doubles](CppDouble.htm), make it
    '0.0' or '2.0', as it yields an implicit [cast](CppCast.htm) from
    [int](CppInt.htm) to [double](CppDouble.htm)
-   The math is not clear, because there are no brackets showing the
    order of evaluation. To be sure the program does the math in the
    order we want, show this with brackets

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `   #include <cmath> #include <vector>   using namespace std;   const std::vector<double> solve(const double a, const double b, const double c) {   if (a == 0.0)   {     if (b == 0.0)       return std::vector<double>(1,0.0);     else       return std::vector<double>(1,c/b);   }   const double D = (b * b) - (4.0 * a * c);   if (D < 0.0)     return std::vector<double>();   if (D == 0.0)     return std::vector<double>(1,-b/(2.0*a));   const double rD = sqrt(D);   const double x1 = (-b + rD)/(2.0 * a);   const double x2 = (-b - rD)/(2.0 * a);   std::vector<double> solutions;   solutions.push_back(x1);   solutions.push_back(x2);   return solutions; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Now we're done.

 

Personally, the only thing I would do, is add some personal tastes to
the function. The code above is fine, the code below is just as good,
but I personally like it better:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>   //From http://www.richelbilderbeek.nl/CppSolveQuadratic.htm const std::vector<double> SolveQuadratic(const double a, const double b, const double c) {   if (a == 0.0)   {     if (b == 0.0)       return std::vector<double>(1,0.0);     else       return std::vector<double>(1,c/b);   }   const double d = (b * b) - (4.0 * a * c);   if (d < 0.0)     return std::vector<double>();   if (d == 0.0)     return std::vector<double>(1,-b/(2.0*a));   const double rD = std::sqrt(d);   std::vector<double> solutions;   solutions.reserve(2);   solutions.push_back((-b + rD)/(2.0 * a));   solutions.push_back((-b - rD)/(2.0 * a));   return solutions; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Of course, I already had the function
[SolveQuadratic](CppSolveQuadratic.htm) on my website :-D.

 

About the literature I took the example from \[1\]: it was written in
2001 and therefore written before the [most important C++
books](CppMostImportantCppBooks.htm) about [class
design](CppClassDesign.htm). The author admitted in the example that the
[class](CppClass.htm) indeed could have been written as a
[function](CppFunction.htm). Also, the [class](CppClass.htm) example was
given before the student knew about [std::vector](CppVector.htm).

 

But in my humble opinion, it still is an example of bad [class
design](CppClassDesign.htm). I would suggest the following
[class](CppClass.htm):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <cassert>   struct QuadraticSolver {   QuadraticSolver()     : mNsolutions(0)   {     }   const int Solve(const double a, const double b, const double c)   {     if (a == 0.0)     {       if (b == 0.0)       {         mNsolutions = 1;         mSolution1 = 0.0;         return mNsolutions;       }       else       {         mNsolutions = 1;         mSolution1 = c/b;         return mNsolutions;       }     }     const double d = (b * b) - (4.0 * a * c);     if (d < 0.0)     {       mNsolutions = 0;       return mNsolutions;     }     if (d == 0.0)     {       mNsolutions = 1;       mSolution1 = -b/(2.0*a);       return mNsolutions;     }     const double rD = std::sqrt(d);     mNsolutions = 2;     mSolution1 = (-b + rD)/(2.0 * a);     mSolution2 = (-b - rD)/(2.0 * a);     return mNsolutions;   }     const double GetSolution1() const   {     assert(mNsolutions > 0);     return mSolution1;   }   const double GetSolution2() const   {     assert(mNsolutions > 1);     return mSolution2;   }     private:   int mNsolutions;   double mSolution1;   double mSolution2; };`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Leen Ammeraal. C++ (6th edition). 2001. ISBN: 90-395-1935-8.

 

 

 

 

 





 



