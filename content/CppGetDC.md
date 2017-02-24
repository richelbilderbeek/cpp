
 

 

 

 

 

([C++](Cpp.md)) [GetDC](CppGetDC.md)
======================================

 

[Windows](CppWindows.md) [function](CppFunction.md) to get a [handle
to a device context](CppHDC.md) from a window handle.

 

  --------------------------------------
  ` HDC GetDC(HWND handle_to_window);`
  --------------------------------------

 

If handle\_to\_window is [null](CppNull.md), the [HDC](CppHDC.md) of
the desktop is obtained

If [GetDC](CppGetDC.md) fails, [null](CppNull.md) is returned

 

Do not forget to call ReleaseDC on the obtained [HDC](CppHDC.md)!

 

[GetDC](CppGetDC.md) is declared in winuser.h (at least in the library
that shipped with [C++ Builder](CppBuilder.md) 6.0).

 

 

 

 

 

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

 

 

 

 

 

 

