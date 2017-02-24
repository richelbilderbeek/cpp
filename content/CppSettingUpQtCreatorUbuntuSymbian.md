
 

 

 

 

 

([C++](Cpp.md)) ![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![Symbian](PicSymbian.png) [Setting up Qt Creator under Ubuntu for Symbian](CppSettingUpQtCreatorUbuntuSymbian.md)
===========================================================================================================================================================================================

 

Before setting up [Qt Creator](CppQtCreator.md) under
[Ubuntu](CppUbuntu.md) for [Symbian](CppSymbian.md), make sure you
have installed [WINE](CppWine.md) and (the [Windows](CppWindows.md)
version of) [Qt Creator](CppQtCreator.md).

 

1.  Go to [the Qt homepage](http://www.qt.nokia.com), click 'Downloads',
    click 'Go LPGL', and click on the download 'Qt libraries 4.7.1 for
    Symbian (265 MB)'. The download should now start. Some browsers warn
    you, because the file is a Windows executable, but this can safely
    be ignored in this case
2.  Navigate to the folder where 'qt-symbian-opensource-4.7.1-s60.exe'
    was downloaded. Right-click this Windows executable, click
    'Properties', open the 'Permissions' tab and check 'Allow executing
    file as program'. Close the 'Properties' window
3.  Double-click 'qt-symbian-opensource-4.7.1-s60.exe' to start
    the executable.
4.  In the setup, in the 'Choose Components' screen, check 'Symbian
    SDKs' additionally to the already checked 'Qt 4.7.1 sources'.
5.  In the 'Choose Install' dialog, set the destination folder to
    'C:\\Qt\\4.7.1-symbian'
6.  In the 'Select Symbian SDK directories', just click 'Next'
7.  In the 'Choose Start Menu Folder', just click 'Next' and
    installation starts
8.  After the installation, start the [Windows](CppWindows.md) version
    of [Qt Creator](CppQtCreator.md)
9.  Click 'Tools', 'Options' to open the 'Options' dialog
10. In the 'Options' dialog, click 'Qt4' and in the 'Qt Versions' tab,
    click on the plus. Click on 'Browse' to select the Symbian version
    of qmake in 'c:\\qt\\4.7.1-symbian\\bin\\qmake.exe'. Click 'Apply'
    to finish the setup

 

 

 

 

 

External links
--------------

 

-   [YouTube video about setting up Qt Creator under Windows for
    Symbian](http://www.youtube.com/watch?v=bGJOQTkdttM)
-   [YouTube video about setting up a Symbian/S60 development
    environment](http://www.youtube.com/watch?v=5BgMJS3wC28)
-   [Nokia page about Symbian SDKs](http://www.bit.ly/s60sdk)
-   [Another Nokia page about Symbian
    SDKs](http://www.forum.nokia.com/Library/Tools_and_downloads/Other/Symbian_SDKs)

 

 

 

 

 

 

