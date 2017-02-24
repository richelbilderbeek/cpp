

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StkExample1](CppStkExample1.htm)
==================================================

 

![C++11](PicCpp11.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[STK example 1: beep](CppStkExample1.htm) is an [STK](CppStk.htm)
example that generates a beep. The code was copied from
<https://ccrma.stanford.edu/software/stk/crealtime.html>.

 

Note that original copy-pasted code resulted in multiple [compile
warnings](CppCompileWarning.htm) and that the [library](CppLibrary.htm)
style, design and example code looks different from the experts'
recommendations

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStkExample1/CppStkExample1.pro
----------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }   # Install STK by: # sudo apt-get install libstk0-dev include(../../Libraries/Stk.pri) #Or use the code below # INCLUDEPATH += /usr/include/stk # LIBS += -L/usr/lib -lstk -lrtaudio  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStkExample1/main.cpp
-------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` // crtsine.cpp STK tutorial program  #pragma GCC diagnostic push // I (RJCB) wish I did not need to add these ignores... #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-variable" #pragma GCC diagnostic ignored "-Wunused-parameter"  #include "SineWave.h" #include "RtAudio.h"  using namespace stk;  // This tick() function handles sample computation only. It will be // called automatically when the system needs a new buffer of audio // samples. int tick( void *outputBuffer, void *inputBuffer, unsigned int nBufferFrames,          double streamTime, RtAudioStreamStatus status, void *dataPointer ) {   SineWave *sine = (SineWave *) dataPointer;   register StkFloat *samples = (StkFloat *) outputBuffer;    for ( unsigned int i=0; i<nBufferFrames; i++ )     *samples++ = sine->tick();    return 0; }  int main() {   // Set the global sample rate before creating class instances.   Stk::setSampleRate( 44100.0 );    SineWave sine;   RtAudio dac;    // Figure out how many bytes in an StkFloat and setup the RtAudio stream.   RtAudio::StreamParameters parameters;   parameters.deviceId = dac.getDefaultOutputDevice();   parameters.nChannels = 1;   RtAudioFormat format = ( sizeof(StkFloat) == 8 )     ? RTAUDIO_FLOAT64 : RTAUDIO_FLOAT32;   unsigned int bufferFrames = RT_BUFFER_SIZE;   try {     dac.openStream( &parameters, NULL, format,       (unsigned int)Stk::sampleRate(),       &bufferFrames, &tick, (void *)&sine );   }   catch ( RtError &error ) {     error.printMessage();     goto cleanup;   }    sine.setFrequency(440.0);    try {     dac.startStream();   }   catch ( RtError &error ) {     error.printMessage();     goto cleanup;   }    // Block waiting here.   char keyhit;   std::cout << "\nPlaying ... press <enter> to quit.\n";   std::cin.get( keyhit );    // Shut down the output stream.   try {     dac.closeStream();   }   catch ( RtError &error ) {     error.printMessage();   }    cleanup:    return 0; }  #pragma GCC diagnostic pop`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
