
 

 

 

 

 

([C++](Cpp.md)) [Misc error: the Open C/C++ plugin is not installed in the Symbian SDK](CppMiscErrorTheOpenCppPluginIsNotInstalledInTheSymbianSdk.md)
=======================================================================================================================================================

 

[Misc error](CppMiscError.md).

 

 

 

 

 

Error
-----

 

This [misc error](CppMiscError.md) can be found in [Qt
Creator](CppQtCreator.md) in the 'Projects' mode, under the Build
settings.

 

-   [View a screenshot of this
    error](CppMiscErrorTheOpenCppPluginIsNotInstalledInTheSymbianSdk.png)

 

  -------------------------------------------------------------------------------------------------------------------------------------
  ` Error: The "Open C/C++ plugin" is not installed in the Symbian SDK or the Symbian SDK path is misconfigured for Qt version 4.7.1`
  -------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Mobile](PicMobile.png) [Mobile
    application](CppMobileApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Symbian](PicSymbian.png) [Symbian](CppSymbian.md)
-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 10.10 (maverick)
-   ![Wine](PicWine.png) [Wine](CppWine.md) 1.3.4

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.0

 

 

 

 

 

Process
-------

 

Installing [Open C/C++](CppOpenCpp.md) under [Wine](CppWine.md)
results in the [install error: Open C/C++: No destination folder or no
features to be selected](CppInstallErrorOpenCpp.md).

 

 

 

 

 

Solution
--------

 

Unknown, except buying a computer with native [Windows](CppWindows.md)?

 

Perhaps \[1\] is a solution, but I have not gotten this to work yet...

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Email from Simeon Kuran:\
     \
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     I think I just stumbled over the solution for your problem regarding Qt     Creator and s60 SDK (on a non-Windows OS of course :)          Your error msg (as described on your homepage) was:     Error: The "Open C/C++ plugin" is not installed in the Symbian SDK or the     Symbian SDK path is misconfigured for Qt version 4.7.1          I have had the same message, by choosing the wrong gnupoc folder in the Qt     Creator settings. First I chose ~/qt4-s60/epoc32, which leads to the above     error msg. Qt Creator wants ~/qt4-s60 without epoc32! (it then searches for     cpp plugin by searching for <gnupoc-dir>/epoc32/include/stdapis/string.h)          (After figuring this out, I also had to copy the following files to make the s60     sdk usable with qt-creator:          cp qt/lib/*.dso  <gnupoc-dir>/epoc32/release/armv5/lib/     cp qt/lib/*.lib    <gnupoc-dir>/epoc32/release/armv5/lib/     cp qt/bin/elf2e32_qtwrapper  <gnupoc-dir>/epoc32/bin     cp gcce-toolchain/bin/elftran <gnupoc-dir>/epoc32/tools )     `
      ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     \

 

 

 

 

 

 

