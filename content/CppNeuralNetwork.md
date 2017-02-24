



 

 

 

 

 

([C++](Cpp.md)) [Neural network](CppNeuralNetwork.md)
=======================================================

 

A [neural network](CppNeuralNetwork.md) is a connected collection of
neurons (that is, a [class](CppClass.md) that simulates a biological
neuron) that can be trained for certain purposes.

 

 

 

 

 

Freely downloadable C++ neural networks
---------------------------------------

 

From my favorite (top) to my least favorite. This list is incomplete and
will remain incomplete.

 

-   [Shark](CppShark.md): my personal favorite machine learning
    network, because it suits my needs
-   [Flood](CppFlood.md): the neural network implementation I used when
    using [C++ Builder](CppBuilder.md) 6.0. Downsides are
    [const](CppConst.md)-incorrectness, the use of [STL](CppStl.md)
    [functions](CppFunction.md) without '[std::](CppStd.md)' in front
    of it (a simple replace command fixes this, though), the use of
    handcrafted classes (for example Flood::Vector, instead of
    [std::vector](CppVector.md)), dirty C-style [casts](CppCast.md)
    and few documentation. Don't mind me nitpicking: because I use it
    with much pleasure, I know this one best!
-   [FANN](CppFann.md): programmed in C, I found it too hard to use for
    my own needs.
-   <http://www.bedaux.net/nnet>: takes [boolians](CppBool.md) as input
    and produces [boolians](CppBool.md) as output.
-   <http://www.codeproject.com/cpp/MLP.asp>: good code if you like the
    way Visual C++ handles its GUI
-   <http://sourceforge.net/project/showfiles.php?group_id=10202&package_id=10051&release_id=10643>:
    Average implementation relying heavily on plain
    [pointers](CppPointer.md)
-   <http://members.tripod.com/~zerkpage/backprop.txt> fair code which
    is easy to read, but uses many [global](CppGlobal.md)
    [pointers](CppPointer.md)
-   <http://sourceforge.net/projects/nn-utility>: acceptable source
    code, except for use of
    [pointers](CppPointer.md)-to-[pointers](CppPointer.md)-to-[pointers](CppPointer.md),
    [class](CppClass.md) names in UPPERCASE
-   <http://www.paraschopra.com/sourcecode/index.php>: example how NOT
    to program: use of [macro](CppMacro.md)'s, explicit write of
    [void](CppVoid.md) as a [function](CppFunction.md)
    [argument](CppArgument.md), inconsistent indentation, etc...

 

Untested:

 

-   Annie (http://annie.sourceforge.net)

 

 

 

 

 

Proposed [neural network](CppNeuralNetwork.md) architecture
------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template <class Neuron> struct NeuralNetwork {   NeuralNetwork(     const int nInputs  = 0,      const int nHidden  = 0,      const int nOutputs = 0);     //If the propagation of a neuron does not change its state,   //NeuralNet::Propagate is a const method   //Note: this constness must be determined by templates   const std::vector<double> Propagate(const std::vector<double>& inputs);   const std::vector<double> Propagate(const std::vector<double>& inputs) const;     //When a desired input is known, let this backpropagate   void BackPropagate(const std::vector<double>& desiredOutputs)    private:   //The NeuralNetwork is implemented as a boost::graph of Neurons   boost::graph<Neuron> m_n; };   //Neuron is an abstract base class struct Neuron {   //Note: this constness must be determined by templates   double Propagate(const double input) = 0;   double Propagate(const double input) const = 0; };`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [WikiPedia page on neural
    networks](http://en.wikipedia.org/wiki/Neural_network)

 

 

 

 

 





 



