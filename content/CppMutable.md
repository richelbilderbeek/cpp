
 

 

 

 

 

([C++](Cpp.md)) [mutable](CppMutable.md)
==========================================

 

[mutable](CppMutable.md) is a [Keyword](CppKeyword.md) to indicate
that a [class](CppClass.md) variable can be changed in a [const member
function](CppConstMemberFunction.md).

 

In [class design](CppClassDesign.md) [mutable](CppMutable.md)
variables say nothing about a [class](CppClass.md), but are used for
bookkeeping tasks.

 

 

 

 

 

 

Example
-------

 

When a [neural network](CppNeuralNetwork.md) responds to a certain
input, it will produce a certain output. The flow of information from
input layer to output layer is called propagation. During propagation,
the neural network must not be changed. Therefore, in [class
design](CppClassDesign.md) the propagation [member
function](CppMemberFunction.md) must be a [const member
function](CppConstMemberFunction.md). If the last input must be stored
(for back-propagation for example), this must be done with
[mutable](CppMutable.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Input { /* some structure to store neural net inputs */ }; struct Output { /* some structure to store neural net outputs */ };   struct NeuralNet {   //Propagate must be a const method   const Output Propagate(const Input& input) const   {     m_last_input = input; //Store last input     //Perform actual propagation   }   mutable Input m_last_input; //Last input must be mutable };`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
