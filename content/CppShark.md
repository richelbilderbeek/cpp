



 

 

 

 

 

([C++](Cpp.md)) [Shark](CppShark.md)
======================================

 

[Shark](CppShark.md) is a [C++](Cpp.md) [library](CppLibrary.htm) for
machine learning.

 

 

 

 

 

[Shark](CppShark.md) examples
------------------------------

 

-   [Example 1: neural net solving the XOR
    problem](CppSharkExample1.md)
-   [Example 2: 'friendly' neural net getting ready to tackle the XOR
    problem](CppSharkExample2.md)
-   [Example 3: evolving neural net solving the XOR
    problem](CppSharkExample3.md)
-   [TicTacToeLearner](ToolTicTacToeLearner.md)

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

Add the following line to your [project file](CppQtProjectFile.md) (to
prevent [link errors](CppLinkError.md)):

 

  --------------------
  ` LIBS += -lshark`
  --------------------

 

 

 

 

 

[Shark](CppShark.md) suggestions
---------------------------------

 

-   [Shark](CppShark.md) does not save its neural networks in the PMML
    language
-   The method 'FFNet::outputValue(i)', where 'i' is the (integer) index
    of an output neuron, does not check if this index exists. I would
    suggest to add an assert to prevent this during debugging
-   FFNet does not have any public method to check the number
    of neurons. Such a getter would not hurt...
-   The method 'FFNet::activate(inputs)', where 'inputs' is an
    Array&lt;double&gt; is protected. Personally, I do not understand
    this design choice: the purpose of a neural network is to process
    input, so I would make this method public
-   The method 'FFNet::activate(inputs)', where 'inputs' is a
    non-const method. I do understand that giving input to a neural
    network, that it will have new output. Still, I believe that this
    does not change the network itself: the structure and weights
    are unchanged. Personally, I would make the stored outputs mutable
    and the FFNet::activate method a const method.
-   The [Shark](CppShark.md) data type 'Array&lt;double&gt;' should be
    replaced by the std::vector, Boost::Array or Boost::Multi\_array
    data type: the data types mentioned are better known and less (!)
    complex

 

 

 

 

 

External links
--------------

 

-   [Shark sourceforge
    homepage](http://shark-project.sourceforge.net/index.html)
-   [Wikipedia page about
    PMML](http://en.wikipedia.org/wiki/Predictive_Model_Markup_Language)

 

 

 

 

 





 



