



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [How to set the alignment of a widget to alClient?](CppQtAlClient.md)
========================================================================================================

 

When using the [Qt Creator](CppQtCreator.md) [IDE](CppIde.md) (and
especially when you have a [C++ Builder](CppBuilder.md) background) You
are probably viewing this page, because using a
[QLayout](CppQLayout.md) from the Widget Toolbox did not work as
expected. This page describes the way that works.

 

1.  Create a new Qt4 Gui application, that has a main window derived
    from [QDialog](CppQDialog.md)
2.  View the [QDialog](CppQDialog.md)'s user interface (for example, by
    double-clicking on 'dialog.ui' in the project manager)
3.  You will need to right-click on the dialog and select 'Layout'. If
    you do now, most options are disabled. You will need to add some
    Widgets first
4.  Put two [QPlainTextEdit](CppQPlainTextEdit.md)s on the
    [QDialog](CppQDialog.md)
5.  Right-click on the [QDialog](CppQDialog.md) and select 'Layout
    -&gt; Lay Out Vertically'

 

 

 

 

 

External links
--------------

 

-   [Embrisk page describing the same
    topic](http://www.embrisk.com/notes/qt_resize.html)

 

 

 

 

 





 



