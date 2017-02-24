



 

 

 

 

 

([C++](Cpp.htm)) [nl](CppNl.htm)
================================

 

[nl](CppNl.htm) is a [stream](CppStream.htm) manipulator, similar to
[std::endl](CppEndl.htm), except that [nl](CppNl.htm) does not flush the
[stream](CppStream.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  //From http://www.richelbilderbeek.nl/CppNl.htm std::ostream& nl(std::ostream& os) {   return os << '\n'; }  int main() {   std::cout     << "Hello"     << nl     << "world"     << nl; } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



