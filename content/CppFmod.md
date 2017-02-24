
 

 

 

 

 

([C++](Cpp.md)) [Fmod](CppFmod.md)
====================================

 

[Fmod](CppFmod.md) is a [math](CppMath.md) [function](CppFunction.md)
to perform a [modulus operation](CppOperatorModulus.md) on
[doubles](CppDouble.md).

 

[std::modf](CppModf.md) has a different purpose as [Fmod](CppFmod.md):
[std::modf](CppModf.md) splits a [double](CppDouble.md) into its
[integer](CppInt.md) and a fractional part, for example it splits 12.34
into 12 and 0.34

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>   double Fmod(const double x, const double mod) {   assert(mod != 0.0); //Cannot divide by zero   return x - (mod * static_cast<int>(x / mod)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

