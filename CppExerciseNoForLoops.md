[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Exercise \#9: No for-loops](CppExerciseNoForLoops.htm)
========================================================================

 

Difficulty: 5/10

Date added: 29th of December 2009

 

In this [exercise](CppExercise.htm), you learn to replace
[for](CppFor.htm)-loops by [algorithms](CppAlgorithm.htm).

 

Reading the literature, one reads:

 

  ----------------------------------------
  ` Prefer algorithms over loops [1][2]`
  ----------------------------------------

 

This is easier said than done.

 

In this exercise you must replace **[for](CppFor.htm)**-loops by using a
combination of all those algorithm things like
[std::for\_each](CppFor_each.htm), [std::transform](CppTransform.htm),
[std::bind1st](CppBind1st.htm), [std::bind2nd](CppBind2nd.htm),
[std::multiplies](CppMultiplies.htm) and more of the likes. It is up to
you to find the correct combination.

 

The exercises are unordered. Some require [Boost](CppBoost.htm), but
will be in **[namespace](CppNamespace.htm)** [std](CppStd.htm) after the
[C++11](Cpp11.htm) standard.

 

 

 

 

 

Table of contents
-----------------

 

-   Question \#0: [Triple](CppTriple.htm)
-   Question \#1: [AddTwo](CppAddTwo.htm)
-   Question \#2: [Multiply](CppMultiply.htm)
-   Question \#3: [Add](CppAdd.htm)
-   Question \#4: Widget::DoIt on Widget
-   Question \#5: Widget::DoItOften on Widget
-   Question \#6: Widget::DoIt on Widget\*
-   Question \#7: Widget::DoItOften on Widget\*
-   Question \#8: [GetSum](CppGetSum.htm)
-   Question \#9: [Product](CppProduct.htm)
-   Question \#10: Widget::DoIt on boost::shared\_ptr&lt;Widget&gt;
-   Question \#11: [ReplaceZeroByOne](CppReplaceZeroByOne.htm)
-   Question \#12: [ReplaceNegativeByZero](CppReplaceNegativeByZero.htm)
-   Question \#13: [MakeAbs](CppMakeAbs.htm)
-   Question \#14: [MakeSquare](CppMakeSquare.htm)
-   Question \#15: [CoutVector](CppCoutVector.htm)
-   Question \#16: [Reciprocal](CppReciprocal.htm)
-   Question \#17: [Halve](CppHalve.htm)
-   Question \#18: [SumPositives](CppSumPositives.htm)
-   Question \#19:
    [ProductNonZeroPositives](CppProductNonZeroPositives.htm)
-   Question \#20: [CountNonZeroPositives](CppCountNonZeroPositives.htm)
-   Question \#21: [CopyFirst](CppCopyFirst.htm)
-   Question \#22: [CopySecond](CppCopySecond.htm)
-   Question \#23: [SumFirst](CppSumFirst.htm)
-   Question \#24: [SumSecond](CppSumSecond.htm)
-   Question \#25: HasMale on std::vector&lt;Person\*&gt;
-   Question \#26: HasFemale on std::vector&lt;Person\*&gt;
-   Question \#27: HasId on std::vector&lt;Person\*&gt;
-   Question \#28: GetMaxId on std::vector&lt;Person\*&gt;
-   Question \#29: GetAllTrue on
    [std::map](CppMap.htm)&lt;**[int](CppInt.htm)**,**[bool](CppBool.htm)**&gt;
-   Question \#30: Get maximum value from
    [std::map](CppMap.htm)&lt;**[const](CppConst.htm)** Person
    \*,**[int](CppInt.htm)**&gt;
-   Question \#31: Find an ID in a
    [std::vector](CppVector.htm)&lt;**[const](CppConst.htm)**
    Person\*&gt;
-   Question \#32: Sum all persons' money from a
    [std::vector](CppVector.htm)&lt;**[const](CppConst.htm)**
    Person\*&gt;
-   See also: [Get the length of the longest
    string](CppGetLongestStringLength.htm)
-   Post your feedback
-   References

 

 

 

 

 

Question \#0: [Triple](CppTriple.htm)
-------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm)
-   [std::for\_each](CppFor_each.htm)
-   [std::multiplies](CppMultiplies.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Triple(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=3;   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer0.htm)

 

 

 

 

 

Question \#1: [AddTwo](CppAddTwo.htm)
-------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::back\_inserter](CppBack_inserter.htm)
-   [std::bind2nd](CppBind2nd.htm)
-   [std::plus](CppPlus.htm)
-   [std::transform](CppTransform.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const std::vector<int> AddTwo(const std::vector<int>& v) {   std::vector<int> v_new(v); //Copy original vector   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v_new[i]+=2;   }   return v_new; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer1.htm)

 

 

 

 

 

Question \#2: [Multiply](CppMultiply.htm)
-----------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm)
-   [std::multiplies](CppMultiplies.htm)
-   [std::transform](CppTransform.htm)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Multiply(std::vector<int>& v, const int x) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=x;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer2.htm)

 

 

 

 

 

