



 

 

 

 

 

([C++](Cpp.md)) [ColorToRgb](CppColorToRgb.md)
================================================

 

[ColorToRgb](CppColorToRgb.md) converts a TColor value to its RGB
values. To convert RGB values to a TColor, use [the RgbToColor
function](CppRgbToColor.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl void ColorToRgb(   const TColor color,   unsigned char& red,   unsigned char& green,   unsigned char& blue  ) {   red   = GetRValue(color);   green = GetGValue(color);   blue  = GetBValue(color); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
