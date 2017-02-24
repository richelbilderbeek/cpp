



 

 

 

 

 

([C++](Cpp.htm)) [Adapter](CppAdapter.htm)
==========================================

 

An [adapter](CppAdapter.htm) is a type of [functor](CppFunctor.htm) that
allows a method or a pointer to a function to be used as an argument to
[algorithms](CppAlgorithm.htm) \[1\].

 

Most [adapters](CppAdapter.htm) can be found in the [header
file](CppHeaderFile.htm) [functional](CppFunctionalH.htm).

 

There are four types of [adapters](CppAdapter.htm) \[1\]:

 

-   [Binder](CppBinder.htm): allows a two-argument function object to be
    used as a single-argument function by binding one argument to a
    value
-   Member function adapter: allows a member function to be used as an
    argument to [algorithms](CppAlgorithm.htm)
-   Pointer to function adapter: allows a pointer-to-function to be used
    as an argument to [algorithms](CppAlgorithm.htm)
-   [Negater](CppNegater.htm): allows to express the opposite of a
    [predicate](CppPredicate.htm)

 

 

 

 

 

[STL and Boost adapters](CppAdapter.htm)
----------------------------------------

 

One can distinguish [STL](CppStl.htm) and [Boost](CppBoost.htm) adapters
by their [namespace](CppNamespace.htm): All [STL](CppStl.htm) objects
are in [namespace](CppNamespace.htm) std. All [Boost](CppBoost.htm)
objects are in [namespace](CppNamespace.htm) [boost](CppBoost.htm).

 

-   [Binders](CppBinder.htm)
    -   [std::bind1st](CppBind1st.htm)
    -   [std::bind2nd](CppBind2nd.htm)
    -   [boost::bind](CppBind.htm)
-   Member function adapters
    -   [std::mem\_fun](CppMem_fun.htm)
    -   [std::mem\_fun\_ref](CppMem_fun_ref.htm)
    -   [boost::mem\_fn](CppMem_fn.htm)
-   Pointer to function adapter
    -   [std::ptr\_fun](CppPtr_fun.htm)
-   [Negaters](CppNegater.htm)
    -   [std::not1](CppNot1.htm)
    -   [std::not2](CppNot2.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 18.4.4:
    'A member function adapter allows a member function to be used as an
    argument to algorithms. A pointer to function adapter allows a
    pointer to a function to be used as an argument to algorithms.'

 

 

 

 

 





 



