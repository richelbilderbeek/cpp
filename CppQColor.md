[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QColor](CppQColor.htm)
=========================================================

 

[QColor](CppQColor.htm) is a [Qt](CppQt.htm) [class](CppClass.htm) for a
color.

 

The code below, adapted from [Qt example 1: moving a sprite over a
background in 2D](CppQtExample1.htm), shows how to set the color lime to
the color made transparent.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QGraphicsPixmapItem>  struct Sprite : public QGraphicsPixmapItem {   Sprite(     const std::string& filename,     const QColor& transparency_color = QColor(0,255,0)) //Lime green   {     QPixmap pixmap(filename.c_str());     const QBitmap mask = pixmap.createMaskFromColor(transparency_color);     pixmap.setMask(mask);     this->setPixmap(pixmap);   } };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
