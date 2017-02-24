



 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [How to set the alignment of a widget to alClient?](CppQtAlClient.htm)
========================================================================================================

 

When using the [Qt Creator](CppQtCreator.htm) [IDE](CppIde.htm) (and
especially when you have a [C++ Builder](CppBuilder.htm) background) You
are probably viewing this page, because using a
[QLayout](CppQLayout.htm) from the Widget Toolbox did not work as
expected. This page describes the way that works.

 

1.  Create a new Qt4 Gui application, that has a main window derived
    from [QDialog](CppQDialog.htm)
2.  View the [QDialog](CppQDialog.htm)'s user interface (for example, by
    double-clicking on 'dialog.ui' in the project manager)
3.  You will need to right-click on the dialog and select 'Layout'. If
    you do now, most options are disabled. You will need to add some
    Widgets first
4.  Put two [QPlainTextEdit](CppQPlainTextEdit.htm)s on the
    [QDialog](CppQDialog.htm)
5.  Right-click on the [QDialog](CppQDialog.htm) and select 'Layout
    -&gt; Lay Out Vertically'

 

 

 

 

 

External links
--------------

 

-   [Embrisk page describing the same
    topic](http://www.embrisk.com/notes/qt_resize.html)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
