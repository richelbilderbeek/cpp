[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetDC](CppGetDC.htm)
======================================

 

[Windows](CppWindows.htm) [function](CppFunction.htm) to get a [handle
to a device context](CppHDC.htm) from a window handle.

 

  --------------------------------------
  ` HDC GetDC(HWND handle_to_window);`
  --------------------------------------

 

If handle\_to\_window is [null](CppNull.htm), the [HDC](CppHDC.htm) of
the desktop is obtained

If [GetDC](CppGetDC.htm) fails, [null](CppNull.htm) is returned

 

Do not forget to call ReleaseDC on the obtained [HDC](CppHDC.htm)!

 

[GetDC](CppGetDC.htm) is declared in winuser.h (at least in the library
that shipped with [C++ Builder](CppBuilder.htm) 6.0).

 

 

 

 

 

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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
