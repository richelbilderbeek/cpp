
 

 

 

 

 

([C++](Cpp.md)) [Unresolved external 'std::\_String\_base::\_Xlen() const' referenced from C:\\...\\CBUILDER6\\LIB\\LIBBOOST\_REGEX-BCB-1\_38.LIB|cpp\_regex\_traits](CppLinkErrorUnresolvedExternalStd_String_base_Xlen.md)
==============================================================================================================================================================================================================================

 

[Link error](CppLinkError.md).

 

IDE: [C++ Builder](CppBuilder.md) 6.0

Project type: Console Application, [VCL](CppVcl.md) disabled,
[CLX](CppClx.md) disabled, multithreading disabled

Boost version: 1.38.0

 

 

 

 

 

Full error messages
-------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [Linker Error] Unresolved external 'std::_String_base::_Xran() const' referenced from C:\...\CBUILDER6\LIB\LIBBOOST_REGEX-BCB-1_38.LIB|cpp_regex_traits [Linker Error] Unresolved external 'std::_String_base::_Xlen() const' referenced from G:\PROGRAM FILES\BORLAND\CBUILDER6\LIB\LIBBOOST_REGEX-BCB-1_38.LIB|cpp_regex_traits`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

[Link error](CppLinkError.md) appears when trying to execute the
following code:

 

  ---------------------------------------------------------------------------
  ` #include <boost/regex.hpp>  int main() {   boost::regex reg("[.*]"); }`
  ---------------------------------------------------------------------------

 

Solution
--------

 

Unknown.

 

 

 

 

 

 

