



 

 

 

 

 

([C++](Cpp.md)) [class](CppClass.md)
======================================

 

[class](CppClass.md) is a [keyword](CppKeyword.md) to start a
[class](CppClass.md) [declaration](CppDeclaration.md). A
[class](CppClass.md) is a user-defined [data type](CppDataType.md) for
a concept There are multiple [class access levels](CppAccessLevel.md).
There are multiple [class types](CppClassType.md). There are multiple
[class examples](CppClassExample.md).

 

'A [class](CppClass.md) is a user-defined [data type](CppDataType.md)
which consists of data elements and [functions](CppFunction.md) which
operate on that data. In C++, this may be [declared](CppDeclaration.md)
as a [class](CppClass.md); it may also be
[declared](CppDeclaration.md) as a [struct](CppStruct.md) or a
[union](CppUnion.md). Data defined in a [class](CppClass.md) is called
[member data](CppMemberData.md) and [functions](CppFunction.md)
[defined](CppDefinition.md) in a [class](CppClass.md) are called
[member functions](CppMemberFunction.md).' \[2\]

 

Class elements are:

-   [constructor](CppConstructor.md)
-   [copy assignment operator](CppCopyAssignmentOperator.md)
-   [destructor](CppDestructor.md)
-   [members](CppMember.md)
-   [helper functions](CppHelperFunction.md)

 

The [class](CppClass.md) [keyword](CppKeyword.md) also be used to
create a [template function](CppTemplateFunction.md).

 

 

 

 

 

![C++98](PicCpp98.png)![C++11](PicCpp11.png) Example [class](CppClass.md)
--------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` class MyClass {   public: int mValue; };   int main() {   MyClass m;   m.mValue = 10; }`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![C++11](PicCpp11.png) [Class](CppClass.md) elements
---------------------------------------------------------------------------

 

A [class](CppClass.md) can have many types of [members](CppMember.md):

-   [member functions](CppMemberFunction.md) or member
    [functions](CppFunction.md), of which the [Big
    Four](CppBigFour.md) are especially important
-   [data members](CppDataMember.md) or member
    [variables](CppVariable.md)
-   member constants
-   member types

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   //public by default   void SetX(const int x) { m_x = x; } //A member function   int m_x;                            //A data member };`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------

 

All [classes](CppClass.md) have a four special methods called the [Big
Four](CppBigFour.md): [default constructor](CppDefaultConstructor.md),
[destructor](CppDestructor.md), [copy
constructor](CppCopyConstructor.md) and [copy assignment
operator](CppCopyAssignmentOperator.md):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct NoClass {}; //Do all classes really have a constructor, destructor,                    //copy constructor and copy-assignment operator?`
  ---------------------------------------------------------------------------------------------------------------------------------------------------

 

This class called NoClass is silently converted by your
[compiler](CppCompiler.md) to the following (from \[1\]):

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct NoClass {   NoClass()                              //Default constructor                    {     //something   }   NoClass(const NoClass& rhs)            //copy constructor   {     //something   }   ~NoClass()                             //Default destructor   {     //something   }   NoClass& operator=(const NoClass& rhs) //copy-assignment operator   {     //something   } };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Know what functions C++ silently writes and calls \[1\]
-   Forgetting the semicolon at the end of a [class](CppClass.md)
    [definition](CppDefinition.md) is a [syntax
    error](CppSyntaxError.md) \[3\]
-   Use UpperCamelCase for class names \[4\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 5: 'Know what functions C++ silently
    writes and calls'
2.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. 4.3.5: 'A class is a user-defined data type
    which consists of data elements and functions which operate on
    that data. In C++, this may be declared as a class; it may also be
    declared as a struct or a union. Data defined in a class is called
    member data and functions defined in a class are called member
    functions.'
3.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.1, Common Programming
    Error 3.1. page 39: 'Forgetting the semicolon at the end of a class
    definition is a syntax error.'
4.  Trevor Misfeldt, Gregory Bumgardner, Andrew Gray. The elements of
    C++ style. 2004. ISBN: 978-0-521-89308-4. Chapter 4.2, page 18: 'Use
    UpperCamelCase for classes, constants, structures, enumerations, and
    typedefs'

 

 

 

 

 





 



