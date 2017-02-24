[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [DrawGlobePlus](DrawGlobePlus.htm)
===================================================

 

[DrawGlobePlus](CppDrawGlobePlus.htm) is a [VCL
graphics](CppVclGraphics.htm) [code snippet](CppCodeSnippets.htm) to
draw a globe with a plus on it.

 

[DrawGlobePlus](CppDrawGlobePlus.htm) assumes that you have already
[defined](CppDefinition.htm) the [DrawGlobe](CppDrawGlobe.htm)
[function](CppFunction.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ExtCtrls.hpp>  //From http://www.richelbilderbeek.nl/CppDrawGlobePlus.htm void DrawGlobePlus(   TImage * const image,   const unsigned char red,   const unsigned char green,   const unsigned char blue) {   DrawGlobe(image,red,green,blue);   const int height = image->Picture->Bitmap->Height;   const int width  = image->Picture->Bitmap->Width;   image->Canvas->Pen->Width = height / 10;   image->Canvas->Pen->Color = static_cast<TColor>(RGB(red,green,blue));   image->Canvas->MoveTo(1 * width / 4,height / 2);   image->Canvas->LineTo(3 * width / 4,height / 2);   image->Canvas->MoveTo(width / 2,1 * height / 4);   image->Canvas->LineTo(width / 2,3 * height / 4); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
