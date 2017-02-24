[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [KnokfighterResources](CppKnokfighterResources.htm)
====================================================================

 

./CppKnokfighterResources/convert\_bmp\_to\_png.sh
--------------------------------------------------

 

  -------------------------------------------------------------------------
  ``  for x in *.bmp; do convert "$x" "`basename "$x" .bmp`.png"; done ``
  -------------------------------------------------------------------------

 

 

 

 

 

./CppKnokfighterResources/convert\_wav\_to\_ogg.sh
--------------------------------------------------

 

  ---------------------------------------------------------------------------
  ``  for x in *.wav; do avconv -i "$x" "`basename "$x" .wav`.ogg"; done ``
  ---------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
