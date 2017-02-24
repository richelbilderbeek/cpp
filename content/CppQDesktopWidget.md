

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [QDesktopWidget](CppQDesktopWidget.htm)
=========================================================================

 

[QDesktopWidget](CppQDesktopWidget.htm) is a [Qt](CppQt.htm)
[class](CppClass.htm) to get information about the screen/monitor.

 

The code below, similar to [How to get the screen
size?](CppQtGetScreenSize.htm) shows how to use
[QDesktopWidget](CppQDesktopWidget.htm) to obtain the screen size, like
[this screenshot (png)](CppQDesktopWidget.png).

 

-   [Download the Qt Creator project
    'QDesktopWidget' (zip)](CppQDesktopWidget.zip)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QDesktopWidget> #include <QDialog>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);    const QRect sz = QApplication::desktop()->rect();    QString w; w.setNum(sz.width());   QString h; h.setNum(sz.height());    QDialog d;   d.setWindowTitle("Screen size: " + w + " x " + h);   d.show();    return a.exec(); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
