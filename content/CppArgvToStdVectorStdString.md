# [Convert `argv` to `std::vector<std::string>`](CppArgvToStdVectorStdString.md)

This pages shows how to [convert](CppConvert.md) [argv](CppArgv.md) to [std::vector](CppStdVector.md)<[std::string](CppStdString.md)>.

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
