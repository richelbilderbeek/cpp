

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [TwoDigitNewick algorithm](CppTwoDigitNewickAlgorithm.htm)
===========================================================================

 

This page describes the [algorith](CppAlgorithm.htm) as used in the
TwoDitNewick class.

 

 

 

 

 

1. Definitions
--------------

 

A 'simple Newick' denotes a Newick with two (or more) final branches,
that is, a Newick in the form of '(X,Y,...)' (where all values are
positive non-zero values), for example '(2,2)'. A 'complex newick' is a
Newick that has branched with branches, that is a Newick in the form of
((X,Y),Z) (where X,Y and Z might be positive non-zero values or complex
Newicks), for example '((2,2),2)'.

 

N1 denotes the Newick we want its probability calculated:

 

  -------------------
  ` N1 = ((2,2),2)`
  -------------------

 

L1 denotes the largest simple Newick found within the complex Newick N1:

 

  ---------------
  ` L1 = (2,2)`
  ---------------

 

A 'partially summizarized Newick', is a complex Newick that has one of
its branches summarized, where the other branch contains an unsummarized
value. In the example below, the Newick ((2,2),2)' becomes the partially
summarized Newick '(8,2)', in which '8' is the summarized index of
'(2,2)'. A 'completely summarized Newick' is a Newick that has both
branches summarized. For example, the Newick ((2,2),(2,2)) becomes the
completely summarized Newick '(8,8)'.

 

 

 

 

 

2. Index all simple Newicks
---------------------------

 

In this step all simple Newicks that will be encountered in the whole
algorithm are indexed.

 

L1, the largest simple Newick found within N1, and its derivatives
(which are all simple Newicks) are indexed:

 

Newick

Index

(0)

0

(1)

1

(2)

2

(3)

3

(4)

4

(5)

5

(2,2)

6

(2,1)

7

(1,1)

8

 

Note that the indices are perhaps not ordered as expected. The values of
these indices, however, do not matter: these are just identifiers for
the Newicks.

 

The indices for the single-value Newicks must be indentical to the

The highest index of the Newicks stored must be remembered. In this
case, an index of 5 or lower denotes a simple Newick. This value is
called *n\_reserved*.

 

 

 

 

 

3. summarize the complex Newick
-------------------------------

 

In this step, the simple Newicks in N1 are replaced by their indices in
the complex Newick.

 

  ----------------------------
  ` N1 = ((2,2),2) -> (2,6)`
  ----------------------------

 

In this example, this yields a partially summarized Newick, because the
value of '2' denotes '2', where the value of '6' denotes '(2,2)'.
Knowing if a value is itself or a summary of others is done by comparing
it to n\_reserved: all values below it (in this case the value of 6) are
known to be themselves.

 

 

 

 

 

4. Deriving Newicks from this
-----------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
