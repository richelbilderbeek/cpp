
 

 

 

 

 

([C++](Cpp.md)) [KnokfighterResources](CppKnokfighterResources.md)
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

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
