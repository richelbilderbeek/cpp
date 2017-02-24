
 

 

 

 

 

([C++](Cpp.md)) ['consoleInitDefault' was not declared in this scope](CppCompileErrorConsoleInitDefaultNotDeclared.md)
========================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

Operating system(s):

-   ![NDS](PicNds.png) Nintendo DS
-   ![Ubuntu](PicUbuntu.png) Ubuntu 10.04 LTS Lucid Lynx

[IDE(s)](CppIde.md):

-   ![Command line](PicCl.png) command line
-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) Console application

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   ![Libnds](PicLibnds.png) [Libnds](CppLibnds.md): version 1.4.7

 

 

 

 

 

[Project file](CppQtProjectFile.md)
------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-10-07T22:25:11 # #------------------------------------------------- INCLUDEPATH += /opt/devkitpro/libnds-1.4.7/include INCLUDEPATH += /opt/devkitpro/devkitARM/arm-eabi/include DEFINES += ARM9 TARGET = CppDsExample1 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp OTHER_FILES += \     makefile_supplied.txt`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ////////////////////////////////////////////////////////////////////// // Demo1 ARM9 Code - Based on an example shipped with NDSLIB. // Chris Double (chris.double@double.co.nz) //////////////////////////////////////////////////////////////////////  //From http://double.co.nz/nintendo_ds/nds_develop1.html #include <nds.h> #include <nds/registers_alt.h> #include <stdio.h>  int main(void) {   // Use the touch screen for output   videoSetMode(0);   videoSetModeSub(MODE_0_2D | DISPLAY_BG0_ACTIVE);   vramSetBankC(VRAM_C_SUB_BG);   SUB_BG0_CR = BG_MAP_BASE(31);    // Set the colour of the font to White.   BG_PALETTE_SUB[255] = RGB15(31,31,31);    consoleInitDefault((u16*)SCREEN_BASE_BLOCK_SUB(31), (u16*)CHAR_BASE_BLOCK_SUB(0), 16);    printf("\n\n\tHello World!\n");   while(1) {     touchPosition touchXY = touchReadXY();     printf("\x1b[10;0H");     printf("Touch x = %d   \n", touchXY.px);     printf("Touch y = %d   \n", touchXY.py);   }   return 0; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Due to new version architecture, replace the following line:

 

  ---------------------------------------------------------------------------------------------
  `   consoleInitDefault((u16*)SCREEN_BASE_BLOCK_SUB(31), (u16*)CHAR_BASE_BLOCK_SUB(0), 16);`
  ---------------------------------------------------------------------------------------------

 

Replace it with this line:

 

  ------------------------------------------------------------------------------
  `   consoleInit(0,1, BgType_Text4bpp, BgSize_T_256x256, 0, 6, false, true);`
  ------------------------------------------------------------------------------

 

Now an [undefined reference to
'consoleInit'](CppLinkErrorUndefinedReferenceToConsoleInit.md) [link
error](CppLinkError.md) occurs.

 

 

 

 

 

How the solution was found
--------------------------

 

Searching all [Libnds](CppLibnds.md) files, no
[function](CppFunction.md) called 'consoleInitDefault' could be found.
In '/opt/devkitpro/libnds-1.4.7/include/nds/arm9/console.h' the
[function](CppFunction.md) called 'consoleInit' was found. Replacing
'consoleInitDefault' by 'consoleInit' resulted in the followinng error:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` error: cannot convert 'u16*' to 'PrintConsole*' for argument '1' to 'PrintConsole* consoleInit(PrintConsole*, int, BgType, BgSize, int, int, bool, bool)'`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------

 

So, after checking for consoleInit's function declaration, I see that I
have to pass NULL as a first argument for a default consoleInit:

 

  ----------------------------------------------------------------------------------------
  `   consoleInit(0,(u16*)SCREEN_BASE_BLOCK_SUB(31), (u16*)CHAR_BASE_BLOCK_SUB(0), 16);`
  ----------------------------------------------------------------------------------------

 

Still no good, so search the web for an example use:

 

  ------------------------------------------------------------------------------
  `   consoleInit(0,1, BgType_Text4bpp, BgSize_T_256x256, 0, 6, false, true);`
  ------------------------------------------------------------------------------

 

Fixed, although now an [undefined reference to
'consoleInit'](CppLinkErrorUndefinedReferenceToConsoleInit.md) [link
error](CppLinkError.md) occurs.

 

 

 

 

 

 

