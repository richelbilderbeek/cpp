



 

 

 

 

 

([C++](Cpp.htm)) [Compile warning](CppCompileWarning.htm)
=========================================================

 

Warning emitted by the [compiler](CppCompiler.htm), but does not prevent
program execution. A [compile error](CppCompileError.htm) does prevent
program execution.

 

[Compile](CppCompiler.htm) cleanly at high warning levels \[1,3\].
Prefer [compile errors](CppCompileError.htm) to [runtime
errors](CppRuntimeError.htm) \[2\].

 

-   ['auto' will change meaning in C++0x; please remove
    it](CppCompileWarningAutoWillChangeMeaningInC++0x.htm)
-   [Cannot create pre-compiled header: initialized data in
    header](CppCompileWarningCannotCreatePreCompiledHeaderInitializedDataInHeader.htm)
-   [left shift count &gt;= width of
    type](CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.htm)
-   [lexical\_cast.hpp: Negating unsigned
    value](CppCompileWarningLexical_castHppNegatingUnsignedValue.htm)
-   [Object::connect: No such
    slot QDialog::my\_slot()](CppCompileWarningNoSuchSlot.htm)
-   [type qualifiers ignored on function return
    type](CppCompileWarningTypeQualifiersIgnoredOnFunctionReturnType.htm)
-   [unused parameter 'seq'](CppCompileWarningUnusedParameterSeq.htm)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) How to add extra warnings in [Qt Creator](CppQtCreator.htm)?
--------------------------------------------------------------------------------------------

 

In the [project file](CppQtProjectFile.htm), add the following line:

 

  ------------------------------
  ` QMAKE_CXXFLAGS += -Wextra`
  ------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png) How to add the [compile warnings](CppCompileWarning.htm) of 'Effective C++' by [Scott Meyers](CppScottMeyers.htm) in [Qt Creator](CppQtCreator.htm)?
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In the [project file](CppQtProjectFile.htm), add the following line:

 

  -------------------------------
  ` QMAKE_CXXFLAGS += -Weffc++`
  -------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png) How to let [compile warnings](CppCompileWarning.htm) be treated like [compile errors](CppCompileError.htm) in [Qt Creator](CppQtCreator.htm)?
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In the [project file](CppQtProjectFile.htm), add the following line:

 

  ------------------------------
  ` QMAKE_CXXFLAGS += -Werror`
  ------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 1: 'Compile cleanly at high warning levels'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14:
    'Prefer compile- and link-time errors to run-time errors'.
3.  [Linus Torvalds](LinusTorvalds.htm). [Re:\[PATCH\] Don't compare
    unsigned variable for &lt;0
    in sys\_prctl()](http://linux.derkeiler.com/Mailing-Lists/Kernel/2006-11/msg08325.html). 2006-11-28.
    Retrieved on 2010-09-20. 'Friends don't let friends use \[gcc\]
    "-W"'

 

 

 

 

 





 



