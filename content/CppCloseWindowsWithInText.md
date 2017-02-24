
 

 

 

 

 

([C++](Cpp.md)) [CloseWindowsWithInText](CppCloseWindowsWithInText.md)
========================================================================

 

[CloseWindowsWithInText](CppCloseWindowsWithInText.md) is a
[Windows](CppWindows.md) [code snippet](CppCodeSnippets.md) to
minimize a window with a certain substring within its text.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <windows.h>  //From http://www.richelbilderbeek.nl/CppCloseWindowsWithInText.htm void CloseWindowsWithInText(const std::string& s) {   HWND handle = GetWindow(GetForegroundWindow(),GW_HWNDFIRST);   while (handle)   {     const int sz = 256;     char buffer[sz];     GetWindowText(handle,buffer,sz);     const std::string text(buffer);     if ( std::search(text.begin(),text.end(),s.begin(),s.end()) != text.end() )     {       CloseWindow(handle);     }     handle = GetNextWindow(handle,GW_HWNDNEXT);   } } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

