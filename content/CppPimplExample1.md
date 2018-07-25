# ([C++](Cpp.md)) [PimplExample1](CppPimplExample1.md)
 
[pimpl example 2: Lizard implementation in multiple files using
std::shared_ptr](CppStdShared_ptr.md) is a [pimpl](CppPimpl.md)
[example](CppExample.md).

Most lizards remain having the same gender for all their live.
Therefore, it is a good idea to make a lizard's gender a const member
variable. Problem is, that this makes a lizard class uncopyable. In this
example I solve this by making a Lizard contain an opaque pointer to
LizardImpl, where a LizardImpl does have a constant gender. Because I
want to be able to do a [shallow copy](CppShallowCopy.md) on Lizards, I
use a [std::shared_ptr](CppStdShared_ptr.md). Also note that the
code is very similar to a [Strategy](CppDesignPatternStrategy.md)
[design pattern](CppDesignPattern.md).

## CppPimpl.pro

```
TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt
QMAKE_CXXFLAGS += -std=c++17

SOURCES += \
    CppPimplMain.cpp \
    CppPimplLizard.cpp

HEADERS += \
    CppPimplLizard.h
```

## CppPimplLizard.h

```c++
#ifndef CPP_PIMPL_LIZARD_H
#define CPP_PIMPL_LIZARD_H

enum class Gender { male, female };

#include <memory>

class Lizard
{
public:
  Lizard(const Gender gender);
  ~Lizard();
  Gender GetGender() const noexcept;

private:
  struct LizardImpl;
  std::shared_ptr<LizardImpl> mPimpl;
};

#endif // CPP_PIMPL_LIZARD_H
```

## CppPimplLizard.cpp

```c++
#include "CppPimplLizard.h"

struct Lizard::LizardImpl
{
  LizardImpl(const Gender gender);
  const Gender mGender;
};

Lizard::Lizard(const Gender gender)
  : mPimpl(std::make_shared<LizardImpl>(gender))
{

}

Lizard::~Lizard()
{
  //Need destructor definition in implementation file
}

Gender Lizard::GetGender() const noexcept
{
  return mPimpl->mGender;
}

Lizard::LizardImpl::LizardImpl(const Gender gender) : mGender(gender)
{

}
```

## main.cpp

```c++
#include <vector>

#include "CppPimplLizard.h"

int main()
{
  std::vector<Lizard> lizards = {
    Lizard(Gender::male),
    Lizard(Gender::female)
  };
  std::swap(lizards[0], lizards[1]);
}
```

