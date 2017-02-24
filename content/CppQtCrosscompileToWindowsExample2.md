



 

 

 

 

 

([C++](Cpp.md)) [How to cross-compile a Qt Creator project from Ubuntu to a windows executable: example 2: Hello Qt](CppQtCrosscompileToWindowsExample2.md)
=============================================================================================================================================================

 

![TODO](PicTransparent.png)![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

This is example 2, and a solution of unknown viability in answering the
[Qt FAQ](CppQtFaq.md) [How to cross-compile a Qt Creator project from
Ubuntu to a windows executable?](CppQtCrosscompileToWindows.md).

 

 

 

 

 

Downloads
---------

 

-   [Download the Qt Creator project
    'CppQtCrosscompileToWindowsExample2' (zip)](CppQtCrosscompileToWindowsExample2.zip)

 

 

 

 

 

Project information
-------------------

 

Project is a standard [Hello Qt](CppHelloQt.md) program

Exceptions:

-   Project Option -&gt; Build Settings -&gt; Shadow build unchecked

 

 

 

 

 

Process
-------

 

  ----------------------------------------------------------
  ` i586-mingw32msvc-g++ -o MyWin.exe dialog.cpp main.cpp`
  ----------------------------------------------------------

 

Screen output:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` In file included from dialog.cpp:1: dialog.h:4:19: error: QDialog: No such file or directory In file included from dialog.cpp:2: ui_dialog.h:13:27: error: QtCore/QVariant: No such file or directory ui_dialog.h:14:25: error: QtGui/QAction: No such file or directory ui_dialog.h:15:30: error: QtGui/QApplication: No such file or directory ui_dialog.h:16:30: error: QtGui/QButtonGroup: No such file or directory ui_dialog.h:17:25: error: QtGui/QDialog: No such file or directory ui_dialog.h:18:29: error: QtGui/QHeaderView: No such file or directory ui_dialog.h:19:24: error: QtGui/QLabel: No such file or directory ui_dialog.h:20:29: error: QtGui/QVBoxLayout: No such file or directory In file included from dialog.cpp:1: dialog.h:11: error: expected class-name before '{' token dialog.h:12: error: ISO C++ forbids declaration of 'Q_OBJECT' with no type dialog.h:14: error: expected ';' before 'public' dialog.h:19: error: 'QEvent' has not been declared In file included from dialog.cpp:2: ui_dialog.h:24: error: expected constructor, destructor, or type conversion before 'class' main.cpp:1:30: error: QtGui/QApplication: No such file or directory In file included from main.cpp:2: dialog.h:4:19: error: QDialog: No such file or directory In file included from main.cpp:2: dialog.h:11: error: expected class-name before '{' token dialog.h:12: error: ISO C++ forbids declaration of 'Q_OBJECT' with no type dialog.h:14: error: expected ';' before 'public' dialog.h:19: error: 'QEvent' has not been declared main.cpp: In function 'int main(int, char**)': main.cpp:6: error: 'QApplication' was not declared in this scope main.cpp:6: error: expected ';' before 'a' dialog.h:16: error: 'Dialog::~Dialog()' is private main.cpp:7: error: within this context main.cpp:8: error: 'class Dialog' has no member named 'show' main.cpp:10: error: 'a' was not declared in this scope`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

So, add the libs in making :

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` i586-mingw32msvc-g++ -I/usr/share/qt4/mkspecs/linux-g++ -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -o MyWin.exe dialog.cpp main.cpp -L/usr/lib -lQtGui`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Resulting in:

  -------------------------------------------------------------------------------------------------
  ` /usr/lib/gcc/i586-mingw32msvc/4.4.2/../../../../i586-mingw32msvc/bin/ld: cannot find -lQtGui`
  -------------------------------------------------------------------------------------------------

 

This error indicates -I think- that MinGW needs a Windows libary version
of QtGui. So I perform a Windows Find for 'libqt\*.\*'.

 

 

 

 

 





 



