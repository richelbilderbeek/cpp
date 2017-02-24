



 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png) [Wt](CppWt.htm)
=================================================

 

[Wt](CppWt.htm) (we pronounce that as 'witty') is a [C++](Cpp.htm)
[library](CppLibrary.htm) for developing interactive [web
applications](CppWebApplication.htm) \[1\].

 

 

 

 

 

-   ['Hello Wt' program](CppHelloWt.htm)
-   [Wt articles](CppWtArticle.htm)
-   [Wt and assert](CppWtAssert.htm)
-   [Wt classes](CppWtClass.htm)
-   [Wt deployment](CppWtDeploy.htm)
-   [Wt examples](CppWtExample.htm)
-   [Wt FAQ](CppWtFaq.htm)
-   [Wt with other libraries](CppWtWithOtherLibraries.htm)

 

 

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.htm) users
-----------------------------------------------------------------------------

 

Add the following line to your [Qt project file](CppQtProjectFile.htm)
(to prevent [link errors](CppLinkError.htm) like [undefined reference to
'Wt::WRun(int, char\*\*, Wt::WApplication\* (\*)(Wt::WEnvironment
const&))'](CppLinkErrorUndefinedReferenceToWtWrun.htm)):

 

  --------------------------
  ` LIBS += -lwt -lwthttp`
  --------------------------

 

For a [Wt](CppWt.htm) application to run, choose one of these options:

 

1.  Use my [WtAutoConfig](CppWtAutoConfig.htm) [class](CppClass.htm):

     

    -   Add the following line to your [Qt project
        file](CppQtProjectFile.htm):

         

          ------------------------------------------------------------------
          `         INCLUDEPATH += ../../Classes/CppWtAutoConfig         `
          ------------------------------------------------------------------

         

    -   Change your [main](CppMain.htm) to the following, to let
        [WtAutoConfig](CppWtAutoConfig.htm) add the arguments:

         

          -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          `         #include "wtautoconfig.h"                  int main(int argc, char **argv)         {           WtAutoConfig a(argc,argv,createApplication);           return a.Run();         }         `
          -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     

    I follow this approach in my larger programs, for example in
    [TestGroupWidget (version 1.2)](ToolTestGroupWidgetSource_1_2.htm).

     

2.  Change your [main](CppMain.htm) to the following, to call WRun with
    the arguments added with a [C++11](Cpp11.htm) [initializer
    list](CppInitializerList.htm):

     

      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
      `     int main(int, char *argv[])     {       //C++11 initializer list       const char * const v[7] =       {         argv[0],         "--docroot", ".",         "--http-port", "8080",         "--http-address", "0.0.0.0"       };       return WRun(7, const_cast<char**>(v), &CreateApplication);     }     `
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     

    I follow this approach my very small, mostly demonstrational,
    programs, for example in [memcheck example
    6](CppMemcheckExample6.htm).

     

3.  Add the following arguments to the [Run
    Settings](CppQtCreatorRunSettings.png) (to prevent the [misc
    error](CppMiscError.htm) [stat: No such file or directory. Document
    root ("")
    not valid.](CppMiscErrorStatNoSuchFileOrDirectoryDocumentRootNotValid.htm)

     

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

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Wt homepage](http://www.webtoolkit.eu/wt)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
