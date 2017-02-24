
 

 

 

 

 

([C++](Cpp.md)) [CloseForegroundWindow](CppCloseForegroundWindow.md)
======================================================================

 

[CloseForegroundWindow](CppCloseForegroundWindow.md) us a
[Windows](CppWindows.md) [code snippet](CppCodeSnippets.md) to
minimize the foreground window.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <windows.h>  //From http://www.richelbilderbeek.nl/CppCloseForegroundWindow.htm void CloseForegroundWindow() {   const HWND handle = GetForegroundWindow();   CloseWindow(handle); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
