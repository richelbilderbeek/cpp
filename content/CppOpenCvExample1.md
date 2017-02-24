



 

 

 

 

 

([C++](Cpp.htm)) [OpenCvExample1](CppOpenCvExample1.htm)
========================================================

 

[OpenCvExample1](CppOpenCvExample1.htm) is a [OpenCV](CppOpenCv.htm)
example how to display an image and how to convert one to greyscale.

 

-   [View a screenshot of this example](CppOpenCvExample1.png)
-   [Download the Qt Creator project
    'CppOpenCvExample1' (zip)](CppOpenCvExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.04 (precise)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.3.0

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.6.3

[Libraries](CppLibrary.htm) used:

-   ![OpenCv](PicOpenCv.png) [OpenCV](CppOpenCv.htm): version 2.3.1
-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.6.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppOpenCvExample1.pro
--------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2012-07-11T13:49:58 # #-------------------------------------------------  QT       += core QT       -= gui  unix {    CONFIG += link_pkgconfig    PKGCONFIG += opencv }  #LIBS += -lopencv  TARGET = CppOpenCvExample1 CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app   SOURCES += main.cpp  RESOURCES += \     CppOpenCvExample1.qrc `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QFile> #include <QResource>  #include <opencv2/opencv.hpp>   int main() {   const std::string filename = "image.jpg";   //Create the source image if it does not exist   {     if (!QFile::exists(filename.c_str()))     {       QFile f((std::string(":/images/") + filename).c_str());       f.copy(filename.c_str());     }     assert(QFile::exists(filename.c_str()));   }    //Load the image   const cv::Mat image_original = cv::imread(filename);   assert(image_original.data);    //Create the resulting image   cv::Mat image_result;   cv::cvtColor(image_original,image_result,CV_RGB2GRAY );   cv::imwrite("R_grey.png", image_result );    //Display the original   cv::imshow("Original",image_original );    //Display the result   cv::imshow("Result", image_result );    //Wait for a key press   cv::waitKey(0); } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
