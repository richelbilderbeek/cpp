[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Exceptional C++: item 20](CppExceptionalCpp20.htm)
====================================================================

 

[Exceptional C++: item 20](CppExceptionalCpp20.htm) contains the code
from [Exceptional C++](CppExceptionalCpp.htm) item 20.

 

-   [Download the Qt Creator project
    'CppExceptionalCpp20' (zip)](CppExceptionalCpp20.zip)

 

 

 

 

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///Completed from /// * Herb Sutter. Exceptional C++. ISBN: 0-201-61562-2. Item 20 #include <iostream> using namespace std;  class Complex { public:   Complex( double real, double imaginary = 0 )     : _real(real), _imaginary(imaginary) {};    void operator+ ( Complex other ) {     _real = _real + other._real;     _imaginary = _imaginary + other._imaginary;   }    void operator<<( ostream os ) {     os << "(" << _real << "," << _imaginary << ")";   }    Complex operator++() {     ++_real;     return *this;   }    Complex operator++( int ) {     Complex temp = *this;     ++_real;     return temp;   }  private:   double _real, _imaginary; };  int main() {  }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). [Exceptional
    C++](CppExceptionalCpp.htm). ISBN: 0-201-61562-2.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
