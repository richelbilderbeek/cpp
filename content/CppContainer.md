

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Container](CppContainer.htm)
==============================================

 

A [container](CppContainer.htm) is a [class type](CppClassType.htm) for
containing zero, one or multiple instances of one or more [data
type](CppDataType.htm)s.

 

Every [container](CppContainer.htm) has its own advantages and
disadvantages. For example a [std::vector](CppVector.htm) has
random-access reading/writing, but new elements can only be added at the
begin and end of the [container](CppContainer.htm). For a
[std::list](CppList.htm), this is the other way around.

 

 

 

 

 

 

[STL](CppStl.htm) [container](CppContainer.htm)s (incomplete list)
------------------------------------------------------------------

 

-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::bitset](CppBitset.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::deque](CppDeque.htm)
-   ![
    ](PicSpacer.png)![C++11](PicCpp11.png)[std::forward\_list](CppForward_list.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::list](CppList.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::map](CppMap.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::multimap](CppMultimap.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::multiset](CppMultiset.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::pair](CppPair.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::priority\_queue](CppPriority_queue.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::set](CppSet.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::slist](CppSlist.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::stack](CppStack.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::string](CppStdString.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::queue](CppQueue.htm)
-   ![
    ](PicSpacer.png)![C++11](PicCpp11.png)[std::unordered\_map](CppUnordered_map.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::valarray](CppValarray.htm)
-   ![C++98](PicCpp98.png)![C++11](PicCpp11.png)[std::vector](CppVector.htm)

 

 

 

 

 

SGI extension [containers](CppContainer.htm) (incomplete list)
--------------------------------------------------------------

 

-   bit\_vector
-   [hash\_set](CppHash_set.htm)
-   hash\_map
-   hash\_multiset
-   hash\_multimap
-   hash
-   rope

 

 

 

 

 

[Boost](CppBoost.htm) [container](CppContainer.htm)s (incomplete list)
----------------------------------------------------------------------

 

-   [boost::any](CppAny.htm)
-   [boost::array](CppBoostArray.htm)
-   boost::compressed\_pair
-   boost::dynamic\_bitset
-   [boost::multi\_array](CppMulti_array.htm)
-   boost::ptr\_array
-   boost::ptr\_deque
-   boost::ptr\_list
-   boost::ptr\_map
-   boost::ptr\_multimap
-   boost::ptr\_multiset
-   [boost::ptr\_set](CppPtr_set.htm)
-   boost::ptr\_vector
-   boost::shared\_array
-   [boost::tuple](CppBoostTuple.htm)
-   boost::variant

 

 

 

 

 

[Container](CppContainer.htm) [code snippets](CppCodeSnippets.htm)
------------------------------------------------------------------

 

-   [ContainerToStr, convert a container to a
    std::string](CppContainerToStr.htm)
-   [Convert a container to a std::string,
    ContainerToStr](CppContainerToStr.htm)
-   [Copy the first element of the std::pairs in a std::vector,
    CopyFirst](CppCopyFirst.htm)
-   [Copy the second element of the std::pairs in a std::vector,
    CopySecond](CppCopySecond.htm)
-   [CopyFirst, copy the first element of the std::pairs in a
    std::vector](CppCopyFirst.htm)
-   [CopySecond, copy the second element of the std::pairs in a
    std::vector](CppCopySecond.htm)
-   [CoutContainer, std::cout a container](CppCoutContainer.htm)
-   [ExtractIds, extract the ID's for a std::vector of
    Persons](CppExtractIds.htm)
-   [Extract the ID's for a std::vector of Persons,
    ExtractIds](CppExtractIds.htm)
-   [Get the mean value of all elements in a container,
    GetMean](CppGetMean.htm)
-   [Get the sum of all elements in a container, GetSum](CppGetSum.htm)
-   [Get the three lowest elements of a container,
    GetMinThree](CppGetMinThree.htm)
-   [GetMean, get the mean value of all elements in a
    container](CppGetMean.htm)
-   [GetMinThree, obtain the three lowest elements of a
    container](CppGetMinThree.htm)
-   [GetSum, get the sum of all elements in a container](CppGetSum.htm)
-   [LoopReader, reading a container looped](CppLoopReader.htm)
-   [Matrix](CppMatrix.htm)
-   [Reading a container looped, LoopReader](CppLoopReader.htm)
-   [Reciprocal, replace all values in a container by their
    reciprocal](CppReciprocal.htm)
-   [Replace all values in a container by their reciprocal,
    Reciprocal](CppReciprocal.htm)
