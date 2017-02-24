



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QBitmap](CppQBitmap.md)
===========================================================

 

[QBitmap](CppQBitmap.md) is a [Qt](CppQt.md) [class](CppClass.htm)
used for masking/transparency in [QPixmap](CppQPixmap.md).
[QBitmap](CppQBitmap.md) is a [class](CppClass.md) for containing
monochrome (that is: each pixel is either on or off) images, instead of
the colored Windows bitmaps.

 

The code below, adapted from [Qt example 1: moving a sprite over a
background in 2D](CppQtExample1.md), shows how to add transparency to a
[QPixmap](CppQPixmap.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QGraphicsPixmapItem>  struct Sprite : public QGraphicsPixmapItem {   Sprite(     const std::string& filename,     const QColor& transparency_color = QColor(0,255,0)) //Lime green   {     QPixmap pixmap(filename.c_str());     const QBitmap mask = pixmap.createMaskFromColor(transparency_color);     pixmap.setMask(mask);     this->setPixmap(pixmap);   } };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



