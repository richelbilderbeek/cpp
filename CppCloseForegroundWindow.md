[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [CloseForegroundWindow](CppCloseForegroundWindow.htm)
======================================================================

 

[CloseForegroundWindow](CppCloseForegroundWindow.htm) us a
[Windows](CppWindows.htm) [code snippet](CppCodeSnippets.htm) to
minimize the foreground window.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <windows.h>  //From http://www.richelbilderbeek.nl/CppCloseForegroundWindow.htm void CloseForegroundWindow() {   const HWND handle = GetForegroundWindow();   CloseWindow(handle); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
