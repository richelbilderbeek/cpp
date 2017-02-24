

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [How to create a simple 2D graphics program from a console application?](CppQt2dGraphicsConsole.htm)
======================================================================================================================================

 

This [simple 2D graphics program](CppQt2dGraphicsConsole.htm) has the
goal to create a colored gradient by setting the colors of individual
pixels from a console application.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` This guide is not yet finished: I haven't gotten it to work yet. The screenshots from this guide are made using Qt Creator 1.3.1 running under Ubuntu 10.04.`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To create this [simple 2D graphics program from a console
application](CppQt2dGraphicsConsole.htm) in [Qt
Creator](CppQtCreator.htm), you can follow the steps below:

-   Step \#1: Setting up the Qt4 Console application project
-   Step \#2: Coding the [definition](CppDefinition.htm) of
    [main](CppMain.htm)
-   Step \#3: Running the program

 

 

 

 

 

Step \#1: Setting up the Qt4 Console application project
--------------------------------------------------------

 

1.  Start [Qt Creator](CppQtCreator.htm).
2.  If you are not shown the welcome screen, click on 'Welcome' on the
    left
3.  If, in the welcome screen, the 'Develop' tab is not shown, click on
    'Develop' to view the [Welcome screen Develop
    tab](CppQtCreatorWelcomeDevelop_2_1_0.png)
4.  In the [Welcome screen Develop
    tab](CppQtCreatorWelcomeDevelop_2_1_0.png), click 'Create New
    Project' to go to the [New project
    dialog](CppQtCreatorNewProject_2_5_2.png)
5.  In the [New project dialog](CppQtCreatorNewProject_2_5_2.png), click
    'QT4 Gui Application' to go to the [introduction and project
    location dialog](CppQtIntroduction.png)
6.  In the [Introduction and project location
    dialog](CppQtIntroduction.png), you must specify a name and location
    to save your (project) files. For example, after 'Name'
    type 'CppQt2dGraphicsConsole'. Click next
7.  In the [select required modules
    dialog](CppQtCreatorSelectRequiredModules.png), make sure QtCore and
    QtGui are checked and click 'Next'
8.  In the [project management dialog](CppQtProjectManagement.png),
    click 'Finish'

 

Now your Qt4 Console application project is successfully set up. Your
screen might look like [this](CppQt2dGraphicsConsole1.png).

 

 

 

 

 

Step \#2: Coding the [definition](CppDefinition.htm) of [main](CppMain.htm)
---------------------------------------------------------------------------

 

Your screen might look like [this](CppQt2dGraphicsConsole1.png).

 

1.  On the left menu bar, you can see you are now in 'Edit' mode
    (instead of 'Welcome' mode). You can see your project right of this
    menu bar. You can see a 'CppQt2dGraphicsConsole' project folder,
    containing the following folders and files:
    1.  CppQt2dGraphicsConsole.pro
    2.  main.cpp (in folder 'Sources')

    Double-click on 'main.cpp' to be taken to the code editor.
2.  Your screen then might look like [this](CppQt2dGraphicsConsole2.png)
    with the following source code:
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #include <QtCore/QCoreApplication>          int main(int argc, char *argv[])     {         QCoreApplication a(argc, argv);              return a.exec();     }     `
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3.  Change this code to the following:
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #include <QApplication>     #include <QGraphicsScene>     #include <QGraphicsView>          int main(int argc, char *argv[])     {       QApplication a(argc, argv);            QGraphicsScene scene;       scene.addText("Hello, world!");            QGraphicsView view(&scene);       view.show();            return a.exec();     }     `
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Step \#3: Running the program
-----------------------------

 

1.  Press CTRL-R to start the program

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
