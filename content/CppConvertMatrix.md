#([C++](Cpp.md)) [ConvertMatrix](CppConvertMatrix.md)

[Container](CppContainer.md) [code snippet](CppCodeSnippets.md) that
[converts](CppConvert.md) a
[std::vector](CppStdVector.md)&lt;[std::vector](CppStdVector.md)&lt;X&gt;
&gt; to
[std::vector](CppStdVector.md)&lt;[std::vector](CppStdVector.md)&lt;Y&gt;
&gt; using [static\_cast](CppStatic_cast.md).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  //From http://www.richelbilderbeek.nl/CppConvertMatrix.htm template <class Source, class Target> const std::vector<std::vector<Target> > ConvertMatrix(   const std::vector<std::vector<Source> >& v) {   const int maxy = static_cast<int>(v.size());   assert(maxy>0);   const int maxx = static_cast<int>(v[0].size());   std::vector<std::vector<Target> > t(maxy, std::vector<Target>(maxx));   for (int y=0; y!=maxy; ++y)   {     for (int x=0; x!=maxx; ++x)     {       t[y][x] = static_cast<Target>(v[y][x]);     }   }   return t; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

