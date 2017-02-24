
 

 

 

 

 

([C++](Cpp.md)) [shared\_ptr.hpp: call to undefined function 'assert'](CppCompileErrorShared_ptrCallToUndefinedFunctionAssert.md)
===================================================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

Project type: [VCL](CppVcl.md)

 

The compiler takes you to shared\_ptr.hpp, to the
[BOOST\_ASSERT](CppBOOST_ASSERT.md):

 

  --------------------------------------------------------------------------------------
  ` T * operator-> () const // never throws {   BOOST_ASSERT(px != 0);   return px; }`
  --------------------------------------------------------------------------------------

 

I still do not understand why it occurs (as on top of the header file
boost/assert.hpp is [\#included](CppInclude.md)).

 

This error started to occur when I split a multi-unit project over
multiple folders, in which I had defined by own assert.h (instead of
Assert.hpp) and use assert (instead of Assert).

 

 

 

 

 

Solution
--------

 

-   Move the 'Auto-Create Forms' to 'Available' (Choose 'Project |
    Options | Forms')
-   Now compiling should be successful
-   Move the 'Available' Forms back

 

Why this works? I don't know.

 

 

 

 

 

Alternative possible solution
-----------------------------

 

-   remove all files from the project
-   remove all project directories (i.e. the multiple paths for
    the project)
-   rename your own assert.h to Assert.hpp, use Assert instead of assert
-   add the removed files to the project again

 

 

 

 

 

 

