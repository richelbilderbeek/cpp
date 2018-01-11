
 

 

 

 

 

([C++](Cpp.md)) [Exercise \#9: No for-loops](CppExerciseNoForLoops.md)
========================================================================

 

Difficulty: 5/10

Date added: 29th of December 2009

 

In this [exercise](CppExercise.md), you learn to replace
[for](CppFor.md)-loops by [algorithms](CppAlgorithm.md).

 

Reading the literature, one reads:

 

  ----------------------------------------
  ` Prefer algorithms over loops [1][2]`
  ----------------------------------------

 

This is easier said than done.

 

In this exercise you must replace **[for](CppFor.md)**-loops by using a
combination of all those algorithm things like
[std::for\_each](CppStdFor_each.md), [std::transform](CppStdTransform.md),
[std::bind1st](CppStdBind1st.md), [std::bind2nd](CppStdBind2nd.md),
[std::multiplies](CppStdMultiplies.md) and more of the likes. It is up to
you to find the correct combination.

 

The exercises are unordered. Some require [Boost](CppBoost.md), but
will be in **[namespace](CppNamespace.md)** [std](CppStd.md) after the
[C++11](Cpp11.md) standard.

 

 

 

 

 

Table of contents
-----------------

 

-   Question \#0: [Triple](CppTriple.md)
-   Question \#1: [AddTwo](CppAddTwo.md)
-   Question \#2: [Multiply](CppMultiply.md)
-   Question \#3: [Add](CppAdd.md)
-   Question \#4: Widget::DoIt on Widget
-   Question \#5: Widget::DoItOften on Widget
-   Question \#6: Widget::DoIt on Widget\*
-   Question \#7: Widget::DoItOften on Widget\*
-   Question \#8: [GetSum](CppGetSum.md)
-   Question \#9: [Product](CppProduct.md)
-   Question \#10: Widget::DoIt on boost::shared\_ptr&lt;Widget&gt;
-   Question \#11: [ReplaceZeroByOne](CppReplaceZeroByOne.md)
-   Question \#12: [ReplaceNegativeByZero](CppReplaceNegativeByZero.md)
-   Question \#13: [MakeAbs](CppMakeAbs.md)
-   Question \#14: [MakeSquare](CppMakeSquare.md)
-   Question \#15: [CoutVector](CppCoutVector.md)
-   Question \#16: [Reciprocal](CppReciprocal.md)
-   Question \#17: [Halve](CppHalve.md)
-   Question \#18: [SumPositives](CppSumPositives.md)
-   Question \#19:
    [ProductNonZeroPositives](CppProductNonZeroPositives.md)
-   Question \#20: [CountNonZeroPositives](CppCountNonZeroPositives.md)
-   Question \#21: [CopyFirst](CppCopyFirst.md)
-   Question \#22: [CopySecond](CppCopySecond.md)
-   Question \#23: [SumFirst](CppSumFirst.md)
-   Question \#24: [SumSecond](CppSumSecond.md)
-   Question \#25: HasMale on std::vector&lt;Person\*&gt;
-   Question \#26: HasFemale on std::vector&lt;Person\*&gt;
-   Question \#27: HasId on std::vector&lt;Person\*&gt;
-   Question \#28: GetMaxId on std::vector&lt;Person\*&gt;
-   Question \#29: GetAllTrue on
    [std::map](CppStdMap.md)&lt;**[int](CppInt.md)**,**[bool](CppBool.md)**&gt;
-   Question \#30: Get maximum value from
    [std::map](CppStdMap.md)&lt;**[const](CppConst.md)** Person
    \*,**[int](CppInt.md)**&gt;
-   Question \#31: Find an ID in a
    [std::vector](CppStdVector.md)&lt;**[const](CppConst.md)**
    Person\*&gt;
-   Question \#32: Sum all persons' money from a
    [std::vector](CppStdVector.md)&lt;**[const](CppConst.md)**
    Person\*&gt;
-   See also: [Get the length of the longest
    string](CppGetLongestStringLength.md)
-   Post your feedback
-   References

 

 

 

 

 

Question \#0: [Triple](CppTriple.md)
-------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md)
-   [std::for\_each](CppStdFor_each.md)
-   [std::multiplies](CppStdMultiplies.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Triple(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=3;   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer0.md)

 

 

 

 

 

Question \#1: [AddTwo](CppAddTwo.md)
-------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::back\_inserter](CppStdBack_inserter.md)
-   [std::bind2nd](CppStdBind2nd.md)
-   [std::plus](CppStdPlus.md)
-   [std::transform](CppStdTransform.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const std::vector<int> AddTwo(const std::vector<int>& v) {   std::vector<int> v_new(v); //Copy original vector   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v_new[i]+=2;   }   return v_new; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer1.md)

 

 

 

 

 

Question \#2: [Multiply](CppMultiply.md)
-----------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md)
-   [std::multiplies](CppStdMultiplies.md)
-   [std::transform](CppStdTransform.md)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Multiply(std::vector<int>& v, const int x) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=x;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer2.md)

 

 

 

 

 

