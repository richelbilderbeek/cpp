

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ColorToRgb](CppColorToRgb.htm)
================================================

 

[ColorToRgb](CppColorToRgb.htm) converts a TColor value to its RGB
values. To convert RGB values to a TColor, use [the RgbToColor
function](CppRgbToColor.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl void ColorToRgb(   const TColor color,   unsigned char& red,   unsigned char& green,   unsigned char& blue  ) {   red   = GetRValue(color);   green = GetGValue(color);   blue  = GetBValue(color); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
