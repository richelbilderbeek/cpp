



 

 

 

 

 

([C++](Cpp.htm)) [stream](CppStream.htm)
========================================

 

[Streams](CppStream.htm) are like flexible flow-through
[containers](CppContainer.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const bool b = true;   const char c = 'c';   const int i = 1;   const double d = 1.1;   std::cout     << "bool b: " << b << '\n'     << "char c: " << c << '\n'     << "integer i: " << i << '\n'     << "double d: " << d << std::endl; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------------------------------------------------
  ` bool b: 1 char c: c integer i: 1 double d: 1.1`
  ---------------------------------------------------

 

 

 

 

 

[Global](CppGlobal.htm) [streams](CppStream.htm)
------------------------------------------------

 

Examples of [global](CppGlobal.htm) [streams](CppStream.htm) are:

-   [std::cout](CppCout.htm) (an [std::ostream](CppOstream.htm))
-   [std::cin](CppCin.htm) (an [std::istream](CppIstream.htm))
-   [std::clog](CppClog.htm) (an [std::ostream](CppOstream.htm))
-   [std::cerr](CppCerr.htm) (an [std::ostream](CppOstream.htm))

 

 

 

 

 

[stream](CppStream.htm) [(data) types](CppDataType.htm)
-------------------------------------------------------

 

Types of [streams](CppStream.htm) are:

-   [std::stringstream](CppStringstream.htm): a
    [std::string](CppString.htm) [stream](CppStream.htm)
-   [std::ostream](CppOstream.htm): output [stream](CppStream.htm)
-   [std::istream](CppIstream.htm): input [stream](CppStream.htm)
-   [std::fstream](CppFstream.htm): file [stream](CppStream.htm)

 

 

 

 

 

[stream](CppStream.htm) operations
----------------------------------

 

Things one can do on a [stream](CppStream.htm):

 

-   [std::endl](CppEndl.htm): adds newline ('\\n') and flushes the
    [stream](CppStream.htm)
-   [std::ends](CppEnds.htm): adds null ('\\0') to the
    [stream](CppStream.htm)

 

 

 

 

 

[Stream](CppStream.htm) format flags
------------------------------------

 

A [stream](CppStream.htm) format flag is something that can be on or
off. [Stream](CppStream.htm) format flags are:

 

-   std::ios::skipws: skip whitespace (on by default for input streams)
-   std::ios::showbase: indicate the numeric base
-   std::ios::showpoint: show decimal point and trailing zeroes for
    doubles
-   std::ios::uppercase: show uppercase characters in hex (ABCDEF) and
    scientific (E) notation
-   std::ios::showpos
-   std::ios::unitbuf

 

Turning a flag on and off is shown in the code below.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << 1 << '\n';   std::cout.setf(std::ios::showpos);   std::cout << 1 << '\n';   std::cout.unsetf(std::ios::showpos);   std::cout << 1 << '\n'; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Stream](CppStream.htm) flag field
----------------------------------

 

A [stream](CppStream.htm) flag field is a group of options of which only
one can be in effect, similar to a radiogroup control. To set a certain
option, one needs to clear the flag group field, then set the desired
option.

 

[Stream](CppStream.htm) format flags are:

-   std::ios::basefield: std::ios::dec, std::ios::hex, std::ios::oct
-   std::ios::floatfield: std::ios::fixed, std::ios::scientific
-   std::ios::adjustfield: std::ios::left, std::ios::right,
    std::ios::internal

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   //Turns on decimal notation,   //clears current notation (i.e. basefield)   std::cout.setf(std::ios::dec,std::ios::basefield);   std::cout << 15 << '\n';   //Turns on hexadecimal notation,   //clears current notation (i.e. basefield)   std::cout.setf(std::ios::hex,std::ios::basefield);   std::cout << 15 << '\n';   //Turns on octal notation,   //clears current notation (i.e. basefield)   std::cout.setf(std::ios::oct,std::ios::basefield);   std::cout << 15 << '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Stream](CppStream.htm) manipulators
------------------------------------

 

[Stream](CppStream.htm) manipulators are like [stream](CppStream.htm)
formatting flags and formatting fields, except that manipulators are the
streamable version of flags and fields.

 

[Stream](CppStream.htm) manipulators are:

-   [nl](CppNl.htm)
-   [std::fixed](CppFixed.htm)
-   [std::internal](CppInternal.htm)
-   [std::left](CppLeft.htm)
-   [std::noshowbase](CppNoshowbase.htm)
-   [std::noshowpoint](CppNoshowpoint.htm)
-   [std::noshowpos](CppNoshowpos.htm)
-   [std::noskipws](CppNoskipws.htm)
-   [std::nouppercase](CppNouppercase.htm)
-   [std::resetiosflags](CppResetiosflags.htm)
-   [std::right](CppRight.htm)
-   [std::scientific](CppScientific.htm)
-   [std::setbase](CppSetbase.htm)
-   [std::setfill](CppSetfill.htm)
-   [std::setiosflags](CppSetiosflags.htm)
-   [std::setprecision](CppSetprecision.htm)
-   [std::setw](CppSetw.htm)
-   [std::showbase](CppShowbase.htm)
-   [std::showpoint](CppShowpoint.htm)
-   [std::showpos](CppShowpos.htm)
-   [std::skipws](CppSkipws.htm)
-   [std::uppercase](CppUppercase.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   //Turn on decimal notation   std::cout << std::dec << 15 << '\n';   //Turn on hexidecimal notation   std::cout << std::hex << 15 << '\n';   //Turn on octal notation   std::cout << std::oct << 15 << '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[stream](CppStream.htm) code snippets
-------------------------------------

 

Some code snippets one can use when working witj
[stream](CppStream.htm):

 

-   [Read and write a std::vector from/to a
    std::stream](CppVectorToStream.htm)
-   [Write and read a std::vector to/from a
    std::stream](CppVectorToStream.htm)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
