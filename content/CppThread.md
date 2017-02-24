

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [thread](CppThread.htm)
========================================

 

A [thread](CppThread.htm) is the smallest unit of processing that can be
scheduled by an [operating system](CppOs.htm)' \[1\].

 

[std::thread](CppThread.htm) is the [C++11](Cpp11.htm)
[thread](CppThread.htm) [class](CppClass.htm).

 

 

 

 

### [thread](CppThread.htm) (general) design

 

As a personal note, I will put my [thread](CppThread.htm) design
questions here. Feel free to [contact me](Contact.htm) if you can
provide answers with [references](CppReferences.htm).

-   To make a class thread-safe, is it enough to add a mutex at the
    start of each method?
-   In a thread-safe-to-be class, which return types can a methods have?
    Can it be a pointer, const pointer, shared\_ptr, weak\_ptr,
    reference, std::vector, std::vector reference, etc? And what about
    std::atomic?
-   In a thread-safe-to-be class, which methods (depending on arguments,
    return type, work done inside of the method) can be without mutexes?
-   When adding a mutex to a class method, I tend to suggest always to
    use std::recursive\_mutex, instead of the std::mutex, because
    std::recursive\_mutex is as safe as a std::mutex, but more flexible.
    When is std::mutex to be preferred?
-   When adding a mutex to a class method, I tend to refrain from using
    timed mutex, as I feel these are sloppy. When would using timed
    mutexes be recommended?
-   When benchmarking a class for thread-safety, is it enough to create
    simply create multiple threads reading and writing to all methods of
    the class? That, if this works, the class can be called thread-safe?
-   When having benchmarking a class for thread-safety in the way above,
    when to use tools like helgrind?

 

 

 

 

 

External links
--------------

 

-   [Corensic.com tutorial about
    concurrency](http://www.corensic.com/Learn/Resources/ConcurrencyTutorialPartOne.aspx)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Wikipedia page about
    threads](http://en.wikipedia.org/wiki/Thread_(computer_science))

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
