
 

 

 

 

 

([C++](Cpp.md)) [composite data type](CppCompositeDataType.md)
================================================================

 

A [composite data type](CppCompositeDataType.md) is a [data
type](CppDataType.md) which is constructed by stashing together
multiple other [data types](CppDataType.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <vector>  struct CompositeDataType {   bool m_b;   double m_d;   int m_i;   std::string m_s;   std::vector<std::string> m_v; };`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Composite data type](CppCompositeDataType.md) code snippets
-------------------------------------------------------------

 

-   [Write and read a composite data type to/from a
    std::stream](CppCompositeDataTypeToStream.md)

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
