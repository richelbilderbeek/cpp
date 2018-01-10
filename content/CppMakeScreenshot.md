
 

 

 

 

 

([C++](Cpp.md)) [MakeScreenschot](CppMakeScreenshot.md)
==========================================================

 

[MakeScreenschot](CppMakeScreenshot.md) is a [Windows](CppWindows.md)
and [VCL](CppVcl.md) [graphics](CppVclGraphics.md) [code
snippet](CppVclCodeSnippets.md) to make a screenshot and store it in a
Graphics::TBitmap.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <windows.h> #include <Extctrls.hpp> //From http://www.richelbilderbeek.nl/CppMakeScreenshot.htm void MakeScreenshot(Graphics::TBitmap * const b) {   assert(b);   assert(b->PixelFormat == pf32bit);   const HDC desktop = GetDC(0);   b->Width  = Screen->Width;   b->Height = Screen->Height;   BitBlt(b->Canvas->Handle, 0, 0, b->Width, b->Height, desktop, 0, 0, SRCCOPY);   b->Modified = true;   ReleaseDC(0, desktop); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

