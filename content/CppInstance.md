



 

 

 

 

 

([C++](Cpp.htm)) [Instance](CppInstance.htm)
============================================

 

When you construct a [variable](CppVariable.htm) of a certain [data
type](CppDataType.htm), you are creating an [instance](CppInstance.htm)
(also: [object](CppObject.htm)) of that [data type](CppDataType.htm).

 

In the code below an [int](CppInt.htm) called 'x' is
[instanciated](CppInstance.htm).

 

  --------------------------------
  ` int main() {   int x = 0; }`
  --------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [std::unique\_ptr](CppStdUnique_ptr.htm) to refer to
    [objects](CppObject.htm) of [polymorphic
    type](CppPolymorphicType.htm) \[1\]
-   Use [to refer to
    shared](CppStdShared_ptr.htm)[objects](CppObject.htm) \[2\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.5, page 131: 'Use unique\_ptr
    to refer to objects of polymorphic type'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.6, page 131: 'Use shared\_ptr
    to refer to shared objects'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
