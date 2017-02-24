



 

 

 

 

 

([C++](Cpp.htm)) [HDC](CppHDC.htm)
==================================

 

[Windows](CppWindows.htm) [data type](CppDataType.htm) for a [handle to
a device context](CppHDC.htm).

 

An [HDC](CppHDC.htm) can be obtained by [GetDC](CppGetDC.htm) (among
others) and must be released by ReleaseDC. Use
[Scoped\_hdc](CppScoped_hdc.htm) for safe memory use.

 

[HDC](CppHDC.htm) is declared in windef.h (at least in the library that
shipped with [C++ Builder](CppBuilder.htm) 6.0).

 

 

 

 

 

Example: [MakeScreenshot](CppMakeScreenshot.htm)
------------------------------------------------

 

[MakeScreenshot](CppMakeScreenshot.htm) retrieves the [HDC](CppHDC.htm)
of the desktop and copies it (using BitBlt) on a bitmap (or more
specific: a Graphics::TBitmap).

 

[MakeScreenshot](CppMakeScreenshot.htm) uses the [VCL](CppVcl.htm) [data
type](CppDataType.htm) Graphics::TBitmap supplied with [C++
Builder](CppBuilder.htm) 6.0.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <windows.h> #include <Extctrls.hpp> //From http://www.richelbilderbeek.nl/CppMakeScreenshot.htm void MakeScreenshot(Graphics::TBitmap * const b) {   assert(b);   assert(b->PixelFormat == pf32bit);   const HDC desktop = GetDC(0);   b->Width  = Screen->Width;   b->Height = Screen->Height;   BitBlt(b->Canvas->Handle, 0, 0, b->Width, b->Height, desktop, 0, 0, SRCCOPY);   b->Modified = true;   ReleaseDC(0, desktop); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