Question \#3: [Add](CppAdd.htm)
-------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::back\_inserter](CppBack_inserter.htm)
-   [std::bind2nd](CppBind2nd.htm)
-   [std::plus](CppPlus.htm)
-   [std::transform](CppTransform.htm)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const std::vector<int> Add(const std::vector<int>& v, const int x) {   std::vector<int> v_new(v); //Copy original vector   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v_new[i]+=x;   }   return v_new; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer3.htm)

 

 

 

 

 

Question \#4: Widget::DoIt on Widget
------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::for\_each](CppFor_each.htm)
-   [std::mem\_fun\_ref](CppMem_fun.htm) (or
    [boost::mem\_fn](CppMem_fn.htm))

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };   void DoIt(const std::vector<Widget>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i].DoIt();   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer4.htm)

 

 

 

 

 

Question \#5: Widget::DoItOften on Widget
-----------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm) (or [boost::bind](CppBind.htm))
-   [std::for\_each](CppFor_each.htm)
-   [std::mem\_fun\_ref](CppMem_fun.htm) (or
    [boost::mem\_fn](CppMem_fn.htm))

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget>& v, const int n) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i].DoItOften(n);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer5.htm)

 

 

 

 

 

Question \#6: Widget::DoIt on Widget\*
--------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::for\_each](CppFor_each.htm)
-   [std::mem\_fun](CppMem_fun.htm) (or [boost::mem\_fn](CppMem_fn.htm))

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };   void DoIt(const std::vector<Widget*>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]->DoIt();   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer6.htm)

 

 

 

 

 

Question \#7: Widget::DoItOften on Widget\*
-------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm) (or [boost::bind](CppBind.htm))
-   [std::for\_each](CppFor_each.htm)
-   [std::mem\_fun](CppMem_fun.htm) (or [boost::mem\_fn](CppMem_fn.htm))

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget*>& v, const int n) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]->DoItOften(n);   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer7.htm)

 

 

 

 

 

Question \#8: [GetSum](CppGetSum.htm)
-------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::accumulate](CppAccumulate.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const int GetSum(const std::vector<int>& v) {   const int sz = v.size();   const int sum = 0;   for (int i=0; i!=sz; ++i)   {     sum+=v[i];   }   return sum; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer8.htm)

 

 

 

 

 

Question \#9: [Product](CppProduct.htm)
---------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::accumulate](CppAccumulate.htm)
-   [std::multiplies](CppMultiplies.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const int Product(const std::vector<int>& v) {   const int sz = v.size();   const int product = 1;   for (int i=0; i!=sz; ++i)   {     product*=v[i];   }   return product; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer9.htm)

 

 

 

 

 

Question \#10: Widget::DoIt on boost::shared\_ptr&lt;Widget&gt;
---------------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::for\_each](CppFor_each.htm)
-   [boost::mem\_fn](CppMem_fn.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/shared_ptr.hpp>   struct Widget {   void DoIt() const { /* do it */ } };   void DoIt(const std::vector<boost::shared_ptr<Widget> >& v) {   const std::size_t sz = v.size();   for (std::size_t i=0; i!=sz; ++i)   {     v[i]->DoIt();   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer10.htm)

 

 

 

 

 

Question \#11: [ReplaceZeroByOne](CppReplaceZeroByOne.htm)
----------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::replace](CppReplace.htm) (or
    [std::replace\_if](CppReplace_if.htm) with
    [std::bind2nd](CppBind2nd.htm))

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void ReplaceZeroByOne(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     if(v[i]==0) v[i]=1;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer11.htm)

 

 

 

 

 

Question \#12: [ReplaceNegativeByZero](CppReplaceNegativeByZero.htm)
--------------------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm)
-   [std::less](CppLess.htm)
-   [std::replace\_if](CppReplace_if.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void ReplaceNegativeByZero(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     if(v[i]<0) v[i]=0;   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer12.htm)

 

 

 

 

 

Question \#13: [MakeAbs](CppMakeAbs.htm)
----------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::transform](CppTransform.htm)
-   your own [std::unary\_function](CppUnary_function.htm)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>   void MakeAbs(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i] = std::abs(v[i]);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer13.htm)

 

 

 

 

 

