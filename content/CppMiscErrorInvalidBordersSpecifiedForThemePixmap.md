



 

 

 

 

 

([C++](Cpp.md)) [Invalid borders specified for theme pixmap](CppMiscErrorInvalidBordersSpecifiedForThemePixmap.md)
====================================================================================================================

 

[Misc error](CppMiscError.md).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ** (ProjectVanDenBogaart:5134): WARNING **: Invalid borders specified for theme pixmap:         /usr/share/themes/Lubuntu-default/gtk-2.0/images/null.png, borders don't fit within the image  ** (ProjectVanDenBogaart:5134): WARNING **:     :         /usr/share/themes/Lubuntu-default/gtk-2.0/images/scrollbar_vertical.png, borders don't fit within the image`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Originally, I used the rigorous following solution:

 

  -----------------------------------
  ` sudo apt-get install lubuntu-.`
  -----------------------------------

 

[Menachem](http://askubuntu.com/users/21794/menachem) pointed out at
[this askubuntu.com
thread](http://askubuntu.com/questions/225093/emacs-gives-warnings-in-lubuntu)
that the following might suffice:

 

  -----------------------------------------
  ` sudo apt-get install lubuntu-artwork`
  -----------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
