
 

 

 

 

 

([C++](Cpp.md)) [GetValueInMap](CppGetValueInMap.md)
======================================================

 

Will this [compile](CppCompile.md)?

 

  ------------------------------------------------------------------------------------------------------------
  ` #include <map>  double GetDouble(const std::map<int,double>& myMap, const int i) {   return myMap[i]; }`
  ------------------------------------------------------------------------------------------------------------

 

Answer: No, it will give the following [compile
error](CppCompileError.md):

 

When using Borland [BCC32.EXE](CppBcc32Exe.md) version 6.0.10.157:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] Unit1.cpp(6): E2094 'operator+' not implemented in type '_STL::map<int,double,_STL::less<int>,_STL::allocator<_STL::pair<const int,double> > >' for arguments of type 'int'`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

When using [G++](CppGpp.md) 4.5.2:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/CppGetValueInMap/main.cpp:5: error: passing 'const std::map<int, double>' as 'this' argument of 'mapped_type& std::map<_Key, _Tp, _Compare, _Alloc>::operator[](const key_type&) [with _Key = int, _Tp = double, _Compare = std::less<int>, _Alloc = std::allocator<std::pair<const int, double> >, mapped_type = double, key_type = int]' discards qualifiers`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The reason for this is that the [index
operator](CppOperatorIndex.md)/[operator\[\]](CppOperatorIndex.md) is
not a [const](CppConst.md) [member function](CppMemberFunction.md).
This is because this [member function](CppMemberFunction.md) possibly
inserts an element to the [std::map](CppMap.md)! It is created to make
insertion easy and to never [throw](CppThrow.md). Therefore, the code
above will not [compile](CppCompile.md): if **myMap** does not have the
key **i**, an [exception](CppException.md) has to be
[thrown](CppThrow.md). So, due to this it does not
[compile](CppCompile.md). The way to solve the above example is shown
below.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <map> #include <string>  //From http://www.richelbilderbeek.nl/CppGetValueInMap.htm template <class KeyType, class ValueType> ValueType GetValue(const std::map<KeyType,ValueType>& m, const KeyType& key) {   typedef typename std::map<KeyType,ValueType>::const_iterator Iterator;   const Iterator i = m.find(key);   assert( i != m.end() );   return i->second; }  std::map<int,std::string> GetNumberMap() {   std::map<int,std::string> numberMap;   numberMap[0] = "Zero";   numberMap[1] = "One";   numberMap[2] = "Two";   //Etcetera   return numberMap; }  int main() {   const std::map<int,std::string> myMap(GetNumberMap());   assert( GetValue(myMap,0) == "Zero" ) ;   assert( GetValue(myMap,1) == "One" ) ;   assert( GetValue(myMap,2) == "Two" ) ; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