Question \#14: [MakeSquare](CppMakeSquare.htm)
----------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::transform](CppTransform.htm)
-   your own [std::unary\_function](CppUnary_function.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void MakeSquare(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=v[i];   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer14.htm)

 

 

 

 

 

Question \#15: [CoutVector](CppCoutVector.htm)
----------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::copy](CppCopy.htm)
-   [std::ostream\_iterator](CppOstream_iterator.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void CoutVector(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     std::cout << v[i] << '\n';    } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer15.htm)

 

 

 

 

 

Question \#16: [Reciprocal](CppReciprocal.htm)
----------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind1st](CppBind1st.htm)
-   [std::divides](CppDivides.htm)
-   [std::transform](CppTransform.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Reciprocal(std::vector<double>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]=1.0/v[i];   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer16.htm)

 

 

 

 

 

Question \#17: [Halve](CppHalve.htm)
------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm)
-   [std::divides](CppDivides.htm)
-   [std::transform](CppTransform.htm)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Halve(std::vector<double>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]/=2.0;   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer17.htm)

 

 

 

 

 

Question \#18: [SumPositives](CppSumPositives.htm)
--------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::greater](CppGreater.htm)
-   A conditional [std::accumulate](CppAccumulate.htm)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int SumPositives(const std::vector<int>& v) {   const size_t sz = v.size();   int sum = 0;   for (size_t i=0; i!=sz; ++i)   {     if (v[i]>0) sum+=v[i];   }   return sum; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer18.htm)

 

 

 

 

 

Question \#19: [ProductNonZeroPositives](CppProductNonZeroPositives.htm)
------------------------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm)
-   [std::greater](CppGreater.htm)
-   [std::multiplies](CppMultiplies.htm)
-   A conditional [std::accumulate](CppAccumulate.htm)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int ProductNonZeroPositives(const std::vector<int>& v) {   const size_t sz = v.size();   int product = 0;   for (size_t i=0; i!=sz; ++i)   {     if (v[i]>0) product*=v[i];   }   return product; } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer19.htm)

 

 

 

 

 

Question \#20: [CountNonZeroPositives](CppCountNonZeroPositives.htm)
--------------------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm)
-   [std::count\_if](CppCount_if.htm)
-   [std::greater](CppGreater.htm)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  int CountNonZeroPositives(const std::vector<int>& v) {   int sum = 0;   const size_t sz = v.size();   for (size_t i = 0; i!=sz; ++i)   {     if (v[i]>0) sum+=v[i];   } } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer20.htm)

 

 

 

 

 

Question \#21: [CopyFirst](CppCopyFirst.htm)
--------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  ///CopyFirst copies the first std::pair elements from a std::vector of std::pairs //From http://www.richelbilderbeek.nl/CppCopyFirst.htm template <class T, class U> const std::vector<T> CopyFirst(const std::vector<std::pair<T,U> >& v) {   std::vector<T> w;   const int size = static_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     w.push_back(v[i].first);   }   return w; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer21.htm)

 

 

 

 

 

Question \#22: [CopySecond](CppCopySecond.htm)
----------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  ///CopySecond copies the second std::pair elements from a std::vector of std::pairs //From http://www.richelbilderbeek.nl/CppCopySecond.htm template <class T, class U> const std::vector<U> CopySecond(const std::vector<std::pair<T,U> >& v) {   std::vector<U> w;   const int size = static_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     w.push_back(v[i].second);   }   return w; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer22.htm)

 

 

 

 

 

Question \#23: [SumFirst](CppSumFirst.htm)
------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)
-   [std::plus](CppPlus.htm)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int SumFirst(const std::vector<std::pair<int,int> >& v) {   const int size = static_cast<int>(v.size());   int sum = 0;   for (int i=0; i!=size; ++i)   {     sum+=v[i].first;   }   return sum; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer23.htm)

 

 

 

 

 

Question \#24: [SumSecond](CppSumSecond.htm)
--------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)
-   [std::plus](CppPlus.htm)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int SumSecond(const std::vector<std::pair<int,int> >& v) {   const int size = static_cast<int>(v.size());   int sum = 0;   for (int i=0; i!=size; ++i)   {     sum+=v[i].second;   }   return sum; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer24.htm)

 

 

 

 

 

Question \#25: HasMale on std::vector&lt;Person\*&gt;
-----------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/numeric/conversion/cast.hpp>  struct Person {   Person(const bool is_male) : m_is_male(is_male) {}   bool IsMale() const { return m_is_male; }   const bool m_is_male; };  bool HasMale(const std::vector<const Person *>& v) {   const int size = boost::numeric_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     if (v[i]->IsMale()) return true;   }   return false; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer25.htm)

 

 

 

 

 

