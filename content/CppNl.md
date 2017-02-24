



 

 

 

 

 

([C++](Cpp.md)) [nl](CppNl.md)
================================

 

[nl](CppNl.md) is a [stream](CppStream.md) manipulator, similar to
[std::endl](CppEndl.md), except that [nl](CppNl.md) does not flush the
[stream](CppStream.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  //From http://www.richelbilderbeek.nl/CppNl.htm std::ostream& nl(std::ostream& os) {   return os << '\n'; }  int main() {   std::cout     << "Hello"     << nl     << "world"     << nl; } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



