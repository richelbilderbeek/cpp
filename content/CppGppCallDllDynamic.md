

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm) using G++) [Call a dynamically loaded DLL](CppGppCallDllDynamic.htm)
====================================================================================

 

One of the two ways to [call a DLL](CppGppCallDll.htm), the other way is
to call a statically loaded DLL.

 

In the two equivalent examples below, the function GetAnswerOfLife is
called from the file Functions.DLL and its answer (which should be 42)
is checked.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <windows.h>  struct DllHandle {   DllHandle(const char * const filename)     : h(LoadLibrary(filename)) {}   ~DllHandle() { if (h) FreeLibrary(h); }   const HINSTANCE Get() const { return h; }    private:   HINSTANCE h; };  int main() {   //Obtain a handle to the DLL   const DllHandle h("Functions.DLL");   if (!h.Get())   {     MessageBox(0,"Could not load DLL","UnitCallDll",MB_OK);     return 1;   }    //Obtain a handle to the GetAnswerOfLife function   typedef const int (*GetAnswerOfLifeFunction)();   const GetAnswerOfLifeFunction AnswerOfLife     = reinterpret_cast<GetAnswerOfLifeFunction>(       GetProcAddress(h.Get(),"GetAnswerOfLife"));     if (!AnswerOfLife) //No handle obtained   {     MessageBox(0,"Loading AnswerOfLife failed","UnitCallDll",MB_OK);     return 1;   }    if (AnswerOfLife() != 42)   {     MessageBox(0,"Function AnswerOfLife failed","UnitCallDll",MB_OK);     return 1;   }   else   {     MessageBox(0,"Function AnswerOfLife successful!","UnitCallDll",MB_OK);   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

When you look at the GetProcAddress function, you'll note that, unlike
[C++ Builder](CppBuilder.htm), there is no leading underscore added in
the function name.

 

 

 

 

 

Building the executable
-----------------------

 

Use the following G++ command:

 

  --------------------------------
  ` g++ -o Main UnitMain.cpp lm`
  --------------------------------

 

Now start the executable called Main.

 

-   [Download the project (zip)](CppGppCallDllDynamic.zip)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
