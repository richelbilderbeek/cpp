



 

 

 

 

 

([C++](Cpp.md)) [enum class](CppEnumClass.md)
===============================================

 

An [enum class](CppEnumClass.md) is a [C++11](Cpp11.md) type-safe
[enumeration](CppEnum.md). Prefer [class enums](CppEnumClass.md) over
plain [enums](CppEnum.md) to minimize surprise \[1\].

 

 

 

 

Example
-------

 

-   [Download the Qt Creator project
    'CppEnumClass' (zip)](CppEnumClass.zip)

 

An [enum class](CppEnumClass.md) is a conversion-safe
[enum](CppEnum.md):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` enum class Color { red  , orange }; enum class Fruit { apple, orange };  int main() {   Color c = Color::orange;   Fruit a = Fruit::orange;   Fruit b = Color::orange; //Fails }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------------------------------------------------
  ` cannot convert 'Color' to 'Fruit' in initialization`
  --------------------------------------------------------

 

Technical note: the code shown is [compiled](CppCompile.md)
successfully using the [G++](CppGpp.md) 4.4.5
[compiler](CppCompiler.md), which is supplied with the [Qt
Creator](CppQtCreator.md) 2.0.0 [IDE](CppIde.md).

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [enum classes](CppEnumClass.md) to [enums](CppEnum.md)
    \[1,2\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 8.5.
    Advice. page 224: '\[6\] Prefer class enums over "plain" enums to
    minimize surprises'
2.  [Scott Meyers](CppScottMeyers.md). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. ' Prefer enum classes
    to enums'

 

 

 

 

 





 



