# ([C++](Cpp.md)) [Missing separator. Stop.](CppMiscErrorMissingSeparator.md)

[Misc error](CppMiscError.md).

## History

This error occurred while answering the [Qt FAQ](CppQtFaq.md) [How to
cross-compile a Qt Creator project from Ubuntu to a windows
executable?](CppQtCrosscompileToWindows.md).

I started a clean console application and added the '-spec win32-msvc'.

## Downloads

![View a screenshot of the error (png)](CppMiscErrorMissingSeparator.md)

![View a screenshot of the cause (png)](CppMiscErrorMissingSeparatorCause.md)

 * [Download the Qt Creator project 'CppMiscErrorMissingSeparator' (zip)](CppMiscErrorMissingSeparator.zip)

## [Qt project file](CppQtProjectFile.md)

```
QT       += core
QT       -= gui
TARGET = CppMiscErrorMissingSeparator
CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app
SOURCES += main.cpp
```

## main.cpp

```
#include <QtCore/QCoreApplication>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    return a.exec();
}
```

## Observations

The same error occurs for a GUI project.

The Qt Creator compile output is as following:

```
 Running build steps for project CppMiscErrorMissingSeparator...
Starting: "/usr/bin/make" -w
make: Entering directory '/home/richel/qtsdk-2010.04/bin/Projects/Website/CppMiscErrorMissingSeparator-build-desktop'
/usr/bin/make -f Makefile.Debug
make[1]: Entering directory '/home/richel/qtsdk-2010.04/bin/Projects/Website/CppMiscErrorMissingSeparator-build-desktop'
make[1]: Leaving directory '/home/richel/qtsdk-2010.04/bin/Projects/Website/CppMiscErrorMissingSeparator-build-desktop'
make: Leaving directory '/home/richel/qtsdk-2010.04/bin/Projects/Website/CppMiscErrorMissingSeparator-build-desktop'
Makefile.Debug:58: *** missing separator. Stop.
make: *** [debug] Error 2
The process "/usr/bin/make" exited with code %2.
Error while building project CppMiscErrorMissingSeparator (target: Desktop)
When executing build step 'Make'
```

It is assumed that in Makefile.Debug, line 58, there is a missing
seperator. Makefile.Debug is shown below, with line 58 marked.

```
####### Implicit rules

.SUFFIXES: .c .cpp .cc .cxx .C

{../CppMiscErrorMissingSeparator}.cpp{debug/}.o::
$(CXX) -c $(CXXFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<< #####################################THIS IS LINE 58

{../CppMiscErrorMissingSeparator}.cc{debug/}.o::
$(CXX) -c $(CXXFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<<

{../CppMiscErrorMissingSeparator}.cxx{debug/}.o::
$(CXX) -c $(CXXFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<<

{../CppMiscErrorMissingSeparator}.C{debug/}.o::
$(CXX) -c $(CXXFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<<

{../CppMiscErrorMissingSeparator}.c{debug/}.o::
$(CC) -c $(CFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<<

{.}.cpp{debug/}.o::
$(CXX) -c $(CXXFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<<

{.}.cc{debug/}.o::
$(CXX) -c $(CXXFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<<

{.}.cxx{debug/}.o::
$(CXX) -c $(CXXFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<<

{.}.C{debug/}.o::
$(CXX) -c $(CXXFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<<

{.}.c{debug/}.o::
$(CC) -c $(CFLAGS) $(INCPATH) -Fodebug/ @<<
$<
<<

####### Build rules

first: all
all: Makefile.Debug $(DESTDIR_TARGET)

$(DESTDIR_TARGET):  $(OBJECTS)
$(LINK) $(LFLAGS) /OUT:$(DESTDIR_TARGET) @<<
  $(OBJECTS) $(LIBS)
<<
```

I noted that CL was used as a (cross)-compiler. Calling it from Ubuntu
terminal failed. Install by 'sudo apt-get install cl' failed, because
package 'cl' was not found.

## Solution

Unknown

## [References](CppReferences.md)

### (page that does not exist anymore)

```
It complains about 'BLABLUBB_0XE02CF35F.GCCE:85: *** missing separator. Stop.'

If you are using a S60 3rd Edition FP1 (in contrast to 3rd FP2 or later), this means that the ARM compiler is not found in a directory from the PATH environment variable. Add the path to your compiler to the PATH environment, e.g. 'C:\Program Files (x86)\CSL Arm Toolchain\bin'.
```
