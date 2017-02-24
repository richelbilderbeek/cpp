

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++ Builder](CppBuilder.htm)) [Call a dynamically loaded DLL in C++ Builder](CppBuilderCallDllDynamic.htm)
============================================================================================================

 

[Calling a dynamically loaded DLL](CppBuilderCallDll.htm) is one of the
two ways to [call a DLL](CppBuilderCallDll.htm), the other way is to
call a statically loaded DLL.

 

In the two equivalent examples below, the function GetAnswerOfLife is
called from the file ProjectDll.DLL and its answer (which should be 42)
is checked.

 

 

 

 

 

Example \#0: Using a struct
---------------------------

 

My favorite and more exception safe solution.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppBuilderCallDllDynamic.htm  #include <windows.h>  struct DllHandle {   DllHandle(const char * const filename)     : h(LoadLibrary(filename)) {}   ~DllHandle() { if (h) FreeLibrary(h); }   const HINSTANCE Get() const { return h; }    private:   HINSTANCE h; };  int main() {   //Obtain a handle to the DLL   const DllHandle h("ProjectDll.DLL");   if (!h.Get())   {     MessageBox(0,"Could not load DLL","UnitCallDll",MB_OK);     return 1;   }    //Obtain a handle to the GetAnswerOfLife function   typedef const int (*GetAnswerOfLifeFunction)();   const GetAnswerOfLifeFunction AnswerOfLife     = reinterpret_cast<GetAnswerOfLifeFunction>(       GetProcAddress(h.Get(),"_GetAnswerOfLife"));     if (!AnswerOfLife) //No handle obtained   {     MessageBox(0,"Loading AnswerOfLife failed","UnitCallDll",MB_OK);     return 1;   }    if (AnswerOfLife() != 42)   {     MessageBox(0,"Function AnswerOfLife failed","UnitCallDll",MB_OK);     return 1;   }   else   {     MessageBox(0,"Function AnswerOfLife successful!","UnitCallDll",MB_OK);   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

When you look at the GetProcAddress function, you'll note that [C++
Builder](CppBuilder.htm) add a leading underscore in the function name.

 

-   [View this code in plain text](CppBuilderCallDllDynamic0.txt)
-   [Download the project with this
    example (zip)](CppBuilderCallDllDynamic.zip)

 

 

 

 

 

Example \#1: Without using a struct
-----------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppBuilderCallDllDynamic.htm  #include <windows.h>  int main() {   //Obtain a handle to the DLL   const HINSTANCE dllHandle = LoadLibrary("ProjectDll.DLL");   if (!dllHandle)   {     MessageBox(0,"Could not load DLL","UnitCallDll",MB_OK);     return 1;   }    //Obtain a handle to the GetAnswerOfLife function   typedef const int (*GetAnswerOfLifeFunction)();   const GetAnswerOfLifeFunction AnswerOfLife     = reinterpret_cast<GetAnswerOfLifeFunction>(       GetProcAddress(dllHandle,"_GetAnswerOfLife"));    if (!AnswerOfLife) //No handle obtained   {     MessageBox(0,"Loading AnswerOfLife failed","UnitCallDll",MB_OK);     FreeLibrary(dllHandle);     return 1;   }    if (AnswerOfLife() != 42)   {     MessageBox(0,"Function AnswerOfLife failed","UnitCallDll",MB_OK);     FreeLibrary(dllHandle);     return 1;   }   else   {     MessageBox(0,"Function AnswerOfLife successful!","UnitCallDll",MB_OK);     FreeLibrary(dllHandle);   }  }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

When you look at the GetProcAddress function, you'll note that [C++
Builder](CppBuilder.htm) add a leading underscore in the function name.

 

-   [View this code in plain text](CppBuilderCallDllDynamic1.txt)
-   [Download the project with this
    example (zip)](CppBuilderCallDllDynamic.zip)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
