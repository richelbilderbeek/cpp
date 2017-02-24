



 

 

 

 

 

([C++](Cpp.htm)) [Smart pointer](CppSmartPointer.htm)
=====================================================

 

A [smart pointer](CppSmartPointer.htm) is a
[container](CppContainer.htm) that manages a [pointer](CppPointer.htm).

 

[Boost.Smart\_ptr](CppSmart_ptr.htm) is the [Boost](CppBoost.htm) [smart
pointer](CppSmartPointer.htm) [library](CppLibrary.htm).

 

 

 

 

 

List of [smart pointers](CppSmartPointer.htm) (incomplete)
----------------------------------------------------------

 

-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [boost::scoped\_ptr](CppScoped_ptr.htm)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [boost::shared\_ptr](CppShared_ptr.htm)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [boost::weak\_ptr](CppWeak_ptr.htm)
-   ![C++98](PicCpp98.png)![Qt](PicQt.png) [QPointer](CppQPointer.htm)
-   ![C++98](PicCpp98.png)![STL](PicStl.png)
    [std::auto\_ptr](CppAuto_ptr.htm)
-   ![C++11](PicCpp11.png)![STL](PicStl.png)
    [std::shared\_ptr](CppShared_ptr.htm)
-   ![C++98](PicCpp98.png)![STL](PicStl.png)
    [std::tr1::shared\_ptr](CppShared_ptr.htm)
-   ![C++11](PicCpp11.png)![STL](PicStl.png)
    [std::unique\_ptr](CppUnique_ptr.htm)

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [Smart pointers example 1: do the classes check for uninitialized
    pointers?](CppSmartPointerExample1.htm)
-   [Smart pointers example 2: reset smart pointers to
    nullptr](CppSmartPointerExample2.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer to use [smart pointers](CppSmartPointer.htm) over "naked" new
    and delete \[1-6\]
-   Prefer [smart pointers](CppSmartPointer.htm) to [garbage
    collection](CppGarbageCollection.htm) \[7\]

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 13: 'Use objects to manage resources'.
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 17: 'Store [new](CppNew.htm)ed objects in
    [smart pointer](CppSmartPointer.htm)s in standalone statements'
3.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 19,
    1.3.2 'Advice', item 3: 'Avoid 'naked' new and delete'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[4\] Avoid "naked new" and "naked delete"'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[1\] Use unique\_ptr or shared\_ptr to avoid
    forgetting to delete objects created using new'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.9, page 131: 'Prefer smart
    pointers to garbage collection'

 

 

 

 

 





 



