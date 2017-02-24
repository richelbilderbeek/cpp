



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QColor](CppQColor.md)
=========================================================

 

[QColor](CppQColor.md) is a [Qt](CppQt.md) [class](CppClass.htm) for a
color.

 

The code below, adapted from [Qt example 1: moving a sprite over a
background in 2D](CppQtExample1.md), shows how to set the color lime to
the color made transparent.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QGraphicsPixmapItem>  struct Sprite : public QGraphicsPixmapItem {   Sprite(     const std::string& filename,     const QColor& transparency_color = QColor(0,255,0)) //Lime green   {     QPixmap pixmap(filename.c_str());     const QBitmap mask = pixmap.createMaskFromColor(transparency_color);     pixmap.setMask(mask);     this->setPixmap(pixmap);   } };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



