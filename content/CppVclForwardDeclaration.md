
 

 

 

 

 

([C++](Cpp.md)) [VCL forward declarations](CppVclForwardDeclaration.md)
=========================================================================

 

[VCL](CppVcl.md) [forward declarations](CppForwardDeclaration.md).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` namespace Graphics { struct TCanvas; }   #include <Graphics.hpp>  //No forward declaration possible (TColor is an enum) #include <Graphics.hpp>  namespace Extctrls { struct TImage; }   #include <ExtCtrls.hpp>  namespace Types { struct TRect; }   #include <Types.hpp>`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

