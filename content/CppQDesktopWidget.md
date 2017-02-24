



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [QDesktopWidget](CppQDesktopWidget.md)
=========================================================================

 

[QDesktopWidget](CppQDesktopWidget.md) is a [Qt](CppQt.md)
[class](CppClass.md) to get information about the screen/monitor.

 

The code below, similar to [How to get the screen
size?](CppQtGetScreenSize.md) shows how to use
[QDesktopWidget](CppQDesktopWidget.md) to obtain the screen size, like
[this screenshot (png)](CppQDesktopWidget.png).

 

-   [Download the Qt Creator project
    'QDesktopWidget' (zip)](CppQDesktopWidget.zip)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QDesktopWidget> #include <QDialog>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    const QRect sz = QApplication::desktop()->rect();    QString w; w.setNum(sz.width());   QString h; h.setNum(sz.height());    QDialog d;   d.setWindowTitle("Screen size: " + w + " x " + h);   d.show();    return a.exec(); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



