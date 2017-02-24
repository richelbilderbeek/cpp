



 

 

 

 

 

([C++](Cpp.md)) [DrawGlobePlus](DrawGlobePlus.md)
===================================================

 

[DrawGlobePlus](CppDrawGlobePlus.md) is a [VCL
graphics](CppVclGraphics.md) [code snippet](CppCodeSnippets.md) to
draw a globe with a plus on it.

 

[DrawGlobePlus](CppDrawGlobePlus.md) assumes that you have already
[defined](CppDefinition.md) the [DrawGlobe](CppDrawGlobe.md)
[function](CppFunction.md).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ExtCtrls.hpp>  //From http://www.richelbilderbeek.nl/CppDrawGlobePlus.htm void DrawGlobePlus(   TImage * const image,   const unsigned char red,   const unsigned char green,   const unsigned char blue) {   DrawGlobe(image,red,green,blue);   const int height = image->Picture->Bitmap->Height;   const int width  = image->Picture->Bitmap->Width;   image->Canvas->Pen->Width = height / 10;   image->Canvas->Pen->Color = static_cast<TColor>(RGB(red,green,blue));   image->Canvas->MoveTo(1 * width / 4,height / 2);   image->Canvas->LineTo(3 * width / 4,height / 2);   image->Canvas->MoveTo(width / 2,1 * height / 4);   image->Canvas->LineTo(width / 2,3 * height / 4); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
