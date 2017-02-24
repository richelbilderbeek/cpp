
 

 

 

 

 

([C++](Cpp.md)) [OpenCvExample1](CppOpenCvExample1.md)
========================================================

 

[OpenCvExample1](CppOpenCvExample1.md) is a [OpenCV](CppOpenCv.md)
example how to display an image and how to convert one to greyscale.

 

-   [View a screenshot of this example](CppOpenCvExample1.png)
-   [Download the Qt Creator project
    'CppOpenCvExample1' (zip)](CppOpenCvExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.04 (precise)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.3.0

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.6.3

[Libraries](CppLibrary.md) used:

-   ![OpenCv](PicOpenCv.png) [OpenCV](CppOpenCv.md): version 2.3.1
-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.6.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppOpenCvExample1.pro
--------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2012-07-11T13:49:58 # #-------------------------------------------------  QT       += core QT       -= gui  unix {    CONFIG += link_pkgconfig    PKGCONFIG += opencv }  #LIBS += -lopencv  TARGET = CppOpenCvExample1 CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app   SOURCES += main.cpp  RESOURCES += \     CppOpenCvExample1.qrc `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QFile> #include <QResource>  #include <opencv2/opencv.hpp>   int main() {   const std::string filename = "image.jpg";   //Create the source image if it does not exist   {     if (!QFile::exists(filename.c_str()))     {       QFile f((std::string(":/images/") + filename).c_str());       f.copy(filename.c_str());     }     assert(QFile::exists(filename.c_str()));   }    //Load the image   const cv::Mat image_original = cv::imread(filename);   assert(image_original.data);    //Create the resulting image   cv::Mat image_result;   cv::cvtColor(image_original,image_result,CV_RGB2GRAY );   cv::imwrite("R_grey.png", image_result );    //Display the original   cv::imshow("Original",image_original );    //Display the result   cv::imshow("Result", image_result );    //Wait for a key press   cv::waitKey(0); } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

