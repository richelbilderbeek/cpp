[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [DrawTextCentered](CppDrawTextCentered.htm)
============================================================

 

[Graphics](CppGraphics.htm) [code snippet](CppCodeSnippets.htm) to draw
some text centered on a TImage.

 

Assumes you have already defined [GetFontHeight](CppGetFontHeight.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <cassert>  //From http://www.richelbilderbeek.nl/CppDrawTextCentered.htm void DrawTextCentered(TImage * const image, const std::string& s) {   const int textWidth = image->Canvas->TextWidth(s.c_str());   const int textHeight = GetFontHeight(image);   assert(textHeight >= 0);   const int midX = image->Picture->Graphic->Width  / 2;   const int midY = image->Picture->Graphic->Height / 2;   const int x1 = midX - (textWidth  / 2);   const int y1 = midY - (textHeight / 2);   const int x2 = midX + (textWidth  / 2);   const int y2 = midY + (textHeight / 2);   image->Canvas->TextRect(     TRect(x1,y1,x2,y2),     x1,y1,s.c_str()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
