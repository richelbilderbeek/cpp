



 

 

 

 

 

([C++](Cpp.md)) [const\_cast does not work to remove constness in argument](CppMyQuestions1.md)
=================================================================================================

 

One of my [C++ questions](CppMyQuestions.md) that has been solved!

 

-   [View this post at the Programmers Heaven C++
    forum](http://www.programmersheaven.com/mb/CandCPP/390544/390544/const_cast-does-not-work-to-remove-constness-in-argument/?S=B20000#390544)

 

Posted on 7 May 2009 at 3:58 AM

 

Dear fellow PH-users,

 

When using [std::seach\_n](CppSearch_n.md) in a const-correct way I ran
into problems. I found a workaround, but I hope one of you can give an
in-depth explanation.

 

The following code should compile, but it doesn't (under the IDE C++
Builder 6.0 Enterprise edition with the Borland compiler BCB.exe version
6.0.10.157):

 

  ---------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),n,'*');`
  ---------------------------------------------------------------------------------------------------------------------

 

The compile-error given is 'Cannot modify const object', because 'n' is
of type 'const int'. Although the real problem is in the std::search\_n
algorithm, I use the following workaround:

 

  ---------------------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),static_cast<int>(n),'*');`
  ---------------------------------------------------------------------------------------------------------------------------------------

 

Due to the static\_cast to integer type, this compiles nicely. But what
I also tried is to const\_cast the const integer n to integer type, as
below:

 

  --------------------------------------------------------------------------------------------------------------------------------------
  ` const std::string s = "abc***def"; const int n = 3; //Number of repeats std::search_n( s.begin(),s.end(),const_cast<int>(n),'*');`
  --------------------------------------------------------------------------------------------------------------------------------------

 

This again gives the compile-error 'Cannot modify const object'.

 

IMHO the const\_cast is better then the static\_cast (because I want the
constness away).

 

So my question is: why does static\_cast work and why doesn't
const\_cast work?

 

Thanks in advance, Bilderbikkel

 

 

 

 

 

Answer by Sergey (thanks!)
--------------------------

 

As section 5.2.11 Const cast \[expr.const.cast\] of ISO C++ standard
suggests, there are limited amount of conversion that can be performed
using const\_cast, so const\_cast operator can be briefly described as
applicable to two pointers to the same type with various cv-qualifiers.
So point is that you can't const\_cast to any type other that pointer or
reference.

 

And static\_cast worked becouse it created new temporary object from
existing one, it is was similar to use "const int n = 10; search\_n(
s.begin(), s.end(), int( n), '\*');". But I suppose that these casts are
redundant becouse arguments are passed by value so algorithm don't
affects "outer" variables.

 

 

 

 





 



