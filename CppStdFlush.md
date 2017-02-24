[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::flush](CppFlush.htm)
===========================================

 

[std::flush](CppFlush.htm) is a [stream](CppStream.htm) manipulator to
display the content of the [stream](CppStream.htm). Normally, a
[stream](CppStream.htm) can wait until a good moment (the end of the
program, for example), [std::flush](CppFlush.htm) enforces a direct
output. [std::cout](CppCout.htm) is a [stream](CppStream.htm) that one
might want to [flush](CppFlush.htm), [std::clog](CppClog.htm) and
[std::cerr](CppCerr.htm) always [flush](CppFlush.htm). When writing
'\\n' to [std::cout](CppCout.htm), [std::cout](CppCout.htm) is not
[flushed](CppFlush.htm), [std::endl](CppEndl.htm) writes '\\n' and
[flushes](CppFlush.htm) the [stream](CppStream.htm). Note that
[flushing](CppFlush.htm) a [stream](CppStream.htm) takes time, so only
[flush](CppFlush.htm) when needed.

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   for (int i=0; i!=10000; ++i)   {     std::cout << i;     std::cout << std::flush;   } }`
  --------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
