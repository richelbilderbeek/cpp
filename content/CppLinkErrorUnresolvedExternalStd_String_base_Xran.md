

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Unresolved external 'std::\_String\_base::\_Xran() const' referenced from C:\\...\\CBUILDER6\\LIB\\LIBBOOST\_REGEX-BCB-1\_38.LIB|cpp\_regex\_traits](CppLinkErrorUnresolvedExternalStd_String_base_Xran.htm)
==============================================================================================================================================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error messages
-------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [Linker Error] Unresolved external 'std::_String_base::_Xran() const' referenced from C:\...\CBUILDER6\LIB\LIBBOOST_REGEX-BCB-1_38.LIB|cpp_regex_traits [Linker Error] Unresolved external 'std::_String_base::_Xlen() const' referenced from G:\PROGRAM FILES\BORLAND\CBUILDER6\LIB\LIBBOOST_REGEX-BCB-1_38.LIB|cpp_regex_traits`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[Link error](CppLinkError.htm) appears when trying to execute the
following code:

 

  ---------------------------------------------------------------------------
  ` #include <boost/regex.hpp>  int main() {   boost::regex reg("[.*]"); }`
  ---------------------------------------------------------------------------

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

Project type: Console Application, VCL disabled, CLX disables,
multithreading disabled

Boost version: 1.38.0

 

 

 

 

 

Solution
--------

 

Unknown.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
