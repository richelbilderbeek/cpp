
 

 

 

 

 

([C++](Cpp.md)) [-Wextra](CppWextra.md)
=========================================

 

When adding [-Wextra](CppWextra.md) to a [Qt Creator](CppQtCreator.md)
[project file](CppQtProjectFile.md) like below, extra [compile
warnings](CppCompileWarning.md) will be given to help you.

 

  ------------------------------
  ` QMAKE_CXXFLAGS += -Wextra`
  ------------------------------

 

[Compile](CppCompiler.md) cleanly at high warning levels \[1\]. Prefer
[compile errors](CppCompileError.md) to [runtime
errors](CppRuntimeError.md) \[2\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 1: 'Compile cleanly at high warning levels'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14:
    'Prefer compile- and link-time errors to run-time errors'.

 

 

 

 

 

 

