# ([C++](Cpp.md)) [access violation](CppAccessViolation.md)

An [access violation](CppAccessViolation.md) is a type of [run-time
error](CppRuntimeError.md) in which the program reads or writes to
non-allocated memory. In the example below, an [array](CppArray.md) is
declared, after which the space in memory beyond it is set to zero:

  ---------------------------------------------------------------
  ` int main() {   int v[1];   v[1] = 0; //Access violation! }`
  ---------------------------------------------------------------


[Access violations](CppAccessViolation.md) are not always detected (try
the code above, it might just reach the end) and therefore difficult to
[debug](CppDebug.md).
