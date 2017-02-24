
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [Hello World program (console)](CppQtHelloWorldConsole.md)
=============================================================================================

 

To create a 'Hello World' (console) program in [Qt
Creator](CppQtCreator.md), you can follow the steps below:

 

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
    'QT4 Console Application' to go to the [introduction and project
    location dialog](CppQtIntroduction.png).
6.  In the [Introduction and project location
    dialog](CppQtIntroduction.png), you must specify a name and location
    to save your (project) files. For example, after 'Name'
    type 'HelloWorld'. Click next
7.  In the [select required modules
    dialog](CppQtCreatorSelectRequiredModules.png)', all checks are
    correct (only QtCore is checked), so click 'Next'
8.  In the [project management dialog](CppQtProjectManagement.png),
    click 'Finish'
9.  Now your project is set up. On the left menu bar, you can see you
    are now in 'Edit' mode (instead of 'Welcome' mode). You can see your
    project right of this menu bar. You can see a 'HelloWorld' project
    folder, containing 'HelloWorld.pro' and a folder called 'Sources'.
    Click on this 'Sources' folder. The source file 'main.cpp' is shown,
    double-click it. Note: under Xubuntu, there is no folder created
    called 'Sources', just double-click on 'main.cpp' directly
10. Now you are taken to the source code of 'main.cpp':

      -------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     #include <QtCore/QCoreApplication>          int main(int argc, char *argv[])     {       QCoreApplication a(argc, argv);       return a.exec();     }     `
      -------------------------------------------------------------------------------------------------------------------------------------------------------------------

11. Replace this code by the following:

      ---------------------------------------------------------------------------------------------------------------------------
      `     #include <iostream>          int main()     {       std::cout << "Hello world\n";       std::cin.get();     }     `
      ---------------------------------------------------------------------------------------------------------------------------

12. Press 'Run' on the left menu bar (or use CTRL-R) to run
    your application. If a 'Save Changes' dialog is shown, you might
    want to check 'Always save files before build' and click on 'Save
    All'
13. The program is build and run. Under Microsoft Windows, a console
    window appears and shows the text 'Hello world' and waits for a key
    press to terminate. Under Xubuntu, the text is shown in a panel
    called 'Application output' (if you want this text to be shown in a
    terminal, click on the left menu bar item 'Projects', then click the
    tab 'Run settings' and check 'Run in terminal'.

 

If the console window is not shown, [G++](CppGpp.md) is probably not
installed. You can check it if you click on the warning traingle on the
left menu bar. The 'Compile output' is shown, probably with the text
'make: g++: Command not found' in red. The solution is to install
[G++](CppGpp.md).

 

 

 

 

 

 

