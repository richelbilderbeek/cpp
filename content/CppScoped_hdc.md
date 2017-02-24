[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Scoped\_hdc](CppScoped_hdc.htm)
=================================================

 

[Data type](CppDataType.htm) to manage a [handle to a device
context](CppHDC.htm) ([HDC](CppHDC.htm)).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <windows.h> #include <boost/noncopyable.hpp>  //From http://www.richelbilderbeek.nl/CppScoped_hdc.htm struct Scoped_hdc : public boost::noncopyable {   Scoped_hdc(const HWND hwnd)     : m_hwnd(hwnd),       m_hdc(GetDC(hwnd))   {    }   ~Scoped_hdc()   {     ReleaseDC(m_hwnd,m_hdc);   }   const HDC Get() const { return m_hdc; }    private:   const HWND m_hwnd;   const HDC m_hdc; };`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
