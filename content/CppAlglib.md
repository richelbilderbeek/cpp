



 

 

 

 

 

([C++](Cpp.htm)) [ALGLIB](CppAlglib.htm)
========================================

 

The [ALGLIB](CppAlglib.htm) is 'a cross-platform open source numerical
analysis and data processing [library](CppLibrary.htm) \[1\]'.

 

Personally, I dislike this library:

-   Pro: use of std::string
-   Pro: extensive in-code documentation
-   Con: Use of real\_1d\_array (and the likes) instead of
    std::vector&lt;T&gt; classes. real\_1d\_array (and the likes) do not
    follow a RAII idiom, 'setcontent' has to be used instead.
-   Con: Many GCC compiler warnings, where I prefer a clean compile

 

I could not figure out how to obtain a linear fit: I expect two values
(a slope and an offset), where I obtain only one? See [ALGLIB example 2:
linear fit](CppAlglibExample2).

 

 

 

 

Examples
--------

 

1.  [ALGLIB example 1: linear fit](CppAlglibExample1.htm)
2.  [ALGLIB example 2: linear fit](CppAlglibExample2.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Wikipedia page about ALGLIB](https://en.wikipedia.org/wiki/ALGLIB)

 

 

 

 

 





 



