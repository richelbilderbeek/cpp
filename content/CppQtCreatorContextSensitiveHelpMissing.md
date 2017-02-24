



 

 

 

 

 

([C++](Cpp.htm)) ![Qt Creator](PicQtCreator.png) [My context-sensitive help is missing. How to fix this?](CppQtCreatorContextSensitiveHelpMissing.htm)
======================================================================================================================================================

 

Install the documentation.

 

  ---------------------------------
  ` sudo apt-get install qt4-doc`
  ---------------------------------

 

Check if the .qch (Qt Creator Help) files are present.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` richel@richel-K73E:~$ locate *.qch /usr/lib/qt4/examples/help/contextsensitivehelp/doc/wateringmachine.qch /usr/lib/qt4/examples/help/simpletextviewer/documentation/simpletextviewer.qch /usr/share/qt4/doc/qch/assistant.qch /usr/share/qt4/doc/qch/designer.qch /usr/share/qt4/doc/qch/linguist.qch /usr/share/qt4/doc/qch/qmake.qch /usr/share/qt4/doc/qch/qml.qch /usr/share/qt4/doc/qch/qt.qch /usr/share/qtcreator/doc/qtcreator.qch`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Then do '(main menu item) Tools | (submenu item) Options | (list item)
Help | (tab) Documentation | (button) Add', and add the qch files.

 

 

 

 

 





 



