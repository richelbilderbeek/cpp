# [C++](Cpp.md)) [Matrix](CppMatrix.md)

[matrix](CppMatrix.md) is a two-dimensional
[container](CppContainer.md) (that is a [container](CppContainer.md)
in which two values are needed to retrieve an element). For
one-dimensional containers, [go to the container
page](CppContainer.md).

There exists no std::matrix (yet).

Possibilities are:

1.  ![C++98](PicCpp98.png)![STL](PicStl.png) [std::vector](CppStdVector.md)&lt;[std::vector](CppStdVector.md)&lt;**[int](CppInt.md)**&gt; &gt;
2.  ![C++11](PicCpp11.png)![STL](PicStl.png) [std::array](CppStdArray.md)&lt;[std::array](CppStdArray.md)&lt;**[int](CppInt.md)**&gt; &gt;
3.  ![Boost](PicBoost.png) [boost::multi\_array](CppBoostMulti_array.md)
4.  ![Boost](PicBoost.png) [boost::numeric::ublas::matrix](CppUblasMatrix.md)
5.  ![ ](PicSpacer.png)blitz::Array
6.  ![ ](PicSpacer.png)[Techsoft](http://www.techsoftpl.com/matrix)'s matrix
7.  ![ ](PicSpacer.png)Flood::Matrix

These possibilities are described below in more detail.

## ![STL](PicStl.png) [std::vector](CppStdVector.md)&lt;[std::vector](CppStdVector.md)&lt;**[int](CppInt.md)**&gt; &gt;

A [std::vector](CppStdVector.md) can contain a collection of
[std::vector](CppStdVector.md)s. If all [std::vector](CppStdVector.md)s in
this collection are of the same size, one has a matrix.

When using
[std::vector](CppStdVector.md)&lt;[std::vector](CppStdVector.md)&lt;**[int](CppInt.md)**&gt;
&gt; for a two-dimensional matrix, the choice between x-y-ordering or
y-x-ordering must be made. The run-time speed difference does not reside
in individual element read/write, but when obtaining a row or collumn:
in a y-x-ordered
[std::vector](CppStdVector.md)&lt;[std::vector](CppStdVector.md)&lt;**[int](CppInt.md)**&gt;
&gt; an individual row can be obtained, in an x-y-ordered
[std::vector](CppStdVector.md)&lt;[std::vector](CppStdVector.md)&lt;**[int](CppInt.md)**&gt;
&gt; an individual collumn can be obtained.

Below is an example of a y-x-ordered
[std::vector](CppStdVector.md)&lt;[std::vector](CppStdVector.md)&lt;**[int](CppInt.md)**&gt;
&gt;.


```c++
#include <cassert>
#include <vector>

int main()
{
  const int n_rows = 5;
  const int n_cols = 10;
  //Create the y-x-ordered 2D-vector
  std::vector<std::vector<int> > v(n_rows, std::vector<int>(n_cols,0),
  const int y = n_rows - 1;
  const int x = n_cols - 1;
  assert(y < static_cast<int>(v.size()),
  assert(x < static_cast<int>(v[y].size()),
  v[y][x] = 10; //y-x-ordered
}
``` 

### [std::vector](CppStdVector.md)&lt;[std::vector](CppStdVector.md)&lt;[int](CppInt.md)&gt; &gt; [code snippets](CppCodeSnippets.md)

Note that some of these [code snippets](CppCodeSnippets.md) also work
on other [containers](CppContainer.md).

1.  [Convert Matrix&lt;X&gt; to Matrix&lt;Y&gt;, ConvertMatrix](CppConvertMatrix.md)
2.  [Convert std::vector&lt;std::vector&lt;X&gt; &gt; to std::vector&lt;std::vector&lt;Y&gt; &gt;, ConvertMatrix](CppConvertMatrix.md)
3.  [Convert two 2D std::vector&lt;X&gt; to 2D std::vector&lt;Y&gt;, ConvertMatrix](CppConvertMatrix.md)
4.  [ConvertMatrix, convert Matrix&lt;X&gt; to Matrix&lt;Y&gt;](CppConvertMatrix.md)
5.  [ConvertMatrix, convert std::vector&lt;std::vector&lt;X&gt; &gt; to std::vector&lt;std::vector&lt;Y&gt; &gt;](CppConvertMatrix.md)
6.  [ConvertMatrix, convert two 2D std::vector&lt;X&gt; to 2D std::vector&lt;Y&gt;](CppConvertMatrix.md)
7.  [Get the maximal element of a 2D container, MaxElement](CppMaxElement.md)
8.  [Get the minimum element of a 2D container, MinElement](CppMinElement.md)
9.  [Get the sizes of the std::vectors in a 2D std::vector, GetSizes](CppGetSizes.md)
10. [Get the sum of a 2D std::vector, GetSum](CppGetSumMatrix.md)
11. [GetSizes, get the sizes of the std::vectors in a 2D std::vector](CppGetSizes.md)
12. [GetSum, get the sum of a 2D std::vector](CppGetSumMatrix.md)
13. [MaxElement, get the maximal element of a 2D container](CppMaxElement.md)
14. [MinElement, get the minimum element of a 2D container](CppMinElement.md)

## ![Boost](PicBoost.png) [boost::multi\_array](CppBoostMulti_array.md)

The [boost::multi\_array](CppBoostMulti_array.md) (part of the
[Boost](CppBoost.md) library) is not only support a two-dimensional
matrix, but to many more dimensions.

When using [C++ Builder](CppBuilder.md) 6.0, this does not
[compile](CppCompiler.md) (it results in the [compile
error](CppCompileError.md) [borland.hpp: Only member functions may be
'const' or
'volatile'](CppCompileErrorBorlandHppOnlyMemberFunctionsMayBeConstOrVolatile.md)).

## ![Boost](PicBoost.png) [boost::numeric::ublas::matrix](CppUblasMatrix.md)

The [boost::numeric::ublas::matrix](CppUblasMatrix.md) (part of the
[Boost.uBLAS](CppUblas.md) [library](CppLibrary.md)) support a
two-dimensional matrix.

See [boost::numeric::ublas::matrix](CppUblasMatrix.md).

-   ![OKAY](PicGreen.png)![Qt Creator](PicQtCreator.png) In [Qt Creator](CppQtCreator.md) [boost::numeric::ublas::matrix](CppUblasMatrix.md) works fine
-   ![FAIL](PicRed.png)![C++ Builder](PicCppBuilder.png) In [C++ Builder](CppBuilder.md) 6.0, this does not [compile](CppCompiler.md) (it results in the [compile error](CppCompileError.md) [Your compiler and/or configuration is unsupported by this verions of uBLAS](CppCompileErrorYourCompilerAndOrConfigurationIsUnsupportedByThisVerionsOfUblas.md))

## blitz::Array

The blitz::Array (part of the [Blitz++](CppBlitzpp.md)
[library](CppLibrary.md)) is not only support a two-dimensional matrix,
but to many more dimensions.

When using [C++ Builder](CppBuilder.md) 6.0, this does not
[compile](CppCompiler.md) (it results in the [compile
error](CppCompileError.md) [bzconfig.h: Unknown
compiler](CppCompileErrorBzconfigHunknownCompiler.md)).

## [Techsoft](http://www.techsoftpl.com/matrix)'s matrix

[Techsoft](http://www.techsoftpl.com/matrix)'s matrix supports a
x-y-ordered two-dimensional matrix.

```c++ 
#include <cassert>
#include <techsoft/matrix.h>

int main()
{
  const int n_rows = 5;
  const int n_cols = 10;
  math::matrix<int> v(n_rows,n_cols,
  const int y = n_rows - 1;
  const int x = n_cols - 1;
  assert(v(x,y)==0,
  v(x,y) = 10;
  assert(v(x,y)==10,
}
```

## Flood::Matrix

The Flood::Matrix (from the [Flood](CppFlood.md) library) supports a
x-y-ordered two-dimensional matrix.

```c++
#include <cassert>
#include <flood/utilities/matrix.h>
 
int main()
{
  const int n_rows = 5;
  const int n_cols = 10;
  Flood::Matrix<int> v(n_rows,n_cols,
  const int y = n_rows - 1;
  const int x = n_cols - 1;
  assert( x < v.getNumberOfRows(),
  assert( y < v.getNumberOfColumns(),
  assert(v[x][y]==0,
  v[x][y] = 10;
  assert(v[x][y]==10,
}
```

## External links

1.  [Wikipedia page about matrices](http://en.wikipedia.org/wiki/Matrix_%28mathematics%29)
2.  [Boost page about boost::multi\_array](http://www.boost.org/doc/libs/1_42_0/libs/multi_array/doc/index.html)
3.  [Blitz++ homepage](http://www.oonumerics.org/blitz)
4.  [Techsoft homepage](http://www.techsoftpl.com/matrix)

## [References](CppReferences.md)

1.  [Wikipedia page about matrices](http://en.wikipedia.org/wiki/Matrix_%28mathematics%29)