Question \#26: HasFemale on std::vector&lt;Person\*&gt;
-------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)
-   [std::not](CppNot.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/numeric/conversion/cast.hpp>  struct Person {   Person(const bool is_male) : m_is_male(is_male) {}   bool IsMale() const { return m_is_male; }   const bool m_is_male; };   bool HasFemale(const std::vector<const Person *>& v) {   const int size = boost::numeric_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     if (!v[i]->IsMale()) return true;   }   return false; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer26.htm)

 

 

 

 

 

Question \#27: HasId on std::vector&lt;Person\*&gt;
---------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/numeric/conversion/cast.hpp>  struct Person {   Person(const int id) : m_id(id) {}   int GetId() const { return m_id; }   const int m_id; };   bool HasId(const std::vector<const Person *>& v, const int id) {   const int size = boost::numeric_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     if (v[i]->GetId() == id) return true;   }   return false; } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer27.htm)

 

 

 

 

 

Question \#28: GetMaxId on std::vector&lt;Person\*&gt;
------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector> #include <boost/numeric/conversion/cast.hpp>  struct Person {   Person(const int id) : m_id(id) {}   int GetId() const { return m_id; }   const int m_id; };  const Person * GetMaxId(const std::vector<const Person *>& v) {   assert(!v.empty());   const int size = boost::numeric_cast<int>(v.size());   int max_id = v[0]->GetId();   int index_max_id = 0;   for (int i=1; i!=size; ++i)   {     const int id = v[i]->GetId();     if (id > max_id)     {       max_id = id;       index_max_id = i;     }   }   return v[index_max_id]; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer28.htm)

 

 

 

 

 

Question \#29: GetAllTrue on [std::map](CppMap.htm)&lt;**[int](CppInt.htm)**,**[bool](CppBool.htm)**&gt;
--------------------------------------------------------------------------------------------------------

 

Replace the [BOOST\_FOREACH](CppBOOST_FOREACH.htm). You will need:

-   [boost::bind](CppBind.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <map> #include <boost/foreach.hpp>  ///Returns true if all bools are true bool GetAllTrue(const std::map<int,bool>& v) {   assert(!v.empty());   typedef std::pair<int,bool> Pair;   BOOST_FOREACH(const Pair& p,v)   {     if (p.second == false) return false;   }   return true; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer29.htm)

 

 

 

 

 

Question \#30: Get maximum value from [std::map](CppMap.htm)&lt;**[const](CppConst.htm)** Person \*,**[int](CppInt.htm)**&gt;
-----------------------------------------------------------------------------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <limits> #include <map> #include <boost/foreach.hpp>  struct Person { };  const Person * GetPersonWithMaxIdStl(const std::map<const Person *,int>& v) {   assert(!v.empty());   int max_id =  std::numeric_limits<int>::min();   const Person * ptr = 0;   typedef std::pair<const Person *,int> Pair;   BOOST_FOREACH(const Pair& p,v)   {     if (p.second > max_id)     {       max_id = p.second;       ptr = p.first;     }   }   assert(ptr);   return ptr; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer30.htm)

 

 

 

 

 

Question \#31: Find an ID in a [std::vector](CppVector.htm)&lt;**[const](CppConst.htm)** Person\*&gt;
-----------------------------------------------------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  struct Id {   Id(const int id) : m_id(id) { }   int Get() const { return m_id; }   private:   int m_id; };  struct Person {   Person(const int id) : m_id(new Id(id)) {}   const Id * GetId() const { return m_id.get(); }   private:   boost::scoped_ptr<Id> m_id; };  bool IsIdTaken(const std::vector<const Person*>& v, const int id) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     if (v[i]->GetId()->Get() == id) return true;   }   return false; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer31.htm)

 

 

 

 

 

Question \#32: Sum all persons' money from a [std::vector](CppVector.htm)&lt;**[const](CppConst.htm)** Person\*&gt;
-------------------------------------------------------------------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::accumulate](CppAccumulate.htm)
-   [boost::bind](CppBind.htm)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  struct Person {   Person(const int money) : m_money(money) {}   int GetMoney() const { return m_money; }   private:   int m_money; };  int SumMoney(const std::vector<const Person*>& v) {   int sum = 0;   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     sum+=v[i]->GetMoney();   }   return sum; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer32.htm)

 

 

 

 

 

Post your feedback
------------------

 

Feel free to post your feedback about this exercise at [Programmer's
Heaven](http://www.programmersheaven.com/article/104501-C%2b%2b+exercise%3a+no+for-loops/info.aspx).

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The [C++](Cpp.htm)
    Programming Language (3rd edition). ISBN: 0-201-88954-4. Chapter
    18.12.1 : 'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). [C++](Cpp.htm) coding
    standards: 101 rules, guidelines, and best practices.
    ISBN: 0-32-111358-6. Chapter 84: 'Prefer algorithm calls to
    handwritten loops.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
