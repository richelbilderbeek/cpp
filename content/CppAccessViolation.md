



 

 

 

 

 

([C++](Cpp.htm)) [access violation](CppAccessViolation.htm)
===========================================================

 

An [access violation](CppAccessViolation.htm) is a type of [run-time
error](CppRuntimeError.htm) in which the program reads or writes to
non-allocated memory. In the example below, an [array](CppArray.htm) is
declared, after which the space in memory beyond it is set to zero:

 

  ---------------------------------------------------------------
  ` int main() {   int v[1];   v[1] = 0; //Access violation! }`
  ---------------------------------------------------------------

 

[Access violations](CppAccessViolation.htm) are not always detected (try
the code above, it might just reach the end) and therefore difficult to
[debug](CppDebug.htm).

 

 

 

 

 





 



