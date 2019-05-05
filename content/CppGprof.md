# ([C++](Cpp.md)) [gprof](CppGprof.md)

[gprof](CppGprof.md) is a [C++](Cpp.md) (and more programming
languages) [profiler](CppProfiler.md). [cachegrind](CppCachegrind.md)
is another [profiler](CppProfiler.md).

[gprof](CppGprof.md) can be installed from the Ubuntu Software Center.

-   ![OKAY](PicGreen.png)![Qt Creator](PicQtCreator.png) [1: profiling a simple console application in Qt Creator, using Build Settings](CppGprofQtCreatorExample1.md)
-   ![OKAY](PicGreen.png)![Qt Creator](PicQtCreator.png) [2: profiling a simple console application in Qt Creator, using Qt project file](CppGprofQtCreatorExample2.md)
-   ![OKAY](PicGreen.png)![Qt Creator](PicQtCreator.png) [Answer of exercise \#7: AddOne](CppExerciseAddOneAnswer.md)

## [gprof](CppGprof.md) and multi-threaded programs

[gprof](CppGprof.md) does not appear to [profile](CppProfile.md)
multi-threaded programs under [Lubuntu](CppLubuntu.md):

-   [View a gprof results file of a multithreaded application](CppGprofMultithreadedResult.txt): 0.0% of the total time is spent non-idle. But actually, 0.0% of the total time is spent non-idle in the main thread only! The application [profiled](CppProfile.md) was [GTST](https://github.com/richelbilderbeek/gtst), version 0.50

[oprofile](CppOprofile.md) is said to [profile](CppProfile.md)
multi-threaded programs under [Lubuntu](CppLubuntu.md) correctly.

## Video's

 * C++ profiling, using [gprof](CppGprof.md) and [Travis CI](CppTravisCi.md): [YouTube](https://youtu.be/XD6Fs58spyY) [Download (OGV)](http://richelbilderbeek.nl/cpp_profiling.ogv)

## External links

-   [gprof home](http://www.cs.utah.edu/dept/old/texinfo/as/gprof_toc.html)
-   [Qt Centre wiki about profiling with gprof under Qt Creator](http://www.qtcentre.org/wiki/index.php?title=Profiling_with_GNU_gprof)
