



 

 

 

 

 

([C++](Cpp.htm)) [utilities.hpp: Invalid template argument list](CppCompileErrorUtilitiesHppInvalidTemplateArgumentList.htm)
============================================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------------
  ` [C++ Error] utilities.hpp(305): E2401 Invalid template argument list`
  -------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

Boost version: 1.35.0.

 

  -------------------------------------
  ` #include <boost/gil/gil_all.hpp>`
  -------------------------------------

 

Which takes you to the following line in
'include/boost/gil/utilities.hpp':

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /// \ingroup ColorSpaceAndLayoutModel /// \brief Represents a color space and ordering of channels in memory template <typename ColorSpace, typename ChannelMapping = mpl::range_c<int,0,mpl::size<ColorSpace>::value> > //This line struct layout { typedef ColorSpace color_space_t; typedef ChannelMapping channel_mapping_t; };`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

This compiler is not supported by Boost. Change to another compiler.

 

 

 

 

 





 



