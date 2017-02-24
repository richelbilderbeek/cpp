[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [IsKeyInMap](CppIsKeyInMap.htm)
================================================

 

[IsKeyInMap](CppIsKeyInMap.htm) is a [std::map](CppMap.htm)
[check](CppCheck.htm) [code snippet](CppCodeSnippets.htm) to find out if
a certain key is in a [std::map](CppMap.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <map> #include <string>  const std::map<int,std::string> GetNumberMap() {   std::map<int,std::string> numberMap;   numberMap[0] = "Zero";   numberMap[1] = "One";   numberMap[2] = "Two";   //Etcetera   return numberMap; }   template <class KeyType, class ValueType> bool IsKeyInMap(const std::map<KeyType,ValueType>& anyMap, const KeyType& key) {   return anyMap.find(key) != anyMap.end(); }     int main() {   const std::map<int,std::string> myMap(GetNumberMap());   assert(!IsKeyInMap(myMap,-2));   assert(!IsKeyInMap(myMap,-1));   assert( IsKeyInMap(myMap,0));   assert( IsKeyInMap(myMap,1));   assert( IsKeyInMap(myMap,2)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
