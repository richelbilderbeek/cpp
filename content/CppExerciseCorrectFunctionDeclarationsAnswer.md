
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#2: correct function declarations](CppExerciseCorrectFunctionDeclarationsAnswer.md)
==========================================================================================================================

 

This is the answer of [Exercise \#2: correct function
declarations](CppExerciseCorrectFunctionDeclarations.md).

 

0) Get the number of rows in a database
---------------------------------------

 

  ------------------------------------------------------
  ` const int GetRows(const Database d); //Incorrect!`
  ------------------------------------------------------

 

This function probably only read from a Database (due to the [const
argument](CppConstArgument.md)). But instead of reading from the
original database, a (probably expensive) copy of the database is passed
into the function. This makes the answer:

 

  ------------------------------------------
  ` const int GetRows(const Database& d);`
  ------------------------------------------

 

 

 

 

 

1) [Declare](CppDeclaration.md) the [main](CppMain.md) [function](CppFunction.md)
------------------------------------------------------------------------------------

 

  ------------------------------
  ` void main(); //Incorrect!`
  ------------------------------

 

[main](CppMain.md) has return type [int](CppInt.md) \[1-5\].

 

  -----------------
  ` int  main();`
  -----------------

 

 

 

 

 

2) Set a value in a y-x-ordered 2D-vector
-----------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------
  ` //Incorrect! void Set(std::vector<std::vector<double> >& v, const int y, const int x, const double value);`
  ---------------------------------------------------------------------------------------------------------------

 

 

Humans tend to think 'x-y-ordered' instead of 'y-x-ordered', probably
because x is before y in the alphabet. It is therefore 'funny' to let a
function's arguments be y-x-ordered. Even if the two-dimensional
std::vector is y-x-ordered, it is more natural/human to first pass an x,
then a y.

 

  --------------------------------------------------------------------------------------------------
  ` void Set(std::vector<std::vector<double> >& v, const int x, const int y, const double value);`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

 

3) Get the sum of a std::vector
-------------------------------

 

  ----------------------------------------------------
  ` const int Sum(std::vector<int> v); //Incorrect!`
  ----------------------------------------------------

 

Even worse then item \#0: calculating the sum of a std::vector implies
only reading from it (thus, a const argument is required) without
wanting to make a possibly expensive copy (thus, the std::vector must be
given by reference).

 

  ----------------------------------------------
  ` const int Sum(const std::vector<int>& v);`
  ----------------------------------------------

 

 

 

 

 

4) Swap two values
------------------

 

  ------------------------------------------------
  ` const int Swap(int& a, int& b); //Incorrect`
  ------------------------------------------------

 

What would the returned int be? An error code? The difference between a
and b? Or the sum of a and b? How brilliant and important this returned
int is, it confuses people. Make Swap return nothing. After calling
Swap, you can still return error codes, calculate the difference and sum
of a and b.

 

  -------------------------------
  ` void Swap(int& a, int& b);`
  -------------------------------

 

 

 

 

 

5) Put the text 'Hello' on screen and return an error code
----------------------------------------------------------

 

  ---------------------------------------------------------------------
  ` //Incorrect const int SayHello(); //Return an integer error code`
  ---------------------------------------------------------------------

 

 

First, how can std::cout on the word 'hello' ever fail? It appears this
function will always return a no-error code (often zero).

 

Except for that, why return an error code, when you can also throw an
error type (that is, an [exception](CppException.md))? The purpose of
[exceptions](CppException.md) are to replace error codes, because these
are less ambiguent then error code (for example, zero is not always the
no-error code).

 

Finally, if std::cout fails, it will throw an
[exception](CppException.md) in the first place! The purpose of
SayHello is (next to, std::cout the word hello) not to catch this
exception and convert it to an error code.

 

Let SayHello say hello and let the caller of SayHello catch the
(improbable) exceptions.

 

  ---------------------
  ` void SayHello();`
  ---------------------

 

 

 

 

 

6) Set a value in an x-y-ordered 2D-vector
------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Set a value in an x-y-ordered 2D-vector //Incorrect void Set(std::vector<std::vector<double> >& v, const int& i, const int& j, const double& value);`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------

 