Question \#3: [Add](CppAdd.md)
-------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::back\_inserter](CppStdBack_inserter.md)
-   [std::bind2nd](CppStdBind2nd.md)
-   [std::plus](CppStdPlus.md)
-   [std::transform](CppStdTransform.md)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const std::vector<int> Add(const std::vector<int>& v, const int x) {   std::vector<int> v_new(v); //Copy original vector   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v_new[i]+=x;   }   return v_new; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer3.md)

 

 

 

 

 

Question \#4: Widget::DoIt on Widget
------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::for\_each](CppStdFor_each.md)
-   [std::mem\_fun\_ref](CppStdMem_fun.md) (or
    [boost::mem\_fn](CppStdMem_fn.md))

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };   void DoIt(const std::vector<Widget>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i].DoIt();   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer4.md)

 

 

 

 

 

Question \#5: Widget::DoItOften on Widget
-----------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md) (or [boost::bind](CppStdBind.md))
-   [std::for\_each](CppStdFor_each.md)
-   [std::mem\_fun\_ref](CppStdMem_fun.md) (or
    [boost::mem\_fn](CppStdMem_fn.md))

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget>& v, const int n) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i].DoItOften(n);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer5.md)

 

 

 

 

 

Question \#6: Widget::DoIt on Widget\*
--------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::for\_each](CppStdFor_each.md)
-   [std::mem\_fun](CppStdMem_fun.md) (or [boost::mem\_fn](CppStdMem_fn.md))

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };   void DoIt(const std::vector<Widget*>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]->DoIt();   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer6.md)

 

 

 

 

 

Question \#7: Widget::DoItOften on Widget\*
-------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md) (or [boost::bind](CppStdBind.md))
-   [std::for\_each](CppStdFor_each.md)
-   [std::mem\_fun](CppStdMem_fun.md) (or [boost::mem\_fn](CppStdMem_fn.md))

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget*>& v, const int n) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]->DoItOften(n);   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer7.md)

 

 

 

 

 

Question \#8: [GetSum](CppGetSum.md)
-------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::accumulate](CppStdAccumulate.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const int GetSum(const std::vector<int>& v) {   const int sz = v.size();   const int sum = 0;   for (int i=0; i!=sz; ++i)   {     sum+=v[i];   }   return sum; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer8.md)

 

 

 

 

 

Question \#9: [Product](CppProduct.md)
---------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::accumulate](CppStdAccumulate.md)
-   [std::multiplies](CppStdMultiplies.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const int Product(const std::vector<int>& v) {   const int sz = v.size();   const int product = 1;   for (int i=0; i!=sz; ++i)   {     product*=v[i];   }   return product; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this exercise](CppExerciseNoForLoopsAnswer9.md)

 

 

 

 

 

Question \#10: Widget::DoIt on boost::shared\_ptr&lt;Widget&gt;
---------------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::for\_each](CppStdFor_each.md)
-   [boost::mem\_fn](CppStdMem_fn.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/shared_ptr.hpp>   struct Widget {   void DoIt() const { /* do it */ } };   void DoIt(const std::vector<boost::shared_ptr<Widget> >& v) {   const std::size_t sz = v.size();   for (std::size_t i=0; i!=sz; ++i)   {     v[i]->DoIt();   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer10.md)

 

 

 

 

 

Question \#11: [ReplaceZeroByOne](CppReplaceZeroByOne.md)
----------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::replace](CppReplace.md) (or
    [std::replace\_if](CppReplace_if.md) with
    [std::bind2nd](CppStdBind2nd.md))

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void ReplaceZeroByOne(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     if(v[i]==0) v[i]=1;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer11.md)

 

 

 

 

 

Question \#12: [ReplaceNegativeByZero](CppReplaceNegativeByZero.md)
--------------------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md)
-   [std::less](CppStdLess.md)
-   [std::replace\_if](CppReplace_if.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void ReplaceNegativeByZero(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     if(v[i]<0) v[i]=0;   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer12.md)

 

 

 

 

 

Question \#13: [MakeAbs](CppMakeAbs.md)
----------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::transform](CppStdTransform.md)
-   your own [std::unary\_function](CppUnary_function.md)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>   void MakeAbs(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i] = std::abs(v[i]);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer13.md)

 

 

 

 

 

