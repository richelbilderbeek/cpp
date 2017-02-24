
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [How to create a simple 2D graphics program?](CppQt2dGraphics.md)
====================================================================================================

 

This [simple 2D graphics program](CppQt2dGraphics.md) has the goal to
create a colored gradient on a QMainWindow/QDialog by setting the colors
of individual pixels.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` This guide is not yet finished: I haven't gotten it to work yet. My unsuccessful trials are at the bottom of this page. The screenshots from this guide are made using Qt Creator 1.3.1 running under Ubuntu 10.04.`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To create [simple 2D graphics program](CppQt2dGraphics.md) in [Qt
Creator](CppQtCreator.md), you can follow the steps below:

-   Step \#1: Setting up the Qt4 Gui application project
-   Step \#2: Coding the [declaration](CppDeclaration.md) of paintEvent
-   Step \#3: Coding the [definition](CppDefinition.md) of paintEvent
-   Step \#4: Running the program

 

 

 

 

 

Step \#1: Setting up the Qt4 Gui application project
----------------------------------------------------

 

1.  Start [Qt Creator](CppQtCreator.md).
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
    type 'CppQt2dGraphics'. Click next
7.  In the [select required modules
    dialog](CppQtCreatorSelectRequiredModules.png), make sure QtCore and
    QtGui are checked and click 'Next'
8.  In the [class Information dialog](CppQtClassInformation.png), click
    'Next'
9.  In the [project management dialog](CppQtProjectManagement.png),
    click 'Finish'

 

Now your Qt4 Gui application project is successfully set up. Your screen
might look like [this](CppQt2dGraphics1.png).

 

 

 

 

 

Step \#2: Coding the [declaration](CppDeclaration.md) of paintEvent
--------------------------------------------------------------------

 

1.  On the left menu bar, you can see you are now in 'Edit' mode
    (instead of 'Welcome' mode). You can see your project right of this
    menu bar. You can see a 'CppQt2dGraphics' project folder, containing
    the following folders and files:
    1.  CppQt2dGraphics.pro
    2.  main.cpp (in folder 'Sources')
    3.  mainwindow.cpp (in folder 'Sources')
    4.  mainwindow.h (in folder 'Headers')
    5.  mainwindow.ui (in folder 'Forms')

    Double-click on 'mainwindow.h' to be taken to the code editor.
2.  Your screen then might look like [this](CppQt2dGraphics2.png) with
    the following source code:
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #ifndef MAINWINDOW_H     #define MAINWINDOW_H          #include <QMainWindow>          namespace Ui {         class MainWindow;     }          class MainWindow : public QMainWindow {         Q_OBJECT     public:         MainWindow(QWidget *parent = 0);         ~MainWindow();          protected:         void changeEvent(QEvent *e);          private:         Ui::MainWindow *ui;     };          #endif // MAINWINDOW_H     `
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3.  Change this code to the following:
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #ifndef MAINWINDOW_H     #define MAINWINDOW_H          #include <QMainWindow>          namespace Ui {         class MainWindow;     }          class MainWindow : public QMainWindow {         Q_OBJECT     public:         MainWindow(QWidget *parent = 0);         ~MainWindow();          protected:         void changeEvent(QEvent *e);         void paintEvent(QPaintEvent*); //Added this line          private:         Ui::MainWindow *ui;     };          #endif // MAINWINDOW_H     `
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that if you try to execute the program, you get the following
[(link) error](CppLinkError.md):

  -------------------------------------------------------------------------------------------------------------------------------------------
  ` moc_mainwindow.o:(.rodata._ZTV10MainWindow[vtable for MainWindow]+0x7c): undefined reference to 'MainWindow::paintEvent(QPaintEvent*)'`
  -------------------------------------------------------------------------------------------------------------------------------------------

 

This [(link) error](CppLinkError.md) is correct: the [member
function](CppMemberFunction.md) MainWindow::paintEvent is
[declared](CppDeclaration.md) but not yet [defined](CppDefinition.md).

 

 

 

 

 

