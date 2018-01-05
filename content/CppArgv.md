# ([C++](Cpp.md)) [argv](CppArgv.md)

[argv](CppArgv.md) holds the first index of an [array](CppArray.md) of
strings, where [argc](CppArgc.md) holds the size of
[argv](CppArgv.md). With [argc](CppArgc.md) and [argv](CppArgv.md)
you can access the arguments [main](CppMain.md) is called with from (by
the [operating system](CppOs.md)).

One of the two standard forms of [main](CppMain.md) is [1]:

```c++
int main(int argc, char * argv[]) 
{ 

}
```

[argv](CppArgv.md) contains the filename of the program itself at index
zero and then the parameters the user gave when starting the executable.

## [Example](Example.md): show all command-line arguments

This example shows all command-line arguments:

```c++ 
#include <iostream>

int main(int argc, char* argv[])
{
  for(int i=0; i!=argc; ++i)
  {
    std::cout << i << " : " << argv[i] << '\n';
  }
}
```


If you start the program from the command-line as such:

```
my_program_name Hello world
```

Your output will be similar to:

```
0 : /home/richelbilderbeek/my_program_name
1 : Hello
2 : world
```

The first argument, `argv[0]` is always the path to the program.

## [Example](Example.md): [Convert `argv` to `std::vector<std::string>`](CppArgvToStdVectorStdString.md)

```c++ 
#include <cassert>
#include <string>
#include <vector>

int main(int argc, char* argv[])
{
  const std::vector<std::string> args(argv, argv + argc);
  assert(argc == static_cast<int>(args.size());
  assert(argv[0] == args[0]);
}
```

 
## [References](CppReferences.md)

  * [1] C++. International Standard. ISO/IEC 14882. Second edition. Paragraph 3.6.1.2

