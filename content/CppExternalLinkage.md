



 

 

 

 

 

([C++](Cpp.htm)) [external linkage](CppExternalLinkage.htm)
===========================================================

 

'A name has [external linkage](CppExternalLinkage.htm) if, in a
multi-file program, that name can interact with other translation units
at [link-time](CppLinkTime.htm)' \[1\].

 

Avoid data with [external linkage](CppExternalLinkage.htm) at [file
scope](CppFileScope.htm) \[2\].

 

Avoid [free functions](CppFreeFunction.htm) with [external
linkage](CppExternalLinkage.htm) (including operator functions) in
[implementation (.cpp) files](CppImplementationFile.htm) \[3\].

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 1.1.2, page 24: 'DEFINITION: A
    name has external linkage if, in a multi-file program, that name can
    interact with other translation units at link time.'
2.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.1, page 70: 'Avoid data with
    external linkage at file scope'
3.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.2, page 72: 'Avoid free
    functions (except operator functions) at file scope in .h files;
    avoid free functions with external linkage (including
    operator functions) in .c files

 

 

 

 

 





 



