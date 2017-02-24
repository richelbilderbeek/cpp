[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetFontHeight](CppGetFontHeight.htm)
======================================================

 

[Function](CppFunction.htm) to get the height of a Font in pixels.

The [member function](CppMemberFunction.htm) Font::Size and
[std::abs](CppAbs.htm) on Font::Height don't work perfectly.

Use Canvas::TextHeight on a random string instead.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppGetFontHeight.htm const int GetFontHeight(const TImage * const image) {   // const_cast necessary as the VCL is not const-correct. Grumble, grumble...   return const_cast<TImage*>(image)->Canvas->TextHeight("x"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
