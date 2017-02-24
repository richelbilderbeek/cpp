



 

 

 

 

 

([C++](Cpp.htm)) [Creating and using help files in C++ Builder](CppBuilderHelp.htm)
===================================================================================

 

To create and use a Help file takes the eleven steps below. Every step
is short and easy and once you've taken all steps, you can easily add
more stuff to your help file. I've described the way to make a simple
browsable help file.

 

 

 

 

 

1) Starting Microsoft Help Workshop
-----------------------------------

 

The file can be found at '\\CBuilder6\\Help\\Tools\\HCW.EXE'.

 

2) Create a .HPJ file
---------------------

 

-   Do 'File | New', select 'Help Project'
-   Now the programs asks you to save to a location. Save it somewhere
    as '\[AnyName\].hpj'
-   Optionally close it again (if multiple windows bother you)

 

 

 

 

 

3) Create a .CNT file
---------------------

 

-   Do 'File | New', select 'Help contents'
-   In the window that appears now, you can optionally set the 'Default
    filename' and 'default title' to e.g. 'AnyName' and 'My First Help
    File'
-   Click 'Add Below' or 'Add Above'. Now you can select two options:
    1.  Heading: a 'chapter' in your help file, which will consist of
        multiple topics. You only need to give the chapter's name
    2.  Topic: a 'paragraph' in your help file. This needs a title and a
        topic ID. This has to start with 'IDH\_' (e.g. IDH\_INTROCUTION)
        and has to be unique. Give topic ID 's sensible names, as you
        will use their names multiple times

 

 

 

 

 

4) Adding the .CNT file to the .HPJ
-----------------------------------

 

-   Open or go back to you .HPJ file in Microsoft Help Workshop
-   Now you can add the .CNT file to it: Do 'Options', select the tab
    'Files', click left of 'Content files' on the 'Browse' button. Open
    your contents file

 

 

 

 

 

5) Create a .RTF file
---------------------

 

-   Open Microsoft Word. Now you can create a Rich Text Format document
    containing all your help file text
-   Additionally you add markers for the Help Project to be able to
    understand you help text structure: Every topic title (e.g.
    'Overview', 'Summary', etc.') needs two footnotes. A footnote can be
    created by 'Insert | Footnote | Custom Mark'. Add one footnote with
    the custom mark of '+' and add no text after it in the document.
    This plus is used for browsing to next pages. Also add one footnote,
    with the custom mark '\#' and the contents ID number (as set in
    step 3). This is used to connect the text to the contents file

 

 

 

 

 

6) Adding the .RTF file to the .HPJ
-----------------------------------

 

-   Open or go to your .HPJ file in Microsoft Help Workshop
-   Click 'Options', go to the tab 'Files'. Left of 'Rich Text
    Format (RTF) files' click 'Change'. In the pop-up click 'Include',
    then 'Browse' to select your .RTF file

 

 

 

 

 

7) Create a .MAP file in any text editor
----------------------------------------

 

-   Now we need to assign values to the topic ID's that are compilable
    in [C++](Cpp.htm). Create a text document called e.g. 'AnyName.map'
    and assign numbers using [\#define](CppDefine.htm)s:

 

  ----------------------------------------------------------------------------------------
  ` //Example #define IDH_INTRODUCTION 100 #define IDH_OVERVIEW 200 #define SUMMARY 300`
  ----------------------------------------------------------------------------------------

 

 

 

 

 

8) Adding the .RTF file to the .HPJ
-----------------------------------

 

-   Open or go to your .HPJ file in Microsoft Help Workshop
-   Click 'Map', 'Include', 'Browse' and select you .MAP file

 

 

 

 

 

9) Create a Help file window with browsing abilities
----------------------------------------------------

 

-   Open or go to your .HPJ file in Microsoft Help Workshop
-   Click 'Windows', give the name 'MAIN'
-   In the pop-up, you can modify you window's appearance. You can e.g.
    do:
    -   to let you help window appear maximized, go to the tab 'General'
        and check 'Maximize Window'
    -   to give your help file window browsing abilities, go to the tab
        'Buttons' and check 'Browse'

 

 

 

 

 

10) Compile the .HLP file
-------------------------

 

-   Click 'Save and compile' to generate a .HLP file
-   If errors occur, see the bottom of this page for errors I've seen
    and solved

 

 

 

 

 

11) Connect these files to [C++ Builder](CppBuilder.htm)
--------------------------------------------------------

 

-   In [C++ Builder](CppBuilder.htm) do 'Project', click the tab
    'Options', go to right of Help File and click 'Browse' and select
    your help file
-   To activate your help file, use the following code:

  --------------------------------------------------------------------------------
  ` Application->HelpSystem->ShowContextHelp(AnyIdValue,Application->HelpFile);`
  --------------------------------------------------------------------------------

 

-   'AnyIdValue' has to be the number mapped to the topic ID. So do not
    write in you code, for example, 'IDH\_INTRODUCTION' but the value
    mapped to it ('100'). But you could also choose to \#include the
    .MAP file to your project.

 

 

 

 

 

Errors in compiling
-------------------

 

### HC5011: Cannot open the file \[someJunk\]

 

The complete error message is:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` HC5011: Error: C:\Program Files\Borland\CBuilder6\Projects\Simulations\ThorVeen\7\ProjectThorVeenHelpRtf.rtf :  Cannot open the file "{\rtf1\ansi\ansicpg1252\uc1 \deff0\deflang1033\deflangfe1033{\fonttbl{\f0\froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman."`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

I solved it by changing the filename 'ProjectThorVeenHelpRtf.rtf' in
Windows Explorer (by adding a '2' in the end, changing it to
'ProjectThorVeenHelpRtf2.rtf'). Then it works! Strange though...

 

 

 

 

 

### Bug in Help System and VCL

 

-   Exception is thrown with the message "No context-sensitive help
    installed."

 

When using VCL and C++ Personality in Borland Developer Studion 2006:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` This an undocumented bug in the Automated Help System.  This came from the original Forms.pas and so the bug was inherited.  See this page for the Borland Report.`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Add to the main unit:

 

  -------------------------------------------------------------
  ` #include <WinHelpViewer.hpp>  #pragma link WinHelpViewer`
  -------------------------------------------------------------

 

Set the Help file at at either design time or at run time. To set the
Help file at design time, do 'Project-&gt;Options'.

 

To set the Help file at run time, use the line below:

 

  ------------------------------------------------
  ` Application->HelpFile = "C:\\HelpFile.hlp";`
  ------------------------------------------------

 

With this you only have to set the HelpContext or HelpKeyword on the
Control/Forms property and your help will be activated.

 

 

 

 

 

External links
--------------

 

-   [http://www.vizacc.com](http://www.vizacc.com/): HelpMaker, another
    help file maker

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
