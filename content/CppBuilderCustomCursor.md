



 

 

 

 

 

([C++](Cpp.md)) [Using a custom cursor in C++ Builder](CppBuilderCustomCursor.md)
===================================================================================

 

A [C++ Builder FAQ](CppBuilderFaq.md) about how to use a custom cursor
in [C++ Builder](CppBuilder.md).

 

You can make a cursor in 'Tools | Image Editor'.

 

Put the code below in your Forms's constructor.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` const TCursor c = static_cast<TCursor>(22); //22 is by default an unused index Screen->Cursors[c] = LoadCursorFromFile("MyCursor.cur"); this ->Cursor = c;`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



