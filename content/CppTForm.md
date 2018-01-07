
 

 

 

 

 

([C++](Cpp.md)) [TForm](CppTForm.md)
======================================

 

VCL data type for a form, the Component you put all others on. Without
any others on it, it is an empty window. Can be found in the [header
file](CppHeaderFile.md) **Forms.hpp**.

 

For [code snippets](CppVclCodeSnippets.md) using TForm, [go to the VCL
graphics code snippets page](CppVclGraphics.md)

 

 

 

 

 

Multiple TForms
---------------

 

There are multiple options when you want to develop an application with
multiple forms. You can use Auto-created Forms (default) or create them
dynamically yourself. Also you can choose between using normal Forms or
use MDI Parents and MDI Childs. MDI is an abbreviation for 'Multiple
Document Interface'.

 

 

 

 

 

### An Auto-created Form showing another auto-created Form

 

To have multiple (non-parent) TForms in your program, do (using default
names):

 

-   Start a new [VCL](CppVcl.md) Application (called Project1 with
    Unit1 and Form1)
-   Create a new Form (called Unit2 and Form2)
-   Save all in the same directory under their default names
-   Select Form1
-   Select 'Project | Add to Project | Unit2.cpp'
-   Select 'File | Include Unit Hdr | Unit2'

 

Now you can type, e.g. under an OnClick event:

 

  -------------------
  ` Form2->Show();`
  -------------------

 

 

 

 

 

### An Auto-created MDI Form showing another auto-created MDI Child

 

-   Start a new [VCL](CppVcl.md) Application
-   Set the Form Name to FormParent
-   Set FormParent's FormStyle to fsMDIForm
-   Save this Form as UnitFormParent.cpp
-   Create a new Form called FormChild
-   Set FormChild's FormStyle to fsMDIChild
-   Save this Form as UnitFormChild.cpp
-   Select FormParent
-   Select 'Project | Add to Project | UnitFormChild.cpp'
-   Select 'File | Include Unit Hdr | UnitFormChild'

 

Now you can type, e.g. under an OnClick event:

 

  -----------------------
  ` FormChild->Show();`
  -----------------------

 

Note that this is not the standard use of an MDI application, as we only
have one single Child, which only has one [instance](CppInstance.md).
But the Child does have different behaviour compared to standard Forms.

 

 

 

 

 

### An Auto-created MDI Form showing multiple dynamically-created MDI Childs

 

-   Start a new [VCL](CppVcl.md) Application
-   Set the Form Name to FormParent
-   Set FormParent's FormStyle to fsMDIForm
-   Save this Form as UnitFormParent.cpp
-   Create a new Form called FormChild
-   Set FormChild's FormStyle to fsMDIChild
-   Save this Form as UnitFormChild.cpp
-   Select FormParent
-   Select 'Project | Add to Project | UnitFormChild.cpp'
-   Select 'File | Include Unit Hdr | UnitFormChild'
-   Do 'Project | Options | (tab) Forms', then remove 'FormChild' from
    the Auto-create list

 

Creating an instance of a Child can be done like this:

 

  ------------------------------------------------------------------------------------------------------------------------------------
  `  //Somewhere in code of FormParent, e.g. under an OnClick Event TFormChild * child = new TFormChild(this); //Code delete child;`
  ------------------------------------------------------------------------------------------------------------------------------------

 

Or using a [std::auto\_ptr](CppAuto_ptr.md):

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Headers #include <memory>  //Somewhere in code of FormParent, e.g. under an OnClick Event std::auto_ptr<TFormChild> child(new TFormChild(this)); //Code`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------

 

But this simple code is not enough, as you probably want to keep the
Child Forms on the Parent Form. So you could use a
[std::vector](CppStdVector.md) storing these child
[pointers](CppPointer.md). I use the
[boost::shared\_ptr](CppShared_ptr.md) for this:

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //UnitFormParent.h  //Add these headers #include <vector> #include <boost/shared_ptr>  //Add to the private section of the class declaration: std::vector<boost::shared_ptr<TFormChild> > mChilds;`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Then add to FormParent's definitions:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //A button for creating a new Child void __fastcall TFormMain::ButtonNewClick() {   mChilds.push_back(boost::shared_ptr<TFormChild>(new TFormChild(this)));   //Optionally: (you'll need to add a Label to the Child)   mChilds.back()->Label1->Caption = "Child #" + IntToStr(Tag);   ++Tag; }  //A button for removing a Child void __fastcall TFormMain::ButtonDeleteClick() {   if (!mChilds.empty()) mChilds.pop_back(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Get a TForm in a TForm](CppTFormInTForm.md)
---------------------------------------------

 

You can get a TForm in a TForm as if it were a TPanel. [Go to the page
'Get a TForm in a TForm'](CppTFormInTForm.md).

 

 

 

 

 

Transparency
------------

 

Making a Form transparent is easy. First set the AlphaBlend property to
true. Then the AlphaBlendValue determines the transparency. An
AlphaBlendValue of 0 denotes total transparence (you won't see it
anymore), an AlphaBlendValue of 255 denotes the standard
non-transparency.

 

 

 

 

 

TForm troubles
--------------

 

Never change the TForm [constructor](CppConstructor.md) to the
following:

  ------------------------------------------------------------------------------------------------------------------------------------------------------
  ` __fastcall TFormParent::TFormParent(TComponent* Owner, const int i) //Don't do this!   : TForm(Owner) //Rest of the code {   //Rest of the code }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------

 

This will (strangely) result in a [stack
overflow](CppStackOverflow.md).

 

One workaround is to use [AnsiString](CppAnsiString.md) instead of an
[integer](CppInt.md):

 

  ------------------------------------------------------------------------------------------------------------------------------------------
  ` __fastcall TFormParent::TFormParent(TComponent* Owner, const AnsiString i)   : TForm(Owner) //Rest of the code { //Rest of the code }`
  ------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

