

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QGraphicsObjectDebugging1](CppQGraphicsObjectDebugging1.htm)
==============================================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQGraphicsObjectDebugging1/CppQGraphicsObjectDebugging1.pro
--------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../DesktopApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppQGraphicsObjectDebugging1/main.cpp
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <cassert> #include <QApplication> #include <QGraphicsView> #include <QGraphicsSimpleTextItem> #pragma GCC diagnostic pop  struct QStringShower final : public QGraphicsSimpleTextItem {   QStringShower(const std::string& s = "")   {     setFlags(         QGraphicsItem::ItemIsSelectable       | QGraphicsItem::ItemIsMovable     );     SetString(s);   }   void SetString(const std::string s)   {     setText(s.c_str());   } };  void Test() {   QGraphicsScene scene;    QStringShower item("Before");   scene.addItem(&item);    //Create an image of before   QImage image_before(scene.sceneRect().size().toSize(), QImage::Format_ARGB32);   {     // Start all pixels transparent     image_before.fill(Qt::transparent);     QPainter painter(&image_before);     scene.render(&painter);     image_before.save("Before.png");   }    item.SetString("After");   //Create an image of after   QImage image_after(scene.sceneRect().size().toSize(), QImage::Format_ARGB32);   {     // Start all pixels transparent     image_after.fill(Qt::transparent);     QPainter painter(&image_after);     scene.render(&painter);     image_after.save("After.png");   }    //Assume both images differ   assert(image_before != image_after); }  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   Test();    QGraphicsScene s;   QStringShower t("QStringShower");    s.addItem(&t);   QGraphicsView v(&s);   v.setGeometry(100,100,400,100);   v.show();   return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
