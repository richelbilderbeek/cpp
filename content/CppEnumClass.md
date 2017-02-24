



 

 

 

 

 

([C++](Cpp.htm)) [enum class](CppEnumClass.htm)
===============================================

 

An [enum class](CppEnumClass.htm) is a [C++11](Cpp11.htm) type-safe
[enumeration](CppEnum.htm). Prefer [class enums](CppEnumClass.htm) over
plain [enums](CppEnum.htm) to minimize surprise \[1\].

 

 

 

 

Example
-------

 

-   [Download the Qt Creator project
    'CppEnumClass' (zip)](CppEnumClass.zip)

 

An [enum class](CppEnumClass.htm) is a conversion-safe
[enum](CppEnum.htm):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` enum class Color { red  , orange }; enum class Fruit { apple, orange };  int main() {   Color c = Color::orange;   Fruit a = Fruit::orange;   Fruit b = Color::orange; //Fails }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------------------------------------------------
  ` cannot convert 'Color' to 'Fruit' in initialization`
  --------------------------------------------------------

 

Technical note: the code shown is [compiled](CppCompile.htm)
successfully using the [G++](CppGpp.htm) 4.4.5
[compiler](CppCompiler.htm), which is supplied with the [Qt
Creator](CppQtCreator.htm) 2.0.0 [IDE](CppIde.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [enum classes](CppEnumClass.htm) to [enums](CppEnum.htm)
    \[1,2\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 8.5.
    Advice. page 224: '\[6\] Prefer class enums over "plain" enums to
    minimize surprises'
2.  [Scott Meyers](CppScottMeyers.htm). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. ' Prefer enum classes
    to enums'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
