[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Pimpl](CppPimpl.htm)
======================================

 

[Pimpl](CppPimpl.htm) is an abbreviation of '[pointer](CppPointer.htm)
to [implementation](CppImplementation.htm)'.

 

The idea of the [Pimpl](CppPimpl.htm) idiom is to give a
[class](CppClass.htm) (for example 'Lizard') an [opaque (smart)
pointer](CppOpaquePointer.htm) to the actual
[implementation](CppImplementation.htm) (for example 'LizardImpl'). The
[opaque (smart) pointer](CppOpaquePointer.htm) enables it to do a
[forward declaration](CppForwardDeclaration.htm) of the
[implementation](CppImplementation.htm) [class](CppClass.htm) only,
without the [compiler](CppCompiler.htm) needing to know the actual
[type](CppDataType.htm). This shortens build times \[1\]. All the
[public](CppPublic.htm) [member functions](CppMemberFunction.htm) of the
[Pimpl](CppPimpl.htm) [class](CppClass.htm) will (often) call the
[member functions](CppMemberFunction.htm) of the
[implementation](CppImplementation.htm) [class](CppClass.htm) with the
same name.

 

The advantages of using the [Pimpl](CppPimpl.htm) idiom are:

-   Shorten build times \[1\]
-   Remove visibility of [private](CppPrivate.htm) [member
    functions](CppMemberFunction.htm) \[1\]
-   Improved error handling and safety \[1\]

 

The disadvantage of using the [Pimpl](CppPimpl.htm) idiom is the cost of
an extra level of indirection, so [Pimpl](CppPimpl.htm) judiciously
\[1\].

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [Pimpl example 1: Lizard implementation in one file using
    boost::shared\_ptr](CppPimplExample1.htm)
-   [Pimpl example 2: Lizard implementation in multiple file using
    boost::shared\_ptr](CppPimplExample2.htm)

 

Most lizards remain having the same gender for all their live.
Therefore, it is a good idea to make a lizard's gender a const member
variable. Problem is, that this makes a lizard class uncopyable. In this
example I solve this by making a Lizard contain an opaque pointer to
LizardImpl, where a LizardImpl does have a constant gender. Because I
want to be able to do a [shallow copy](CppShallowCopy.htm) on Lizards, I
use a [boost::shared\_ptr](CppBoostShared_ptr.htm). Also note that the
code is very similar to a [Strategy](CppDesignPatternStrategy.htm)
[design pattern](CppDesignPattern.htm).

 

 

 

 

 

 

lizard.h
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //--------------------------------------------------------------------------- // UnitLizard.h //--------------------------------------------------------------------------- #ifndef UnitLizardH #define UnitLizardH //--------------------------------------------------------------------------- #include <boost/shared_ptr.hpp> //--------------------------------------------------------------------------- enum Gender { male, female };   struct Lizard {   Lizard(const Gender gender);   const Gender GetGender() const;   private:   struct LizardImpl;   boost::shared_ptr<LizardImpl> mPimpl; }; #endif`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

lizard.cpp
----------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //--------------------------------------------------------------------------- // UnitLizard.cpp //--------------------------------------------------------------------------- #include "UnitLizard.h" //--------------------------------------------------------------------------- struct Lizard::LizardImpl {   LizardImpl(const Gender gender);   const Gender mGender; }; //--------------------------------------------------------------------------- Lizard::Lizard(const Gender gender)   : mPimpl(boost::shared_ptr<LizardImpl>(new LizardImpl(gender) ) ) {   } //--------------------------------------------------------------------------- const Gender Lizard::GetGender() const {   return mPimpl->mGender; } //--------------------------------------------------------------------------- // The actual Lizard implementation //--------------------------------------------------------------------------- Lizard::LizardImpl::LizardImpl(const Gender gender) : mGender(gender) {   } //---------------------------------------------------------------------------`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 43:
    'Pimpl judiciously'.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