Question \#14: [MakeSquare](CppMakeSquare.md)
----------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::transform](CppStdTransform.md)
-   your own [std::unary\_function](CppUnary_function.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void MakeSquare(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=v[i];   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer14.md)

 

 

 

 

 

Question \#15: [CoutVector](CppCoutVector.md)
----------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::copy](CppStdCopy.md)
-   [std::ostream\_iterator](CppStdOstream_iterator.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void CoutVector(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     std::cout << v[i] << '\n';    } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer15.md)

 

 

 

 

 

Question \#16: [Reciprocal](CppReciprocal.md)
----------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind1st](CppStdBind1st.md)
-   [std::divides](CppStdDivides.md)
-   [std::transform](CppStdTransform.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Reciprocal(std::vector<double>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]=1.0/v[i];   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer16.md)

 

 

 

 

 

Question \#17: [Halve](CppHalve.md)
------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md)
-   [std::divides](CppStdDivides.md)
-   [std::transform](CppStdTransform.md)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Halve(std::vector<double>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]/=2.0;   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer17.md)

 

 

 

 

 

Question \#18: [SumPositives](CppSumPositives.md)
--------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::greater](CppStdGreater.md)
-   A conditional [std::accumulate](CppStdAccumulate.md)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int SumPositives(const std::vector<int>& v) {   const size_t sz = v.size();   int sum = 0;   for (size_t i=0; i!=sz; ++i)   {     if (v[i]>0) sum+=v[i];   }   return sum; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer18.md)

 

 

 

 

 

Question \#19: [ProductNonZeroPositives](CppProductNonZeroPositives.md)
------------------------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md)
-   [std::greater](CppStdGreater.md)
-   [std::multiplies](CppStdMultiplies.md)
-   A conditional [std::accumulate](CppStdAccumulate.md)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int ProductNonZeroPositives(const std::vector<int>& v) {   const size_t sz = v.size();   int product = 0;   for (size_t i=0; i!=sz; ++i)   {     if (v[i]>0) product*=v[i];   }   return product; } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer19.md)

 

 

 

 

 

Question \#20: [CountNonZeroPositives](CppCountNonZeroPositives.md)
--------------------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md)
-   [std::count\_if](CppCount_if.md)
-   [std::greater](CppStdGreater.md)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  int CountNonZeroPositives(const std::vector<int>& v) {   int sum = 0;   const size_t sz = v.size();   for (size_t i = 0; i!=sz; ++i)   {     if (v[i]>0) sum+=v[i];   } } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer20.md)

 

 

 

 

 

Question \#21: [CopyFirst](CppCopyFirst.md)
--------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  ///CopyFirst copies the first std::pair elements from a std::vector of std::pairs //From http://www.richelbilderbeek.nl/CppCopyFirst.htm template <class T, class U> const std::vector<T> CopyFirst(const std::vector<std::pair<T,U> >& v) {   std::vector<T> w;   const int size = static_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     w.push_back(v[i].first);   }   return w; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer21.md)

 

 

 

 

 

Question \#22: [CopySecond](CppCopySecond.md)
----------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  ///CopySecond copies the second std::pair elements from a std::vector of std::pairs //From http://www.richelbilderbeek.nl/CppCopySecond.htm template <class T, class U> const std::vector<U> CopySecond(const std::vector<std::pair<T,U> >& v) {   std::vector<U> w;   const int size = static_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     w.push_back(v[i].second);   }   return w; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer22.md)

 

 

 

 

 

Question \#23: [SumFirst](CppSumFirst.md)
------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)
-   [std::plus](CppStdPlus.md)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int SumFirst(const std::vector<std::pair<int,int> >& v) {   const int size = static_cast<int>(v.size());   int sum = 0;   for (int i=0; i!=size; ++i)   {     sum+=v[i].first;   }   return sum; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer23.md)

 

 

 

 

 

Question \#24: [SumSecond](CppSumSecond.md)
--------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)
-   [std::plus](CppStdPlus.md)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int SumSecond(const std::vector<std::pair<int,int> >& v) {   const int size = static_cast<int>(v.size());   int sum = 0;   for (int i=0; i!=size; ++i)   {     sum+=v[i].second;   }   return sum; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer24.md)

 

 

 

 

 

Question \#25: HasMale on std::vector&lt;Person\*&gt;
-----------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/numeric/conversion/cast.hpp>  struct Person {   Person(const bool is_male) : m_is_male(is_male) {}   bool IsMale() const { return m_is_male; }   const bool m_is_male; };  bool HasMale(const std::vector<const Person *>& v) {   const int size = boost::numeric_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     if (v[i]->IsMale()) return true;   }   return false; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer25.md)

 

 

 

 

 

Question \#26: HasFemale on std::vector&lt;Person\*&gt;
-------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)
-   [std::not](CppNot.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/numeric/conversion/cast.hpp>  struct Person {   Person(const bool is_male) : m_is_male(is_male) {}   bool IsMale() const { return m_is_male; }   const bool m_is_male; };   bool HasFemale(const std::vector<const Person *>& v) {   const int size = boost::numeric_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     if (!v[i]->IsMale()) return true;   }   return false; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer26.md)

 

 

 

 

 

