



 

 

 

 

 

([C++](Cpp.htm)) [Assertion failed: !"Bad error code", file VMem.c, line 715](CppMiscErrorAssertionFailedBadErrorCodeVmemC.htm)
===============================================================================================================================

 

[Misc error](CppMiscError.htm).

 

 

 

 

 

Full error message
------------------

 

  ---------------------------------------------------------------
  ` Assertion failed: !"Bad error code", file VMem.c, line 715`
  ---------------------------------------------------------------

 

-   [View a screenshot of this error
    message](CppMiscErrorAssertionFailedBadErrorCodeVmemC.PNG)

 

 

 

 

 

Cause
-----

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

Project type: [VCL](CppVcl.htm)

 

Appears when linking the following code:

 

  -------------------------------------------------------------------------
  ` #define ARRAY_SIZE 10000000  int main() {   int array[ARRAY_SIZE]; }`
  -------------------------------------------------------------------------

 

 

 

 

 

Solutions
---------

 

When this error occurs, restart [C++ Builder](CppBuilder.htm) and
nothing has been lost. Do change the code as in one of the examples
below.

 

 

 

 

 

### Decrease the value of the [array](CppArray.htm) size

 

  ------------------------------------------------------------------------
  ` #define ARRAY_SIZE 1000000  int main() {   int array[ARRAY_SIZE]; }`
  ------------------------------------------------------------------------

 

 

 

 

 

### Create the [array](CppArray.htm) dynamically

 

  -------------------------------------------------------------------------------------------
  ` #define ARRAY_SIZE 10000000  int main() {   int * const array = new int(ARRAY_SIZE); }`
  -------------------------------------------------------------------------------------------

 

 

 

 

 

### Use a [std::vector](CppVector.htm) (preferred)

 

  -------------------------------------------------------------------------------------------
  ` #include <vector>  int main() {   const int sz = 10000000;   std::vector<int> v(sz); }`
  -------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
