



 

 

 

 

 

([C++](Cpp.htm)) [mutable](CppMutable.htm)
==========================================

 

[mutable](CppMutable.htm) is a [Keyword](CppKeyword.htm) to indicate
that a [class](CppClass.htm) variable can be changed in a [const member
function](CppConstMemberFunction.htm).

 

In [class design](CppClassDesign.htm) [mutable](CppMutable.htm)
variables say nothing about a [class](CppClass.htm), but are used for
bookkeeping tasks.

 

 

 

 

 

 

Example
-------

 

When a [neural network](CppNeuralNetwork.htm) responds to a certain
input, it will produce a certain output. The flow of information from
input layer to output layer is called propagation. During propagation,
the neural network must not be changed. Therefore, in [class
design](CppClassDesign.htm) the propagation [member
function](CppMemberFunction.htm) must be a [const member
function](CppConstMemberFunction.htm). If the last input must be stored
(for back-propagation for example), this must be done with
[mutable](CppMutable.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Input { /* some structure to store neural net inputs */ }; struct Output { /* some structure to store neural net outputs */ };   struct NeuralNet {   //Propagate must be a const method   const Output Propagate(const Input& input) const   {     m_last_input = input; //Store last input     //Perform actual propagation   }   mutable Input m_last_input; //Last input must be mutable };`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