First (similar to \#2), why name the arguments i and j, when writing x
and y is more natural/human? Sure, programmers might like to use i and j
in their for-loops, but a coordinat in a std::vector suggests using x
and y as parameter names.

 

Secondly (although I personally feel it is more correct), one should not
pass an int or double by reference. Build-in data types should be passed
by value.

 

  --------------------------------------------------------------------------------------------------------------------------------------------
  ` //Set a value in an x-y-ordered 2D-vector void Set(std::vector<std::vector<double> >& v, const int x, const int y, const double value);`
  --------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

7) Calculate the mean and standard deviation of a std::vector
-------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------
  ` const double MeanAndStdDev(const std::vector<double>& v, double& mean); //Incorrect!`
  -----------------------------------------------------------------------------------------

 

A way to be able to let a function return two values. But it might feel
unnatural: passing the mean by reference and returning the standard
deviation. In my humble opinion, if you use references to 'return'
multiple values, uses references for all values.

 

  ------------------------------------------------------------------------------------
  ` void MeanAndStdDev(const std::vector<double>& v, double& mean, double& stdDev);`
  ------------------------------------------------------------------------------------

 

An alternative that I would personally also approve (but do not prefer)
is to return a std::pair. In this std::pair, it is suggested that the
first element is the mean, where the second element is the standard
deviation.

 

  --------------------------------------------------------------------------------
  ` const std::pair<double,double> MeanAndStdDev(const std::vector<double>& v);`
  --------------------------------------------------------------------------------

 

 

 

 

 

8) Display a Widget on screen using std::cout
---------------------------------------------

 

  --------------------------------------
  ` void CoutWidget(const Widget& w);`
  --------------------------------------

 

If one writes the above function, one has to write the following:

 

  ------------------------------
  ` Widget w; w.CoutWidget();`
  ------------------------------

 

But actually, one probably would have wanted to be able to write the
following:

 

  ------------------------------
  ` Widget w; std::cout << w;`
  ------------------------------

 

Also, if you want to stream Widget to a std::ostream, why not stream it
to any std::ostream?

 

  -----------------------------------------------------------------
  ` std::ostream& operator<<(std::ostream& os, const Widget& w);`
  -----------------------------------------------------------------

 

 

 

 

 

9) Assign a color to a certain square on a Rubik's cube
-------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------
  ` //Member function in the interface void SetSquare(const Square& s, const Color& c, RubiksCube& c); //Incorrect!`
  --------------------------------------------------------------------------------------------------------------------

 

Make interface easy to use correctly and hard to use incorrectly
(Meyers). Setting a certain color on a certain square/position of a
Rubik's cube is the equivalent of painting a certain color of a certain
square (people who actually cheat this way, swap the stickers on the
cube). This makes the function very error prone.

 

When you use a real Rubik's cube, you can only turn multiple squares.
This suggests that you might also want to write functions that turns
multiple squares (at a certain position) in a certain direction.

 

  --------------------------------------------------------------------------------------------------------
  ` //Member function in the interface void Turn(const Position& p, const Direction& d, RubiksCube& c);`
  --------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReference.md)
------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 3.6.1.2
2.  http://www.parashift.com/c++-faq-lite/newbie.html\#faq-29.3 : main()
    must return int. Not void, not bool, not float. int. Just int,
    nothing but int, only int. Some compilers accept void main(), but
    that is non-standard and shouldn't be used. Instead use int main()
3.  Herb Sutter. Exceptional C++. ISBN: 0-201-61562-2. Item 21:
    void main() is nonstandard and nonportable.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md)'s homepage
    (http://www.research.att.com/\~bs/bs\_faq2.html\#void-main): 'The
    definition 'void main() { /\* ... \*/ }' is not and never has been
    C++, nor has it even been C.'
5.  alt.comp.lang.learn.c-c++ FAQ:
    http://ma.rtij.nl/acllc-c++.FAQ.html\#q3.4: 3.4 Why does everyone
    make so much fuss about "void main()"?. Because the return type of
    the main() function must be int in both C and C++. Anything else
    is undefined. Bottom line - don't try to start a thread about this
    in alt.comp.lang.learn.c-c++ as it has already been discussed many,
    many times and generates more flamage than any other topic.

 

 

 

 

 

 

 

