

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [FindEquilibrium](CppFindEquilibrium.htm)
==========================================================

 

[FindEquilibrium](CppFindEquilibrium.htm) is a [biology](CppBiology.htm)
[code snippet](CppCodeSnippets.htm) to find the equilibrium of a cycle.

 

How would one find an equilibrium of a cycle? Easy: one keeps track of
the values and their occurance in time. If a value is found that has
already been tracked, the period is found, as this equals the actual
time minus the time at which this value has been tracked before.

 

In the code below, the function ***GetPeriod*** finds the period of a
function in equilibrium. To do so, I use a
***std::map&lt;double,int&gt;*** in which the double's are values and
the integers are the number of timesteps corresponding to this value.
When a certain value is already present in this map, the period of this
function is the actual timestep minus the time this value appeared for
the first time.

 

Note that the function shown here is a 'brute-force' approach that will
always work. An improvement of it would be to first track the value in
time: if the value first increases, then one might start mapping after
the value has had its first decrease (i.e. it crossed the value it is
attracted to).

 

 

 

 

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <map> #include <algorithm> #include <memory> //--------------------------------------------------------------------------- struct FunctionBase {   virtual const double GetY(const double x) const = 0;   virtual ~FunctionBase() {} //Base class must have virtual destructor }; //--------------------------------------------------------------------------- struct FunctionLogisticGrowth : public FunctionBase {   FunctionLogisticGrowth(const double r) : mR(r) {}   const double GetY(const double x) const   {     //The discrete time version of the logistic growth equation     //Assumes a K of 1.0     return (mR * x * (1.0 - x));   }   const double mR; }; //--------------------------------------------------------------------------- //From http://www.richelbilderbeek.nl/CppFindEquilibrium.htm const int GetPeriod(   const std::auto_ptr<const FunctionBase>& anyFunction,   const double xZero,   const int maxT) {   std::map<double,int> values; //value, time   double x = xZero;   for(int t=0; t!=maxT; ++t)   {     if (values.find(x)!=values.end())     {       //The previous time this value was found       const int tPrev = values[x];       //The distance between now and the previous time       const int period = t-tPrev;       return period;     }     //Map this population size to the time now     values[x] = t;     //Set the value to the next value     x = anyFunction->GetY(x);   }   //Time too long   return maxT; } //--------------------------------------------------------------------------- //From http://www.richelbilderbeek.nl/CppFindEquilibrium.htm int main() {   //Of the logistic growth equation, determine the period length for   //different values of intrinsic growth rate ('r')   const int maxT = 100000;   const double xZero = 0.1;   for (double r = 0.1; r < 4.0; r+=0.001)   {     const std::auto_ptr<const FunctionBase> myFunction(new FunctionLogisticGrowth(r));     std::cout << r << " : "       << GetPeriod(myFunction,xZero,maxT) << std::endl;   } } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Results
-------

 

The results of this simulation, for 10M generations, I have put here.

The cycle lengths can be viewed as [a text file
here](CppFindEquilibriumLogisticGrowth.txt), [a logarithmic chart
here](CppFindEquilibriumLogisticLog.png) or as [a linear chart
here](CppFindEquilibriumLogistic16.png). Note that if a period was not
found, I plotted it to a period length of 0 (which makes it disappear in
the logarithmic chart). The linear chart plots a 16-cycle at maximum. If
a heigher period length was found, I plot it as 16 as well.

 

 

 

 

 

Discussion
----------

 

I always thought that, when the value of ***r*** is increased, starting
at r = 0.0, a 1-cycle was followed by a 2-cycle, 4-cycle, 8-cycle and so
on until chaos is reached. I assumed that this was so clear-cut due to
mathematical proof with infinite precision. Computer simulations are not
infinitely precise. The results of this simulation show this very
clearly, as there is not a single transition value of ***r*** where an
cycle period changes.

 

An artefact can be found at ***r*** = 1.0: due to rounding-off, this is
set to 1.0 - ***ε***, in which ***ε*** is a very small value. The
population size will drop to zero in time, but not within 10M
generations. Therefore, the period length is not found. Also ***r*** =
2.0 suffers a similar problem.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
