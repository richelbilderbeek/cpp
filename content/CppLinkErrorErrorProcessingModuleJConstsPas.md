
 

 

 

 

 

([C++](Cpp.md)) [Error processing module JConsts.pas](CppLinkErrorErrorProcessingModuleJConstsPas.md)
=======================================================================================================

 

[Link error](CppLinkError.md).

 

IDE: [C++ Builder](CppBuilder.md) 6.0

Project type: [VCL](CppVcl.md)

 

 

 

 

 

Full error messages
-------------------

 

  -------------------------------------------------------
  ` [Linker Error] Error processing module JConsts.pas`
  -------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Not sure, but I did both two things below:

 

Added the following line to support JPEGs, to only one of the
[implementation files (.cpp)](CppImplementationFile.md) that will need
it:

 

  ------------------------
  ` #include <jpeg.hpp>`
  ------------------------

 

Or made a too difficult std::string concatenation

 

  ---------------------------------------------------------------------------------
  ` std::vector<std::string> v; v.push_back(" " + m_question->m_filename + " ");`
  ---------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Not sure which one of the two hypothesized solutions is the real one. I
just did both.

 

I added the following line to the other [implementation files
(.cpp)](CppImplementationFile.md) that will need it:

 

  ------------------------
  ` #include <jpeg.hpp>`
  ------------------------

 

I also broke apart the std::string concatenation

 

  ------------------------------------------------------------------------------------------------------------------------
  ` std::vector<std::string> v; const std::string filename = " " + m_question->m_filename + " "; v.push_back(filename);`
  ------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