-   [Save a container to file, SaveContainer](CppSaveContainer.htm)
-   [SaveContainer, save a container to file](CppSaveContainer.htm)
-   [std::cout a container, CoutContainer](CppCoutContainer.htm)
-   [Triple all values in a container, Triple](CppTriple.htm)
-   [Triple, triple all values in a container](CppTriple.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   [STL](CppStl.htm) [containers](CppContainer.htm) are resource
    handles \[6\]
-   If a [class](CppClass.htm) is a [container](CppContainer.htm), give
    it an [initializer-list](CppInitializerList.htm)
    [constructor](CppContructor.htm) \[1\]
-   Use [templates](CppTemplate.htm) to express
    [containers](CppContainer.htm) \[2\]
-   An [STL](CppStl.htm) [container](CppContainer.htm) defines a
    sequence \[3\]
-   Use [std::vector](CppVector.htm) as your default
    [container](CppContainer.htm) \[4\]
-   Insertion operators, such as insert() and push\_back() are often
    more efficient on a [std::vector](CppVector.htm) than on a
    [std::list](CppList.htm) \[5\]
-   Pass a [container](CppContainer.htm) by
    [reference](CppReference.htm) and [return](CppReturn.htm) a
    [container](CppContainer.htm) by value \[7\]
-   For a [container](CppContainer.htm), use the ()-syntax for sizes and
    the [list initialization](CppListInitialization.htm) syntax for
    lists of elements \[8\]
-   For simple traversal of a [container](CppContainer.htm), use a
    [range-for](CppRangeFor.htm)-loop or a begin/end pair of
    [iterators](CppIterator.htm) \[9\]
-   Use push\_back() or resize() on a [container](CppContainer.htm),
    rather than [std::realloc](CppRealloc.htm) on an
    [array](CppArray.htm) \[10\]
-   Do not assume that [operator\[\]](CppOperatorIndex.htm) range checks
    \[11\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[8\] If a class is a container, give it an
    initializer-list constructor'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[2\] Use templates to express containers'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[1\] An STL container defines a sequence'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[2\] Use vector as your default container'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[3\] Insertion operators, such as insert()
    and push\_back() are often more efficient on a vector than on a
    list'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[7\] STL containers are resource handles'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[13\] Pass a container by reference and return a
    container by value'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[14\] For a container, use the ()-syntax for
    sizes and the {}-initializer syntax for lists of elements'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[15\] For simple traversal of a container, use a
    range-for-loop or a begin/end pair of iterators'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[20\] Use push\_back() or resize() on a
    container, rather than realloc() on an array'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[23\] Do not assume that \[\] range checks'

Technical facts
---------------

 

 

 

 

 

 

./CppContainer/CppContainer.pri
-------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` INCLUDEPATH += \     ../../Classes/CppContainer  SOURCES += \     ../../Classes/CppContainer/container.cpp  HEADERS  += \     ../../Classes/CppContainer/container.h  OTHER_FILES += \     ../../Classes/CppContainer/Licence.txt`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppContainer/container.h
--------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //--------------------------------------------------------------------------- /* Container, class with container class helper functions Copyright (C) 2013-2015 Richel Bilderbeek  This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.  This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with this program. If not, see <http://www.gnu.org/licenses/>. */ //--------------------------------------------------------------------------- //From http://www.richelbilderbeek.nl/CppContainer.htm //--------------------------------------------------------------------------- #ifndef RIBI_CONTAINER_H #define RIBI_CONTAINER_H  #include <algorithm> #include <set> #include <string> #include <sstream> #include <vector>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs"  #pragma GCC diagnostic pop  namespace ribi {  ///Class with container class helper functions struct Container {   Container();    bool AllAboutEqual(     const std::vector<double>& v,     const double tolerance   ) const noexcept;    ///Concatenate concatenates the strings, with a certain seperator   std::string Concatenate(const std::vector<std::string>& v, const std::string& seperator = "") const noexcept;    ///TODO: Merge with ToStr   std::string ContainerToStr(const std::vector<std::string>& s, const std::string& seperator = " ") const noexcept;    ///Shorthand for std::count(std::begin(t),std::end(t),u)   template <class T, class U>   static int Count(const T& t, const U& u) noexcept   {     return std::count(std::begin(t),std::end(t),u);   }    ///Obtain the version   std::string GetVersion() const noexcept;    ///Obtain the version history   std::vector<std::string> GetVersionHistory() const noexcept;    std::vector<std::string> SeperateString(     const std::string& input,     const char seperator) const noexcept;    template <class T>   static std::string ToStr(const std::set<T>& set) noexcept   {     std::stringstream s;     for (const auto& t: set) { s << t << ","; }     std::string str{s.str()};     if (!str.empty()) { str.pop_back(); }     str = "{" + str + "}";     return str;   }     template <class T>   static std::string ToStr(const std::vector<T>& v) noexcept   {     std::stringstream s;     for (const auto& t: v) { s << t << ","; }     std::string str{s.str()};     if (!str.empty()) { str.pop_back(); }     str = "{" + str + "}";     return str;   }     private:   #ifndef NDEBUG   static void Test() noexcept;   #endif };  } //~namespace ribi  #endif // RIBI_CONTAINER_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppContainer/container.cpp
----------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //--------------------------------------------------------------------------- /* Container, class with container class helper functions Copyright (C) 2013-2015 Richel Bilderbeek  This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.  This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with this program. If not, see <http://www.gnu.org/licenses/>. */ //--------------------------------------------------------------------------- //From http://www.richelbilderbeek.nl/CppContainer.htm //--------------------------------------------------------------------------- #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include "container.h"  #include <boost/algorithm/string/split.hpp> #include <boost/numeric/conversion/cast.hpp>  #include "fuzzy_equal_to.h" #include "testtimer.h" #include "trace.h" #pragma GCC diagnostic pop  template <class Container> std::string ContainerToStrImpl(const Container& c, const std::string& seperator) {   std::stringstream s;   std::copy(c.begin(),c.end(),     std::ostream_iterator<typename Container::value_type>(s,seperator.c_str()));   return s.str(); }  ribi::Container::Container() {   #ifndef NDEBUG   Test();   #endif }  bool ribi::Container::AllAboutEqual(   const std::vector<double>& v,   const double tolerance) const noexcept {   assert(!v.empty());   fuzzy_equal_to f(tolerance);   const double first_value{v[0]};    return std::count_if(     std::begin(v),     std::end(v),     [f,first_value](const double x) { return f(first_value,x); }   )     == boost::numeric_cast<int>(v.size())   ; }  std::string ribi::Container::Concatenate(const std::vector<std::string>& v, const std::string& seperator) const noexcept {   std::stringstream s;   for (const auto& t: v) { s << t << seperator; }   std::string str = s.str();   //Remove seperator   if (!str.empty())   {     str.resize(str.size() - seperator.size());   }   return str; }  std::string ribi::Container::ContainerToStr(   const std::vector<std::string>& s,   const std::string& seperator ) const noexcept {   return ContainerToStrImpl(s,seperator); }   std::string ribi::Container::GetVersion() const noexcept {   return "1.2"; }  std::vector<std::string> ribi::Container::GetVersionHistory() const noexcept {   return {     "2014-xx-xx: Version 1.0: initial version",     "2014-06-14: Version 1.1: added SeperateString"     "2014-07-30: Version 1.2: added Concatenate"   }; }  std::vector<std::string> ribi::Container::SeperateString(   const std::string& input,   const char seperator) const noexcept {   std::vector<std::string> v;   boost::algorithm::split(v,input,     std::bind2nd(std::equal_to<char>(),seperator),     boost::algorithm::token_compress_on);   return v; }  #ifndef NDEBUG void ribi::Container::Test() noexcept {   {     static bool is_tested{false};     if (is_tested) return;     is_tested = true;   }   const TestTimer test_timer(__func__,__FILE__,1.0);   const bool verbose{false};   const Container c;   if (verbose) { TRACE("Concatenate: empty vector with empty seperator must result in an empty string"); }   {     const std::vector<std::string> v{};     const std::string s{c.Concatenate(v,"")};     assert(s.empty());   }   if (verbose) { TRACE("Concatenate: empty vector with longer seperator must result in an empty string"); }   {     const std::vector<std::string> v{};     const std::string s{c.Concatenate(v,"[wont be used]")};     assert(s.empty());   }   if (verbose) { TRACE("Concatenate: vector with one string and empty seperator must result in that string"); }   {     const std::string s{"any string"};     const std::vector<std::string> v{s};     const std::string t{c.Concatenate(v,"")};     assert(s == t);   }   if (verbose) { TRACE("Concatenate: vector with one string and longer seperator must result in that string"); }   {     const std::string s{"any string again"};     const std::vector<std::string> v{s};     const std::string t{c.Concatenate(v,"[wont be used]")};     assert(s == t);   }   if (verbose) { TRACE("Concatenate: vector with two string and empty seperator must result in the summed string"); }   {     const std::string s{"any string"};     const std::string t{"goes on"};     const std::string expected{s+t};     const std::vector<std::string> v{s,t};     const std::string u{c.Concatenate(v,"")};     assert(u == expected);   }   if (verbose) { TRACE("Concatenate: vector with two string and longer seperator must result in the summed string"); }   {     const std::string s{"any string"};     const std::string t{"goes on"};     const std::string seperator{" "};     const std::string expected{s+seperator+t};     const std::vector<std::string> v{s,t};     const std::string u{c.Concatenate(v,seperator)};     assert(u == expected);   }   //SeperateString   {     { //Single input, seperator of type char       const auto v = c.SeperateString("a",',');       assert(v.size() == 1);       assert(v[0]=="a");     }     { //Two inputs, seperator of type char       const auto v = c.SeperateString("a,b",',');       assert(v.size() == 2);       assert(v[0]=="a");       assert(v[1]=="b");     }     {       //Five inputs, seperator of type char       const auto v = c.SeperateString("a,bb,ccc,dddd,eeeee",',');       assert(v.size() == 5);       assert(v[0]=="a");       assert(v[1]=="bb");       assert(v[2]=="ccc");       assert(v[3]=="dddd");       assert(v[4]=="eeeee");     }     { //Three inputs, of which one empty, seperator of type char       const auto v = c.SeperateString("a, ,ccc",',');       assert(v.size() == 3);       assert(v[0]=="a");       assert(v[1]==" ");       assert(v[2]=="ccc");     }   }   //AllAboutEqual   {     std::vector<double> v = { 0.9, 1.0, 1.1 };     assert(c.AllAboutEqual(v,1.0));     assert(!c.AllAboutEqual(v,0.01));   } } #endif`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