Question \#27: HasId on std::vector&lt;Person\*&gt;
---------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <boost/numeric/conversion/cast.hpp>  struct Person {   Person(const int id) : m_id(id) {}   int GetId() const { return m_id; }   const int m_id; };   bool HasId(const std::vector<const Person *>& v, const int id) {   const int size = boost::numeric_cast<int>(v.size());   for (int i=0; i!=size; ++i)   {     if (v[i]->GetId() == id) return true;   }   return false; } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer27.md)

 

 

 

 

 

Question \#28: GetMaxId on std::vector&lt;Person\*&gt;
------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector> #include <boost/numeric/conversion/cast.hpp>  struct Person {   Person(const int id) : m_id(id) {}   int GetId() const { return m_id; }   const int m_id; };  const Person * GetMaxId(const std::vector<const Person *>& v) {   assert(!v.empty());   const int size = boost::numeric_cast<int>(v.size());   int max_id = v[0]->GetId();   int index_max_id = 0;   for (int i=1; i!=size; ++i)   {     const int id = v[i]->GetId();     if (id > max_id)     {       max_id = id;       index_max_id = i;     }   }   return v[index_max_id]; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer28.md)

 

 

 

 

 

Question \#29: GetAllTrue on [std::map](CppStdMap.md)&lt;**[int](CppInt.md)**,**[bool](CppBool.md)**&gt;
--------------------------------------------------------------------------------------------------------

 

Replace the [BOOST\_FOREACH](CppBOOST_FOREACH.md). You will need:

-   [boost::bind](CppStdBind.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <map> #include <boost/foreach.hpp>  ///Returns true if all bools are true bool GetAllTrue(const std::map<int,bool>& v) {   assert(!v.empty());   typedef std::pair<int,bool> Pair;   BOOST_FOREACH(const Pair& p,v)   {     if (p.second == false) return false;   }   return true; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer29.md)

 

 

 

 

 

Question \#30: Get maximum value from [std::map](CppStdMap.md)&lt;**[const](CppConst.md)** Person \*,**[int](CppInt.md)**&gt;
-----------------------------------------------------------------------------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <limits> #include <map> #include <boost/foreach.hpp>  struct Person { };  const Person * GetPersonWithMaxIdStl(const std::map<const Person *,int>& v) {   assert(!v.empty());   int max_id =  std::numeric_limits<int>::min();   const Person * ptr = 0;   typedef std::pair<const Person *,int> Pair;   BOOST_FOREACH(const Pair& p,v)   {     if (p.second > max_id)     {       max_id = p.second;       ptr = p.first;     }   }   assert(ptr);   return ptr; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer30.md)

 

 

 

 

 

Question \#31: Find an ID in a [std::vector](CppStdVector.md)&lt;**[const](CppConst.md)** Person\*&gt;
-----------------------------------------------------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  struct Id {   Id(const int id) : m_id(id) { }   int Get() const { return m_id; }   private:   int m_id; };  struct Person {   Person(const int id) : m_id(new Id(id)) {}   const Id * GetId() const { return m_id.get(); }   private:   boost::scoped_ptr<Id> m_id; };  bool IsIdTaken(const std::vector<const Person*>& v, const int id) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     if (v[i]->GetId()->Get() == id) return true;   }   return false; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer31.md)

 

 

 

 

 

Question \#32: Sum all persons' money from a [std::vector](CppStdVector.md)&lt;**[const](CppConst.md)** Person\*&gt;
-------------------------------------------------------------------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::accumulate](CppStdAccumulate.md)
-   [boost::bind](CppStdBind.md)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  struct Person {   Person(const int money) : m_money(money) {}   int GetMoney() const { return m_money; }   private:   int m_money; };  int SumMoney(const std::vector<const Person*>& v) {   int sum = 0;   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     sum+=v[i]->GetMoney();   }   return sum; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [View the answer of this
    exercise](CppExerciseNoForLoopsAnswer32.md)

 

 

 

 

 

Post your feedback
------------------

 

Feel free to post your feedback about this exercise at [Programmer's
Heaven](http://www.programmersheaven.com/article/104501-C%2b%2b+exercise%3a+no+for-loops/info.aspx).

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The [C++](Cpp.md)
    Programming Language (3rd edition). ISBN: 0-201-88954-4. Chapter
    18.12.1 : 'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). [C++](Cpp.md) coding
    standards: 101 rules, guidelines, and best practices.
    ISBN: 0-32-111358-6. Chapter 84: 'Prefer algorithm calls to
    handwritten loops.'

 

 

 

 

 

 

