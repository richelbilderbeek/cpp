

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ConvertMatrix](CppConvertMatrix.htm)
======================================================

 

[Container](CppContainer.htm) [code snippet](CppCodeSnippets.htm) that
[converts](CppConvert.htm) a
[std::vector](CppVector.htm)&lt;[std::vector](CppVector.htm)&lt;X&gt;
&gt; to
[std::vector](CppVector.htm)&lt;[std::vector](CppVector.htm)&lt;Y&gt;
&gt; using [static\_cast](CppStatic_cast.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  //From http://www.richelbilderbeek.nl/CppConvertMatrix.htm template <class Source, class Target> const std::vector<std::vector<Target> > ConvertMatrix(   const std::vector<std::vector<Source> >& v) {   const int maxy = static_cast<int>(v.size());   assert(maxy>0);   const int maxx = static_cast<int>(v[0].size());   std::vector<std::vector<Target> > t(maxy, std::vector<Target>(maxx));   for (int y=0; y!=maxy; ++y)   {     for (int x=0; x!=maxx; ++x)     {       t[y][x] = static_cast<Target>(v[y][x]);     }   }   return t; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
