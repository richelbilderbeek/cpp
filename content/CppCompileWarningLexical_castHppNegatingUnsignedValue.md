



 

 

 

 

 

([C++](Cpp.htm)) [lexical\_cast.hpp: Negating unsigned value](CppCompileWarningLexical_castHppNegatingUnsignedValue.htm)
========================================================================================================================

 

[Compile warning](CppCompileWarning.htm).

 

 

 

 

 

Full warning message
--------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Warning] lexical_cast.hpp(468): W8041 Negating unsigned value [C++ Warning] lexical_cast.hpp(474): W8041 Negating unsigned value`
  ------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

  --------------------------------------
  ` #include <boost/lexical_cast.hpp>`
  --------------------------------------

 

Which takes you to the following line in
'include/boost/lexical\_cast.hpp':

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` inline unsigned int lcast_to_unsigned(int value) {   unsigned int uval = value;   return value < 0 ? -uval : uval;  //This line }  inline unsigned long lcast_to_unsigned(long value) {   unsigned long uval = value;   return value < 0 ? -uval : uval;  //This line }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

[Boost](CppBoost.htm) version: 1.35.0.

 

 

 

 

 

Solution
--------

 

This compiler is not supported by Boost. Change to another compiler.

 

To suppress the warning write the code below, that disables the warning
temporarily.

 

  ---------------------------------------------------------------------------------------------------------
  `  //Specific for BCC32.exe #pragma warn -8041   #include <boost/lexical_cast.hpp> #pragma warn +8041 `
  ---------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



