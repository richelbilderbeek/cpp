# ([C++](Cpp.md)) ![Qt](PicQt.png) [QPointer](CppQPointer.md)

[QPointer](CppQPointer.md) is a [Qt](CppQt.md) [class](CppClass.md)
to hold a [pointer](CppPointer.md). Such a [class](CppClass.md) is
called a [smart pointer](CppSmartPointer.md), yet -in my humble
opinion- [QPointer](CppQPointer.md) behaves unexpectedly.

Prefer to use [smart pointers](CppSmartPointer.md) over normal pointers [1].

```
#include <cassert>
#include <iostream>
#include <QPointer>

//QPointer can only hold classes derived from QObject
struct Test : public QObject
{
  Test(const int x) : m_x(x) { std::cout << "~Test\n"; }
  ~Test()
  {
    std::clog << "~Test\n";
  }
  const int m_x;
};

int main()
{
  {
    QPointer<Test> p;
    assert(!p);
    assert(!p.data());
    assert(p.isNull());
  }
  {
    QPointer<Test> p(new Test(42));
    assert(p);
    assert(p.data());
    assert(!p.isNull());
    std::clog << p->m_x << '\n';
    std::clog << "~Test will be called after this\n";
  }
  std::clog << "~Test should have been called before this\n";
}
```

Screen output:

```
~Test
42
~Test will be called after this
~Test should have been called before this
```


Expected screen output:

```
42
~Test will be called after this
~Test
~Test should have been called before this
```

## [References](CppReferences.md)

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.

