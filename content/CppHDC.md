
 

 

 

 

 

([C++](Cpp.md)) [HDC](CppHDC.md)
==================================

 

[Windows](CppWindows.md) [data type](CppDataType.md) for a [handle to
a device context](CppHDC.md).

 

An [HDC](CppHDC.md) can be obtained by [GetDC](CppGetDC.md) (among
others) and must be released by ReleaseDC. Use
[Scoped\_hdc](CppScoped_hdc.md) for safe memory use.

 

[HDC](CppHDC.md) is declared in windef.h (at least in the library that
shipped with [C++ Builder](CppBuilder.md) 6.0).

 

 

 

 

 

Example: [MakeScreenshot](CppMakeScreenshot.md)
------------------------------------------------

 

[MakeScreenshot](CppMakeScreenshot.md) retrieves the [HDC](CppHDC.md)
of the desktop and copies it (using BitBlt) on a bitmap (or more
specific: a Graphics::TBitmap).

 

[MakeScreenshot](CppMakeScreenshot.md) uses the [VCL](CppVcl.md) [data
type](CppDataType.md) Graphics::TBitmap supplied with [C++
Builder](CppBuilder.md) 6.0.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <windows.h> #include <Extctrls.hpp> //From http://www.richelbilderbeek.nl/CppMakeScreenshot.htm void MakeScreenshot(Graphics::TBitmap * const b) {   assert(b);   assert(b->PixelFormat == pf32bit);   const HDC desktop = GetDC(0);   b->Width  = Screen->Width;   b->Height = Screen->Height;   BitBlt(b->Canvas->Handle, 0, 0, b->Width, b->Height, desktop, 0, 0, SRCCOPY);   b->Modified = true;   ReleaseDC(0, desktop); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

