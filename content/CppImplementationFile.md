



 

 

 

 

 

([C++](Cpp.md)) [Implementation file](CppImplementationFile.md)
=================================================================

 

[Implementation files](CppImplementationFile.md) contain the
[definitions](CppDefinition.md) of [functions](CppFunction.md) and
[member functions](CppMemberFunction.md)

 

[Implementation files](CppImplementationFile.md) commonly have the .cpp
filename extensions.

 

[Implementation files](CppImplementationFile.md) must not be called
from code, but added to your project instead. This varies per
[IDE](CppIde.md). Not having added all the needed [implementation
files](CppImplementationFile.md) results in [link
errors](CppLinkError.md) like 'unresolved external' or 'undefined
reference'. These [link errors](CppLinkError.md) say nothing more than
'You have [\#included](CppInclude.md) HeaderX.h, but you have not added
HeaderX.cpp to your project'.

 

The combination of a [header (.h) file](CppHeaderFile.md) and an
[implementation (.cpp) file](CppImplementationFile.md) is called a
[unit](CppUnit.md).

 

 

 

 

 





 



