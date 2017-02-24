

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [CloseWindowsWithInText](CppCloseWindowsWithInText.htm)
========================================================================

 

[CloseWindowsWithInText](CppCloseWindowsWithInText.htm) is a
[Windows](CppWindows.htm) [code snippet](CppCodeSnippets.htm) to
minimize a window with a certain substring within its text.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <windows.h>  //From http://www.richelbilderbeek.nl/CppCloseWindowsWithInText.htm void CloseWindowsWithInText(const std::string& s) {   HWND handle = GetWindow(GetForegroundWindow(),GW_HWNDFIRST);   while (handle)   {     const int sz = 256;     char buffer[sz];     GetWindowText(handle,buffer,sz);     const std::string text(buffer);     if ( std::search(text.begin(),text.end(),s.begin(),s.end()) != text.end() )     {       CloseWindow(handle);     }     handle = GetNextWindow(handle,GW_HWNDNEXT);   } } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
