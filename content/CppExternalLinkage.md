



 

 

 

 

 

([C++](Cpp.md)) [external linkage](CppExternalLinkage.md)
===========================================================

 

'A name has [external linkage](CppExternalLinkage.md) if, in a
multi-file program, that name can interact with other translation units
at [link-time](CppLinkTime.md)' \[1\].

 

Avoid data with [external linkage](CppExternalLinkage.md) at [file
scope](CppFileScope.md) \[2\].

 

Avoid [free functions](CppFreeFunction.md) with [external
linkage](CppExternalLinkage.md) (including operator functions) in
[implementation (.cpp) files](CppImplementationFile.md) \[3\].

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 1.1.2, page 24: 'DEFINITION: A
    name has external linkage if, in a multi-file program, that name can
    interact with other translation units at link time.'
2.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.1, page 70: 'Avoid data with
    external linkage at file scope'
3.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.2, page 72: 'Avoid free
    functions (except operator functions) at file scope in .h files;
    avoid free functions with external linkage (including
    operator functions) in .c files

 

 

 

 

 





 



