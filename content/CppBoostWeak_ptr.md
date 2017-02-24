



 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png) [boost::weak\_ptr](CppBoostWeak_ptr.md)
================================================================================

 

[boost::weak\_ptr](CppBoostWeak_ptr.md) is a [Boost](CppBoost.md)
[smart pointer](CppSmartPointer.md) [class](CppClass.md) that 'stores
a "weak reference" to an object that's already managed by a
[shared\_ptr](CppBoostShared_ptr.md)..' \[1\].

 

[boost::weak\_ptr](CppBoostWeak_ptr.md) can be used to obtain a
read-only [pointer](CppPointer.md) from a
[boost::shared\_ptr](CppBoostShared_ptr.md) that detects if the
original [boost::shared\_ptr](CppBoostShared_ptr.md) still exists.

 

 

 

 

Examples
--------

 

-   [boost::weak\_ptr example 1](CppBoostWeak_ptrExample1.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Boost boost::weak\_ptr
    documentation](http://www.boost.org/doc/libs/1_42_0/libs/smart_ptr/weak_ptr.md)

 

 

 

 

 





 



