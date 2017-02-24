



 

 

 

 

 

([C++](Cpp.md)) [char16\_t](CppChar16_t.md)
=============================================

 

An [char16\_t](CppChar16_t.md) is a [keyword](CppKeyword.md) that can
be used, depending on the [standard](CppStandard.md) used:

-   ![C++98](PicCpp98.png) [char16\_t](CppChar16_t.md) in the
    [C++98](Cpp98.md) [standard](CppStandard.md)
-   ![C++11](PicCpp11.png) [char16\_t](CppChar16_t.md) in the
    [C++11](Cpp11.md) [standard](CppStandard.md)

 

 

 

 

 

![C++98](PicCpp98.png) [char16\_t](CppChar16_t.md) in the [C++98](Cpp98.md) [standard](CppStandard.htm)
---------------------------------------------------------------------------------------------------------

 

[char16\_t](CppChar16_t.md) is not supported in [C++98](Cpp98.md):

 

  --------------------------------------------------
  ` int main() {   char16_t c; //Fails in C++98 }`
  --------------------------------------------------

 

Compiler output:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.cpp:: In function 'int main()': /MyFolder/main.cpp:3: error: 'char16_t' was not declared in this scope /MyFolder/main.cpp:3: error: expected ';' before 'c'`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [char16\_t](CppChar16_t.md) in the [C++11](Cpp11.md) [standard](CppStandard.htm)
---------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppChar16\_t' (zip)](CppChar16_t.zip)

 

[char16\_t](CppChar16_t.md) is a [keyword](CppKeyword.md) for a 16-bit
[character](CppChar.md).

 

  ---------------------------------
  ` int main() {   char16_t c; }`
  ---------------------------------

 

Technical note: the code shown is [compiled](CppCompile.md)
successfully using the [G++](CppGpp.md) 4.4.5
[compiler](CppCompiler.md), which is supplied with the [Qt
Creator](CppQtCreator.md) 2.0.0 [IDE](CppIde.md).

 

 

 

 

 





 



