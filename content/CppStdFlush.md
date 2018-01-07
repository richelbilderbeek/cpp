
 

 

 

 

 

([C++](Cpp.md)) [std::flush](CppFlush.md)
===========================================

 

[std::flush](CppFlush.md) is a [stream](CppStream.md) manipulator to
display the content of the [stream](CppStream.md). Normally, a
[stream](CppStream.md) can wait until a good moment (the end of the
program, for example), [std::flush](CppFlush.md) enforces a direct
output. [std::cout](CppCout.md) is a [stream](CppStream.md) that one
might want to [flush](CppFlush.md), [std::clog](CppClog.md) and
[std::cerr](CppCerr.md) always [flush](CppFlush.md). When writing
'\\n' to [std::cout](CppCout.md), [std::cout](CppCout.md) is not
[flushed](CppFlush.md), [std::endl](CppStdEndl.md) writes '\\n' and
[flushes](CppFlush.md) the [stream](CppStream.md). Note that
[flushing](CppFlush.md) a [stream](CppStream.md) takes time, so only
[flush](CppFlush.md) when needed.

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   for (int i=0; i!=10000; ++i)   {     std::cout << i;     std::cout << std::flush;   } }`
  --------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

