



 

 

 

 

 

([C++](Cpp.htm)) [CloseForegroundWindow](CppCloseForegroundWindow.htm)
======================================================================

 

[CloseForegroundWindow](CppCloseForegroundWindow.htm) us a
[Windows](CppWindows.htm) [code snippet](CppCodeSnippets.htm) to
minimize the foreground window.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <windows.h>  //From http://www.richelbilderbeek.nl/CppCloseForegroundWindow.htm void CloseForegroundWindow() {   const HWND handle = GetForegroundWindow();   CloseWindow(handle); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
