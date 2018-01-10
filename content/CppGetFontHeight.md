
 

 

 

 

 

([C++](Cpp.md)) [GetFontHeight](CppGetFontHeight.md)
======================================================

 

[Function](CppFunction.md) to get the height of a Font in pixels.

The [member function](CppMemberFunction.md) Font::Size and
[std::abs](CppStdAbs.md) on Font::Height don't work perfectly.

Use Canvas::TextHeight on a random string instead.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppGetFontHeight.htm const int GetFontHeight(const TImage * const image) {   // const_cast necessary as the VCL is not const-correct. Grumble, grumble...   return const_cast<TImage*>(image)->Canvas->TextHeight("x"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

