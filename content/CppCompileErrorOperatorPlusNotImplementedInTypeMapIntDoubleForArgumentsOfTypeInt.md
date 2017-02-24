



 

 

 

 

 

([C++](Cpp.htm)) ['operator+' not implemented in type 'std::map&lt;int,double&gt;' for arguments of type 'int'](CppCompileErrorOperatorPlusNotImplementedInTypeMapIntDoubleForArgumentsOfTypeInt.htm)
=====================================================================================================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] MyUnit.cpp(6): E2094 'operator+' not implemented in type '_STL::map<int,double,_STL::less<int>,_STL::allocator<_STL::pair<const int,double> > >' for arguments of type 'int'`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

[Libraries](CppLibrary.htm) used:

-   [STL](CppStl.htm): version supplied with [C++
    Builder](CppBuilder.htm) 6.0

 

  ---------------------------------------------------------------------------------------------------
  ` const double getDouble(const std::map<int, double>& myMap, const int i) {   return myMap[i]; }`
  ---------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

The cause of this [compile error](CppCompileError.htm) is that
[operator\[\]](CppOperatorIndex.htm) is not a [const member
function](CppConstMemberFunction.htm). This is because this [member
function](CppMemberFunction.htm) inserts an element to the
[std::map](CppMap.htm). It is created to make insertion easy and to
never [throw](CppThrow.htm). Therefore, the code above will not compile:
if myMap does not have the key i, an exception has to be
[thrown](CppThrow.htm). So, due to this it does not compile. The way to
solve the above example is:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <map> #include <string> #include <cassert>   const std::map<int,std::string> GetNumberMap() {   std::map<int, std::string> numberMap;   numberMap[0] = "Zero";   numberMap[1] = "One";   numberMap[2] = "Two";   //Etcetera   return numberMap; }   template <class KeyType, class ValueType> bool IsKeyInMap(const std::map<KeyType,ValueType>& anyMap, const KeyType& key) {   return anyMap.find(key)!=anyMap.end(); }   int main() {   const std::map<int, std::string> myMap(GetNumberMap());   assert(IsKeyInMap(myMap,-2)== false);   assert(IsKeyInMap(myMap,-1)== false);   assert(IsKeyInMap(myMap, 0)== true);   assert(IsKeyInMap(myMap, 1)== true);   assert(IsKeyInMap(myMap, 2)== true); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



