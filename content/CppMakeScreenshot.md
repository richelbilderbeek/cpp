



 

 

 

 

 

([C++](Cpp.htm)) [MakeScreenschot](CppMakeScreenschot.htm)
==========================================================

 

[MakeScreenschot](CppMakeScreenschot.htm) is a [Windows](CppWindows.htm)
and [VCL](CppVcl.htm) [graphics](CppVclGraphics.htm) [code
snippet](CppVclCodeSnippets.htm) to make a screenshot and store it in a
Graphics::TBitmap.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <windows.h> #include <Extctrls.hpp> //From http://www.richelbilderbeek.nl/CppMakeScreenshot.htm void MakeScreenshot(Graphics::TBitmap * const b) {   assert(b);   assert(b->PixelFormat == pf32bit);   const HDC desktop = GetDC(0);   b->Width  = Screen->Width;   b->Height = Screen->Height;   BitBlt(b->Canvas->Handle, 0, 0, b->Width, b->Height, desktop, 0, 0, SRCCOPY);   b->Modified = true;   ReleaseDC(0, desktop); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
