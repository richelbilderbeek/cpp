
 

 

 

 

 

([C++](Cpp.md)) ![Wt](PicWt.png) [Wt](CppWt.md)
=================================================

 

[Wt](CppWt.md) (we pronounce that as 'witty') is a [C++](Cpp.md)
[library](CppLibrary.md) for developing interactive [web
applications](CppWebApplication.md) \[1\].

 

 

 

 

 

-   ['Hello Wt' program](CppHelloWt.md)
-   [Wt articles](CppWtArticle.md)
-   [Wt and assert](CppWtAssert.md)
-   [Wt classes](CppWtClass.md)
-   [Wt deployment](CppWtDeploy.md)
-   [Wt examples](CppWtExample.md)
-   [Wt FAQ](CppWtFaq.md)
-   [Wt with other libraries](CppWtWithOtherLibraries.md)

 

 

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

Add the following line to your [Qt project file](CppQtProjectFile.md)
(to prevent [link errors](CppLinkError.md) like [undefined reference to
'Wt::WRun(int, char\*\*, Wt::WApplication\* (\*)(Wt::WEnvironment
const&))'](CppLinkErrorUndefinedReferenceToWtWrun.md)):

 

  --------------------------
  ` LIBS += -lwt -lwthttp`
  --------------------------

 

For a [Wt](CppWt.md) application to run, choose one of these options:

 

1.  Use my [WtAutoConfig](CppWtAutoConfig.md) [class](CppClass.md):

     

    -   Add the following line to your [Qt project
        file](CppQtProjectFile.md):

         

          ------------------------------------------------------------------
          `         INCLUDEPATH += ../../Classes/CppWtAutoConfig         `
          ------------------------------------------------------------------

         

    -   Change your [main](CppMain.md) to the following, to let
        [WtAutoConfig](CppWtAutoConfig.md) add the arguments:

         

          -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          `         #include "wtautoconfig.h"                  int main(int argc, char **argv)         {           WtAutoConfig a(argc,argv,createApplication);           return a.Run();         }         `
          -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     

    I follow this approach in my larger programs, for example in
    [TestGroupWidget (version 1.2)](ToolTestGroupWidgetSource_1_2.md).

     

2.  Change your [main](CppMain.md) to the following, to call WRun with
    the arguments added with a [C++11](Cpp11.md) [initializer
    list](CppInitializerList.md):

     

      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     int main(int, char *argv[])     {       //C++11 initializer list       const char * const v[7] =       {         argv[0],         "--docroot", ".",         "--http-port", "8080",         "--http-address", "0.0.0.0"       };       return WRun(7, const_cast<char**>(v), &CreateApplication);     }     `
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     

    I follow this approach my very small, mostly demonstrational,
    programs, for example in [memcheck example
    6](CppMemcheckExample6.md).

     

3.  Add the following arguments to the [Run
    Settings](CppQtCreatorRunSettings.png) (to prevent the [misc
    error](CppMiscError.md) [stat: No such file or directory. Document
    root ("")
    not valid.](CppMiscErrorStatNoSuchFileOrDirectoryDocumentRootNotValid.md)

     

      -----------------------------------------------------------------
      `     --docroot . --http-address 0.0.0.0 --http-port 8080     `
      -----------------------------------------------------------------

     

    Or to redirect the output to a log file (untested):

     

      -----------------------------------------------------------------------------------------------------------
      `     --docroot . --http-address 0.0.0.0 --http-port 8080 --accesslog access.log > /dev/null 2>&1 &     `
      -----------------------------------------------------------------------------------------------------------

     

    I never follow this approach, because I prefer my solutions in code.

     

 

 

 

 

 

External links
--------------

 

-   [Wt homepage](http://www.webtoolkit.eu/wt)
-   [Wt class
    documentation](http://www.webtoolkit.eu/wt/doc/reference/html/annotated.html)
-   [Wt wiki](http://redmine.webtoolkit.eu/projects/wt/wiki)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Wt homepage](http://www.webtoolkit.eu/wt)

 

 

 

 

 

 

