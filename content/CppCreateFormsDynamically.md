



 

 

 

 

 

([C++](Cpp.htm)) [Create Forms Dynamically](CppCreateFormsDynamically.htm)
==========================================================================

 

The C++ Builder (and Turbo C++) TForm class ('Form' from now on) can be
created either statically or dynamically.

 

-   [View the code of 'Create Forms Dynamically' in plain
    text](CppCreateFormsDynamically.txt)

 

 

 

 

 

When to consider creating Forms dynamically
-------------------------------------------

 

Consider creating Forms dynamically when:

 

-   you want to create multiple instances of the same Form
-   you've added additional constructor parameters
-   you want to have a hierarchy in your Forms
-   you want to create Forms one by one
-   you want to create Forms in idle time
-   you want Forms to be created by a seperate thread

 

 

 

 

 

Do's and don'ts when creating Forms dynamically
-----------------------------------------------

 

When you want to dynamically create a Form

 

-   do make it an 'Available Form' ('Project | Options | Forms'),
    instead of an automatically created Form
-   do make a Form refer to itself as 'this', instead of using, for
    example 'Form1'

 

 

 

 

 

How to create a Form dynamically
--------------------------------

 

A Form can be created dynamically as follows:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Put this line among the other #includes #include <memory>  //Your method void __fastcall TFormMain::YourMethod() {   std::auto_ptr<TFormDynamic> f(new TFormDynamic(this));   f->ShowModal(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Sure you can use a plain [pointer](CppPointer.htm), but then don't
forget to [delete](CppDelete.htm) it. And if you don't want to forget to
[delete](CppDelete.htm) this [pointer](CppPointer.htm) (among others),
use a [std::auto\_ptr](CppAuto_ptr.htm).

 

Instead of passing '[this](CppThis.htm)', you might sometimes consider
passing '0' as an argument to the [constructor]() of TFormDynamic.

 

 

 

 

 

Communicate with the creator of a Form
--------------------------------------

 

In the code snippet above, the Form called TFormDynamic is constructed
using a pointer to the TFormMain Form. This enables the newly created
TFormDynamic to be potentially able to communicate with the TFormMain.

 

 

 

 

 

Communicate with the creator of a Form in the constructor only
--------------------------------------------------------------

 

The constructor of a Form takes as an argument the TComponent that has
created it. Therefore, you can easily use it locally:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Put this line among the other #includes #include <cassert>  __fastcall TFormDynamic::TFormDynamic(TComponent* Owner) : TForm(Owner) {   TFormMain * const formMain = dynamic_cast<TFormMain>(Owner);   assert(formMain!=0); //Assume cast succeeded    //Use formMain }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Communicate with the creator of a Form using a member variable
--------------------------------------------------------------

 

You can also make the TFormMain pointer a member variable of
TFormDynamic:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //UnitFormDynamic.h  //A forward declaration //Put it after the #includes and before the next line class TFormMain;  class TFormDynamic : public TForm { __published: // IDE-managed Components //Stuff private: // User declarations TFormMain * const mFormMain; public: // User declarations __fastcall TFormDynamic(TComponent* Owner); };  //UnitFormDynamic.cpp  //Put this line among the other #includes #include <cassert>  __fastcall TFormDynamic::TFormDynamic(TComponent* Owner) : TForm(Owner), mFormMain(dynamic_cast<TFormMain>(Owner) { assert(mFormMain!=0); //Assume cast succeeded  //Use mFormMain }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



