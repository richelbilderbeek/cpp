
 

 

 

 

 

([C++](Cpp.md)) ['operator+' not implemented in type 'std::map&lt;int,double&gt;' for arguments of type 'int'](CppCompileErrorOperatorPlusNotImplementedInTypeMapIntDoubleForArgumentsOfTypeInt.md)
=====================================================================================================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] MyUnit.cpp(6): E2094 'operator+' not implemented in type '_STL::map<int,double,_STL::less<int>,_STL::allocator<_STL::pair<const int,double> > >' for arguments of type 'int'`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

[Libraries](CppLibrary.md) used:

-   [STL](CppStl.md): version supplied with [C++
    Builder](CppBuilder.md) 6.0

 

  ---------------------------------------------------------------------------------------------------
  ` const double getDouble(const std::map<int, double>& myMap, const int i) {   return myMap[i]; }`
  ---------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

The cause of this [compile error](CppCompileError.md) is that
[operator\[\]](CppOperatorIndex.md) is not a [const member
function](CppConstMemberFunction.md). This is because this [member
function](CppMemberFunction.md) inserts an element to the
[std::map](CppStdMap.md). It is created to make insertion easy and to
never [throw](CppThrow.md). Therefore, the code above will not compile:
if myMap does not have the key i, an exception has to be
[thrown](CppThrow.md). So, due to this it does not compile. The way to
solve the above example is:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <map> #include <string> #include <cassert>   const std::map<int,std::string> GetNumberMap() {   std::map<int, std::string> numberMap;   numberMap[0] = "Zero";   numberMap[1] = "One";   numberMap[2] = "Two";   //Etcetera   return numberMap; }   template <class KeyType, class ValueType> bool IsKeyInMap(const std::map<KeyType,ValueType>& anyMap, const KeyType& key) {   return anyMap.find(key)!=anyMap.end(); }   int main() {   const std::map<int, std::string> myMap(GetNumberMap());   assert(IsKeyInMap(myMap,-2)== false);   assert(IsKeyInMap(myMap,-1)== false);   assert(IsKeyInMap(myMap, 0)== true);   assert(IsKeyInMap(myMap, 1)== true);   assert(IsKeyInMap(myMap, 2)== true); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

