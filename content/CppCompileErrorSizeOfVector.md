



 

 

 

 

 

([C++](Cpp.htm)) [Size of @\_STL@%vector%78\_STL@... is unknown or zero](CppCompileErrorSizeOfVector.htm)
=========================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [C++ Error] Size of @_STL@%vector%78_STL@%pair$63_STL@%basic_string$c20_STL@char_traits$c%18_STL@allocator$c%%i%97_STL@%allocator$78_STL@$pair$63_STL@%basic_string$c20_STL@ is unknown or zero`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View a screenshot of this
    error](CppCompileErrorSizeOfVectorUnknownOrZero.png)

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Project type: Console Application

[Libraries](CppLibrary.htm) used:

-   [STL](CppStl.htm): version supplied with [C++
    Builder](CppBuilder.htm) 6.0

 

 

 

 

 

### Source code

 

  -------------------------------------------------------------------------------------------------------
  ` struct MyForm : public TForm {   void std::vector<std::pair<std::string,int> > question_scores; };`
  -------------------------------------------------------------------------------------------------------

 

The cause is that the member variable question\_scores is of type
'[std::vector](CppVector.htm)&lt;[std::pair](CppPair.htm)&lt;[std::string](CppString.htm),**[int](CppInt.htm)**&gt;
&gt;', instead of '[void](CppVoid.htm)
[std::vector](CppVector.htm)&lt;[std::pair](CppPair.htm)&lt;[std::string](CppString.htm),**[int](CppInt.htm)**&gt;
&gt;' ([void](CppVoid.htm) is used erroneously).

 

 

 

 

 

Solution
--------

 

Remove the '[void](CppVoid.htm)' [keyword](CppKeyword.htm):

 

  --------------------------------------------------------------------------------------------------
  ` struct MyForm : public TForm {   std::vector<std::pair<std::string,int> > question_scores; };`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 





 



