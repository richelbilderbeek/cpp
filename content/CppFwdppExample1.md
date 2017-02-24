



 

 

 

 

 

([C++](Cpp.htm)) [FwdppExample1](CppFwdppExample1.htm)
======================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppFwdppExample1/CppFwdppExample1.pro
--------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplicationNoWeffcpp.pri) include(../../Libraries/BoostAll.pri) include(../../Libraries/Fwdpp.pri) include(../../Libraries/Libsequence.pri)  LIBS += -lgsl LIBS += -lgslcblas LIBS += -lz  SOURCES += diploid.cc HEADERS += common_gamete.hpp   # N theta rho ngens samplesize nreps seed # 1000 1 1 1000 100 100 42`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppFwdppExample1/common\_gamete.hpp
-------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef __FWDPP_EXAMPLES_COMMON_GAMETE_HPP__ #define __FWDPP_EXAMPLES_COMMON_GAMETE_HPP__  #include <iostream>  #ifndef USE_STANDARD_CONTAINERS #include <boost/unordered_set.hpp> #include <boost/container/list.hpp> #include <boost/container/vector.hpp> #include <boost/pool/pool_alloc.hpp> #include <boost/unordered_set.hpp> #include <boost/functional/hash.hpp> typedef boost::pool_allocator<mtype> mut_allocator; typedef boost::container::list<mtype,mut_allocator > mlist; typedef KTfwd::gamete_base<mtype,mlist> gtype; typedef boost::pool_allocator<gtype> gam_allocator; typedef boost::container::vector<gtype,gam_allocator > gvector; typedef boost::unordered_set<double,boost::hash<double>,KTfwd::equal_eps > lookup_table_type; /*   We wish to do mutations under the infinitely-many sites assumption.  That means that   a new mutation cannot appear at any previously-mutated site.  Here, we cheat a little   and do not allow mutations at any sites that are currently polymorphic.    We accomplish this via a lookup table of the current mutation positions.  The function object   KTfwd::equal_eps is used as a replacement for std::operator==(double,double) in order to ensure   that values differing by <= DBL_EPSILON (~10^-17 on most systems) are not allowed, as they cause problems.  */ typedef boost::unordered_set<double,boost::hash<double>,KTfwd::equal_eps > lookup_table_type; #else #include <unordered_set> #include <vector> #include <list> typedef std::list<mtype> mlist; typedef KTfwd::gamete_base<mtype,mlist> gtype; typedef std::vector<gtype> gvector; /*   We wish to do mutations under the infinitely-many sites assumption.  That means that   a new mutation cannot appear at any previously-mutated site.  Here, we cheat a little   and do not allow mutations at any sites that are currently polymorphic.    We accomplish this via a lookup table of the current mutation positions.  The function object   KTfwd::equal_eps is used as a replacement for std::operator==(double,double) in order to ensure   that values differing by <= DBL_EPSILON (~10^-17 on most systems) are not allowed, as they cause problems.  */ typedef std::unordered_set<double,std::hash<double>,KTfwd::equal_eps > lookup_table_type; #endif  #ifdef USE_STANDARD_CONTAINERS  #else  #endif  #endif`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
