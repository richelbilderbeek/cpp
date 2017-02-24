[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [File Error: Cannot overwrite file \~/.config/Nokia/toolChains.xml](CppMiscErrorFileErrorCannotOverwriteNokiaToolchainsXml.htm)
================================================================================================================================================

 

[Misc error](CppMiscError.htm).

 

 

 

 

 

Full error message
------------------

 

  -----------------------------------------------------------------------------------------
  ` File Error: Cannot overwrite file ~/.config/Nokia/toolChains.xml: Input/output error`
  -----------------------------------------------------------------------------------------

 

-   [View a screenshot of this
    error](CppMiscErrorFileErrorCannotOverwriteNokiaToolchainsXml.png)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 11.10 (oneiric)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.3.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.6.1

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.42
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.6.1

 

 

 

 

 

Solutions
---------

 

Unknown

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Post by Alliancemd on
    http://www.qtcentre.org/threads/45538-S-Privileges-Permissions-problems-after-running-Qt-Creator-with-priviliges-on-Linux:\
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     Hello,     I've runned Qt Creator with root rights and now it gives me Permissions errors on 2 files when I run Qt without priviliges.     On run:     1: "Cannot overwrite file [my home dir]/.config/Nokia/qtversion.xml: Permission denied" - 4 times appeared this error     On exit:     1: "Cannot overwrite file [my home dir]/.config/Nokia/toolChains.xml: Permission denied"     Ok, solved the problem myself      went into the folder:     "cd ~/.config/Nokia"     then changed the mode for this 2 files:     1. "sudo -s"     2. "chmod g+w qtversion.xml"     (I tried chmod +w for both files and didn't worked, sometimes u have to indicate if it's user, group or other)     3. "chmod o+w qtversion.xml"     u can try "chmod go+w qtversion.xml" so u don't have to write 2 times - I didn't tried     4. "chmod o+w toolChains.xml"     5. "chmod +r qtversion.xml" (same here, u may try "chmod go+rw qtversion.xml" - I didn't tried)     6. "exit"     That's it.     Edit:     1 more:     "Cannot overwrite file [my home dir]/.config/Nokia/qtcreator/default.qws: Permission denied"     The solution:     "sudo -s chmod o+w ~/.config/Nokia/qtcreator/default.qws"     Last edited by Alliancemd; 27th October 2011 at 18:58. <   `
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
