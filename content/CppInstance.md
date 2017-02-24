



 

 

 

 

 

([C++](Cpp.md)) [Instance](CppInstance.md)
============================================

 

When you construct a [variable](CppVariable.md) of a certain [data
type](CppDataType.md), you are creating an [instance](CppInstance.md)
(also: [object](CppObject.md)) of that [data type](CppDataType.md).

 

In the code below an [int](CppInt.md) called 'x' is
[instanciated](CppInstance.md).

 

  --------------------------------
  ` int main() {   int x = 0; }`
  --------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use [std::unique\_ptr](CppStdUnique_ptr.md) to refer to
    [objects](CppObject.md) of [polymorphic
    type](CppPolymorphicType.md) \[1\]
-   Use [to refer to
    shared](CppStdShared_ptr.md)[objects](CppObject.md) \[2\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.5, page 131: 'Use unique\_ptr
    to refer to objects of polymorphic type'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.6, page 131: 'Use shared\_ptr
    to refer to shared objects'

 

 

 

 

 





 



