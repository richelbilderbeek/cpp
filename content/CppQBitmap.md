



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QBitmap](CppQBitmap.htm)
===========================================================

 

[QBitmap](CppQBitmap.htm) is a [Qt](CppQt.htm) [class](CppClass.htm)
used for masking/transparency in [QPixmap](CppQPixmap.htm).
[QBitmap](CppQBitmap.htm) is a [class](CppClass.htm) for containing
monochrome (that is: each pixel is either on or off) images, instead of
the colored Windows bitmaps.

 

The code below, adapted from [Qt example 1: moving a sprite over a
background in 2D](CppQtExample1.htm), shows how to add transparency to a
[QPixmap](CppQPixmap.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QGraphicsPixmapItem>  struct Sprite : public QGraphicsPixmapItem {   Sprite(     const std::string& filename,     const QColor& transparency_color = QColor(0,255,0)) //Lime green   {     QPixmap pixmap(filename.c_str());     const QBitmap mask = pixmap.createMaskFromColor(transparency_color);     pixmap.setMask(mask);     this->setPixmap(pixmap);   } };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
