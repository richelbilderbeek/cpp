



 

 

 

 

 

([C++](Cpp.htm)) [class](CppClass.htm)
======================================

 

[class](CppClass.htm) is a [keyword](CppKeyword.htm) to start a
[class](CppClass.htm) [declaration](CppDeclaration.htm). A
[class](CppClass.htm) is a user-defined [data type](CppDataType.htm) for
a concept There are multiple [class access levels](CppAccessLevel.htm).
There are multiple [class types](CppClassType.htm). There are multiple
[class examples](CppClassExample.htm).

 

'A [class](CppClass.htm) is a user-defined [data type](CppDataType.htm)
which consists of data elements and [functions](CppFunction.htm) which
operate on that data. In C++, this may be [declared](CppDeclaration.htm)
as a [class](CppClass.htm); it may also be
[declared](CppDeclaration.htm) as a [struct](CppStruct.htm) or a
[union](CppUnion.htm). Data defined in a [class](CppClass.htm) is called
[member data](CppMemberData.htm) and [functions](CppFunction.htm)
[defined](CppDefinition.htm) in a [class](CppClass.htm) are called
[member functions](CppMemberFunction.htm).' \[2\]

 

Class elements are:

-   [constructor](CppConstructor.htm)
-   [copy assignment operator](CppCopyAssignmentOperator.htm)
-   [destructor](CppDestructor.htm)
-   [members](CppMember.htm)
-   [helper functions](CppHelperFunction.htm)

 

The [class](CppClass.htm) [keyword](CppKeyword.htm) also be used to
create a [template function](CppTemplateFunction.htm).

 

 

 

 

 

![C++98](PicCpp98.png)![C++11](PicCpp11.png) Example [class](CppClass.htm)
--------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` class MyClass {   public: int mValue; };   int main() {   MyClass m;   m.mValue = 10; }`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![C++11](PicCpp11.png) [Class](CppClass.htm) elements
---------------------------------------------------------------------------

 

A [class](CppClass.htm) can have many types of [members](CppMember.htm):

-   [member functions](CppMemberFunction.htm) or member
    [functions](CppFunction.htm), of which the [Big
    Four](CppBigFour.htm) are especially important
-   [data members](CppDataMember.htm) or member
    [variables](CppVariable.htm)
-   member constants
-   member types

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   //public by default   void SetX(const int x) { m_x = x; } //A member function   int m_x;                            //A data member };`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------

 

All [classes](CppClass.htm) have a four special methods called the [Big
Four](CppBigFour.htm): [default constructor](CppDefaultConstructor.htm),
[destructor](CppDestructor.htm), [copy
constructor](CppCopyConstructor.htm) and [copy assignment
operator](CppCopyAssignmentOperator.htm):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct NoClass {}; //Do all classes really have a constructor, destructor,                    //copy constructor and copy-assignment operator?`
  ---------------------------------------------------------------------------------------------------------------------------------------------------

 

This class called NoClass is silently converted by your
[compiler](CppCompiler.htm) to the following (from \[1\]):

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct NoClass {   NoClass()                              //Default constructor                    {     //something   }   NoClass(const NoClass& rhs)            //copy constructor   {     //something   }   ~NoClass()                             //Default destructor   {     //something   }   NoClass& operator=(const NoClass& rhs) //copy-assignment operator   {     //something   } };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Know what functions C++ silently writes and calls \[1\]
-   Forgetting the semicolon at the end of a [class](CppClass.htm)
    [definition](CppDefinition.htm) is a [syntax
    error](CppSyntaxError.htm) \[3\]
-   Use UpperCamelCase for class names \[4\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
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

 

 

 

 

 





 



