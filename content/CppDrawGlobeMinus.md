

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [DrawGlobeMinus](CppDrawGlobeMinus.htm)
========================================================

 

[Graphics](CppGraphics.htm) [code snippet](CppCodeSnippets.htm) to draw
a globe with a minus on it.

 

Assumes that you have already defined the [DrawGlobe](CppDrawGlobe.htm)
function.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ExtCtrls.hpp>  //From http://www.richelbilderbeek.nl/CppDrawGlobeMinus.htm void DrawGlobeMinus(   TImage * const image,   const unsigned char red,   const unsigned char green,   const unsigned char blue) {   DrawGlobe(image,red,green,blue);   const int height = image->Picture->Bitmap->Height;   const int width  = image->Picture->Bitmap->Width;   image->Canvas->Pen->Width = height / 10;   image->Canvas->Pen->Color = static_cast<TColor>(RGB(red,green,blue));   image->Canvas->MoveTo(1 * width / 4,height / 2);   image->Canvas->LineTo(3 * width / 4,height / 2); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
