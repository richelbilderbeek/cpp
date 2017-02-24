



 

 

 

 

 

([C++](Cpp.md)) [Adapter](CppAdapter.md)
==========================================

 

An [adapter](CppAdapter.md) is a type of [functor](CppFunctor.md) that
allows a method or a pointer to a function to be used as an argument to
[algorithms](CppAlgorithm.md) \[1\].

 

Most [adapters](CppAdapter.md) can be found in the [header
file](CppHeaderFile.md) [functional](CppFunctionalH.md).

 

There are four types of [adapters](CppAdapter.md) \[1\]:

 

-   [Binder](CppBinder.md): allows a two-argument function object to be
    used as a single-argument function by binding one argument to a
    value
-   Member function adapter: allows a member function to be used as an
    argument to [algorithms](CppAlgorithm.md)
-   Pointer to function adapter: allows a pointer-to-function to be used
    as an argument to [algorithms](CppAlgorithm.md)
-   [Negater](CppNegater.md): allows to express the opposite of a
    [predicate](CppPredicate.md)

 

 

 

 

 

[STL and Boost adapters](CppAdapter.md)
----------------------------------------

 

One can distinguish [STL](CppStl.md) and [Boost](CppBoost.md) adapters
by their [namespace](CppNamespace.md): All [STL](CppStl.md) objects
are in [namespace](CppNamespace.md) std. All [Boost](CppBoost.md)
objects are in [namespace](CppNamespace.md) [boost](CppBoost.md).

 

-   [Binders](CppBinder.md)
    -   [std::bind1st](CppBind1st.md)
    -   [std::bind2nd](CppBind2nd.md)
    -   [boost::bind](CppBind.md)
-   Member function adapters
    -   [std::mem\_fun](CppMem_fun.md)
    -   [std::mem\_fun\_ref](CppMem_fun_ref.md)
    -   [boost::mem\_fn](CppMem_fn.md)
-   Pointer to function adapter
    -   [std::ptr\_fun](CppPtr_fun.md)
-   [Negaters](CppNegater.md)
    -   [std::not1](CppNot1.md)
    -   [std::not2](CppNot2.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 18.4.4:
    'A member function adapter allows a member function to be used as an
    argument to algorithms. A pointer to function adapter allows a
    pointer to a function to be used as an argument to algorithms.'

 

 

 

 

 





 



