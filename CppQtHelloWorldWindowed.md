[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [How to create a windowed 'Hello World' program?](CppQtHelloWorldWindowed.htm)
================================================================================================================

 

Officially, there is no standard for a 'Hello World' program when using
a GUI. This example does the following:

1.  At program startup, a window is displayed with the text 'Hello
    World'

 

To create a windowed 'Hello World' program in [Qt
Creator](CppQtCreator.htm), you can follow the steps below:

-   Step \#1: Setting up the Qt4 console application project
-   Step \#2: Coding
-   Step \#3: Running the program

 

 

 

 

 

Step \#1: Setting up the Qt4 Gui application project
----------------------------------------------------

 

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
    type 'HelloWorldGui'. Click next
7.  In the [select required modules
    dialog](CppQtCreatorSelectRequiredModules.png), make sure QtCore and
    QtGui are checked and click 'Next'
8.  In the [project management dialog](CppQtProjectManagement.png),
    click 'Finish'

 

Now your Qt4 Gui application project is successfully set up. Your screen
might look like [this](CppQtHelloWorldWindowedGui1.png).

 

 

 

 

 

Step \#2: Setting up the GUI
----------------------------

 

1.  On the left menu bar, you can see you are now in 'Edit' mode
    (instead of 'Welcome' mode). You can see your project right of this
    menu bar. You can see a 'QtHelloWorldGui' project folder, containing
    the following files:
    1.  QtHelloWorldGui.pro
    2.  main.cpp
    3.  mainwindow.cpp
    4.  mainwindow.h
    5.  mainwindow.ui

    Double-click on 'mainwindow.ui' to be taken to the GUI designer.
2.  Your screen might then look like
    [this](CppQtHelloWorldWindowedGui2.png). I prefer to press 'Alt-0'
    to remove the Project manager sidebar and my screen looks like
    [this](CppQtHelloWorldWindowedGui3.png)
3.  From the Widget toolbox, place a PushButton (under 'Buttons') and
    Label (under 'Display Widgets') on the MainWindow.

 

You have now successfully set up the GUI. Your screen might then look
like [this](CppQtHelloWorldWindowedGui4.png).

 

 

 

 

 

Step \#3: Coding the [declaration](CppDeclaration.htm) of the slot OnClick
--------------------------------------------------------------------------

 

1.  Press 'ALT-0' to view the Project Manager sidebar again. Your screen
    might then look like [this](CppQtHelloWorldWindowedGui5.png).
2.  Double-click on 'mainwindow.h to be taken to the source of
    mainwindow.h:
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #ifndef MAINWINDOW_H     #define MAINWINDOW_H          #include <QtGui/QMainWindow>          namespace Ui     {         class MainWindow;     }          class MainWindow : public QMainWindow     {         Q_OBJECT          public:         MainWindow(QWidget *parent = 0);         ~MainWindow();          private:         Ui::MainWindow *ui;     };          #endif // MAINWINDOW_H     `
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3.  Change this code to the following:
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #ifndef MAINWINDOW_H     #define MAINWINDOW_H          #include <QtGui/QMainWindow>          namespace Ui     {       class MainWindow;     }          class MainWindow : public QMainWindow     {       Q_OBJECT            public:         MainWindow(QWidget *parent = 0);         ~MainWindow();            private slots:         void OnClick();            private:         Ui::MainWindow *ui;     };          #endif // MAINWINDOW_H     `
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that if you try to execute the program, you get the following
[(link) error](CppLinkError.htm):

  ----------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/CppQtHelloWorldWindowed/QtHelloWorldGui/moc_mainwindow.cpp:66: undefined reference to 'MainWindow::OnClick()'`
  ----------------------------------------------------------------------------------------------------------------------------

 

This [(link) error](CppLinkError.htm) is correct: the [member
function](CppMemberFunction.htm) MainWindow::OnClick is
[declared](CppDeclaration.htm) but not yet [defined](CppDefinition.htm).

 

 

 

 

 

Step \#4: Coding the [definition](CppDefinition.htm) of the slot OnClick
------------------------------------------------------------------------

 

1.  Press 'ALT-0' to view the Project Manager sidebar again. Your screen
    might then look like [this](CppQtHelloWorldWindowedGui6.png).
2.  Double-click on 'mainwindow.cpp to be taken to the source of
    mainwindow.cpp:
      ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #include "mainwindow.h"     #include "ui_mainwindow.h"          MainWindow::MainWindow(QWidget *parent)         : QMainWindow(parent), ui(new Ui::MainWindow)     {         ui->setupUi(this);     }          MainWindow::~MainWindow()     {         delete ui;     }     `
      ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3.  Change this code to the following:
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #include "mainwindow.h"     #include "ui_mainwindow.h"          MainWindow::MainWindow(QWidget *parent)         : QMainWindow(parent), ui(new Ui::MainWindow)     {       ui->setupUi(this);       QObject::connect(ui->pushButton,SIGNAL(clicked()),this,SLOT(OnClick()));     }          MainWindow::~MainWindow()     {       delete ui;     }          void MainWindow::OnClick()     {       ui->label->setText("Hello world");     }     `
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Step \#5: Running the program
-----------------------------

 

1.  Press CTRL-R to start the program
2.  Your screen might then look like
    [this](CppQtHelloWorldWindowedGui7.png)
3.  Click the pushbutton
4.  Your screen might then look like
    [this](CppQtHelloWorldWindowedGui8.png)

 

Note that the full text 'Hello world' is not shown, but only 'Hello
wor'. To fix this, go to 'mainwindow.up', click the textlabel and set
its 'Width' to 200. Then your screen might then look like
[this](CppQtHelloWorldWindowedGui9.png).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
