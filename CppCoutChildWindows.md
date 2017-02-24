[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [CoutChildWindows](CppCoutChildWindows.htm)
============================================================

 

[Windows](CppWindows.htm) [code snippet](CppCodeSnippets.htm) to
[std::cout](CppCout.htm) the text of each windows and its children.

 

Note that I really dislike all those Windows API casts. I have tried to
make them as explicit as possible.

 

This code is [compiled](CppCompile.htm) under [C++
Builder](CppBuilder.htm) 6.0.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string> #include <boost/lexical_cast.hpp> #include <windows.h>  BOOL CALLBACK CoutEachChild(HWND hwnd, LPARAM lParam) {   const int sz = 256;   char buffer[sz];   GetWindowText(hwnd,buffer,sz);   const std::string window_name(buffer);   SendMessage(hwnd, WM_GETTEXT,sz - 1,reinterpret_cast<LPARAM>(buffer)); //A dirty cast   const std::string child_name(buffer);   const std::string window_adress = boost::lexical_cast<std::string>(hwnd);   const std::string debug_string = window_adress + " : " + window_name + " : " + child_name;   std::cout << "  * " << debug_string << '\n';   return true; }  int main() {   typedef BOOL CALLBACK (*EnumChildFunc)();   HWND handle = GetWindow(GetForegroundWindow(),GW_HWNDFIRST);    while(handle)   {     const int sz = 256;     char buffer[sz];     GetWindowText(handle,buffer,sz);     const std::string window_name(buffer);     std::cout << "* " << window_name << '\n';     EnumChildWindows(handle,reinterpret_cast<EnumChildFunc>(CoutEachChild), 0);     handle = GetNextWindow(handle,GW_HWNDNEXT);   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
