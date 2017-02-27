# ([C++](Cpp.md)) [using](CppUsing.md)

[using](CppUsing.md) is a [keyword](CppKeyword.md) to specify the a
[namespace(s)](CppNamespace.md) used or the
[namespace(s)](CppNamespace.md) of the [data types](CppDataType.md)
used.

## Example: [using](CppUsing.md) to specify the [namespace(s)](CppNamespace.md) of the [data types](CppDataType.md) used

```
#include <iostream>
#include <string>

int main()
{
  using std::cout;
  using std::string;
  const string s = "Hello world";
  cout << s;
}
```

## Example: [using](CppUsing.md) to specify the [namespace(s)](CppNamespace.md) used

```
#include <iostream>
#include <string>

int main()
{
  using namespace std;
  const string s = "Hello world";
  cout << s;
}
```

## [Advice](CppAdvice.md)

-   Use [using](CppUsing.md)-directives for transition, for foundational [libraries](CppLibrary.md) (such as [std](CppStd.md)), 
    or within a [local](CppLocal.md) [scope](CppScope.md) [1] 
-   Don't put a [using](CppUsing.md)-directive in a [header file](CppHeaderFile.md) [2,3] 
-   Don't write a [using](CppUsing.md)-directive before an [#include](CppInclude.md) [3] 
-   Prefer [using](CppUsing.md) over [typedef](CppTypedef.md) for defining aliases [4]


## [Reference](CppReferences.md)

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[10\] Use using-directives for transition, for
    foundational libraries (such as std), or within a local scope'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[11\] Don't put a using-directive in a header
    file'
3.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 59: 'Don't write namespace usings in a header file or before an #include'
4.  [C++ Core Guidelines item T.43](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t43-prefer-using-over-typedef-for-defining-aliases):
    'Prefer using over typedef for defining aliases'
5.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 2.7.3: 'Implement binary operators as free functions'
7.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 3.2.3: ''