Step \#3: Coding the [definition](CppDefinition.md) of paintEvent
------------------------------------------------------------------

 

1.  Double-click on 'mainwindow.cpp to be taken to the source of
    mainwindow.cpp:
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #include "mainwindow.h"     #include "ui_mainwindow.h"          MainWindow::MainWindow(QWidget *parent) :         QMainWindow(parent),         ui(new Ui::MainWindow)     {         ui->setupUi(this);     }          MainWindow::~MainWindow()     {         delete ui;     }          void MainWindow::changeEvent(QEvent *e)     {         QMainWindow::changeEvent(e);         switch (e->type()) {         case QEvent::LanguageChange:             ui->retranslateUi(this);             break;         default:             break;         }     }     `
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

2.  Change this code to the following:
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #include <QPainter>     #include "mainwindow.h"     #include "ui_mainwindow.h"          MainWindow::MainWindow(QWidget *parent) :         QMainWindow(parent),         ui(new Ui::MainWindow)     {       ui->setupUi(this);     }          MainWindow::~MainWindow()     {       delete ui;     }          void MainWindow::changeEvent(QEvent *e)     {       QMainWindow::changeEvent(e);       switch (e->type()) {       case QEvent::LanguageChange:         ui->retranslateUi(this);         break;       default:         break;       }     }          void MainWindow::paintEvent(QPaintEvent*)     {       QPainter p(this);       //Do something I do not know yet...     }     `
      -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Step \#4: Running the program
-----------------------------

 

1.  Press CTRL-R to start the program

 

 

 

 

 

Unsuccessful trials
-------------------

 

Below I show my unsuccessfull attempts that might have worked, but do
not.

 

 

 

 

 

### Simply start drawing

 

The attempt below does not work. It draws only a single randomly-drawn
line, like [this](CppQt2dGraphics3.png).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <QPainter> #include "mainwindow.h" #include "ui_mainwindow.h"  MainWindow::MainWindow(QWidget *parent) :     QMainWindow(parent),     ui(new Ui::MainWindow) {   ui->setupUi(this); }  MainWindow::~MainWindow() {   delete ui; }  void MainWindow::changeEvent(QEvent *e) {   QMainWindow::changeEvent(e);   switch (e->type()) {   case QEvent::LanguageChange:     ui->retranslateUi(this);     break;   default:     break;   } }  void MainWindow::paintEvent(QPaintEvent*) {   QPainter p(this);   p.setRenderHint(QPainter::Antialiasing,true);   const int width = ui->centralWidget->width();   const int height = ui->centralWidget->height();   const int x1 = std::rand() % width;   const int y1 = std::rand() % height;   const int x2 = std::rand() % width;   const int y2 = std::rand() % height;   p.drawLine(x1,y1,x2,y2); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### Draw and update the QMainWindow

 

The attempt below does not work. It draws a single randomly-drawn line
and then updates the QMainWindow. What happens is that lines are indeed
drawn at random positions, but are not stored. This results in viewing
only three lines at the same time, like [this](CppQt2dGraphics4.png).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <QPainter> #include "mainwindow.h" #include "ui_mainwindow.h"  MainWindow::MainWindow(QWidget *parent) :     QMainWindow(parent),     ui(new Ui::MainWindow) {   ui->setupUi(this); }  MainWindow::~MainWindow() {   delete ui; }  void MainWindow::changeEvent(QEvent *e) {   QMainWindow::changeEvent(e);   switch (e->type()) {   case QEvent::LanguageChange:     ui->retranslateUi(this);     break;   default:     break;   } }  void MainWindow::paintEvent(QPaintEvent*) {   QPainter p(this);   p.setRenderHint(QPainter::Antialiasing,true);   const int width = ui->centralWidget->width();   const int height = ui->centralWidget->height();   const int x1 = std::rand() % width;   const int y1 = std::rand() % height;   const int x2 = std::rand() % width;   const int y2 = std::rand() % height;   p.drawLine(x1,y1,x2,y2);   this->update(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

