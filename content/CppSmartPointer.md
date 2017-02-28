# ([C++](Cpp.md)) [Smart pointer](CppSmartPointer.md)

A [smart pointer](CppSmartPointer.md) is a
[container](CppContainer.md) that manages a [pointer](CppPointer.md).

[Boost.Smart\_ptr](CppSmart_ptr.md) is the [Boost](CppBoost.md) [smart
pointer](CppSmartPointer.md) [library](CppLibrary.md).

## List of [smart pointers](CppSmartPointer.md) (incomplete)

-   ![C++98](PicCpp98.png)![Boost](PicBoost.png) [boost::scoped\_ptr](CppScoped_ptr.md)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png) [boost::shared\_ptr](CppShared_ptr.md)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png) [boost::weak\_ptr](CppWeak_ptr.md)
-   ![C++98](PicCpp98.png)![Qt](PicQt.png) [QPointer](CppQPointer.md)
-   ![C++98](PicCpp98.png)![STL](PicStl.png) [std::auto\_ptr](CppAuto_ptr.md)
-   ![C++11](PicCpp11.png)![STL](PicStl.png) [std::shared\_ptr](CppShared_ptr.md)
-   ![C++98](PicCpp98.png)![STL](PicStl.png) [std::tr1::shared\_ptr](CppShared_ptr.md)
-   ![C++11](PicCpp11.png)![STL](PicStl.png) [std::unique\_ptr](CppUnique_ptr.md)

## [Examples](CppExample.md)

-   [Smart pointers example 1: do the classes check for uninitialized
    pointers?](CppSmartPointerExample1.md)
-   [Smart pointers example 2: reset smart pointers to
    nullptr](CppSmartPointerExample2.md)

## [Advice](CppAdvice.md)

-   Prefer to use [smart pointers](CppSmartPointer.md) over "naked" new
    and delete \[1-6\]
-   Prefer [smart pointers](CppSmartPointer.md) to [garbage
    collection](CppGarbageCollection.md) \[7\]
-   [Polymorphic](Polymorphism.md) types must always be passed by [reference](CppReference.md) or ([smart](CppSmartPointer.md)) [pointer](CppPointer.md) [8]


## [References](CppReferences.md)

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition). ISBN: 0-321-33487-6. 
    Item 13: 'Use objects to manage resources'.
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition). ISBN: 0-321-33487-6. 
    Item 17: 'Store [new](CppNew.md)ed objects in
    [smart pointer](CppSmartPointer.md)s in standalone statements'
3.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. 
    Page 19, 1.3.2 'Advice', item 3: 'Avoid 'naked' new and delete'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[4\] Avoid "naked new" and "naked delete"'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[1\] Use unique\_ptr or shared\_ptr to avoid
    forgetting to delete objects created using new'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014. ISBN: 978-0-321-958310. 
    Chapter 11.7.9, page 131: 'Prefer smart pointers to garbage collection'
8.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 6.1.3: 'Polymorphic types must always be passed by reference or (smart) pointer!'
