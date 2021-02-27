# ([C++](Cpp.md)) [IsRegularFile](CppIsRegularFile.md)

[IsRegularFile](CppIsRegularFile.md) is a [file I/O](CppFileIo.md)
[code snippet](CppCodeSnippets.md) to determine if a filename is a
regular file.

```
#include <cassert>
#include <cstdio>
#include <fstream>

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-local-typedefs"
#include <boost/filesystem.hpp>
#pragma GCC diagnostic pop

#include <QDir>
#include <QFile>

///Determines if a filename is a regular file
///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm
bool IsRegularFileBoostFilesystem(const std::string& filename)
{
  return boost::filesystem::is_regular_file(filename);
}

///Determines if a filename is a regular file
///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm
bool IsRegularFileQt(const std::string& filename)
{
  return !QDir(filename.c_str()).exists() && QFile::exists(filename.c_str());
}

///Determines if a filename is a regular file
///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm
bool IsRegularFileStl(const std::string& filename)
{
  std::fstream f;
  f.open(filename.c_str(),std::ios::in);
  return f.is_open();
}

int main(int /* argc */, char * argv[])
{
  assert(IsRegularFileBoostFilesystem(argv[0]));
  assert(IsRegularFileQt(argv[0]));
  assert(IsRegularFileStl(argv[0]));

  assert(!IsRegularFileBoostFilesystem("../CppIsRegularFile"));
  assert(!IsRegularFileQt("../CppIsRegularFile"));
  assert(!IsRegularFileStl("../CppIsRegularFile"));

  {
    std::remove("tmp.txt");

    //Create a regular file
    assert(!IsRegularFileBoostFilesystem("tmp.txt"));
    assert(!IsRegularFileQt("tmp.txt"));
    assert(!IsRegularFileStl("tmp.txt"));
    {
      std::fstream f;
      f.open("tmp.txt",std::ios::out);
      f << "TEMP TEXT";
      f.close();
    }
    assert(IsRegularFileBoostFilesystem("tmp.txt"));
    assert(IsRegularFileQt("tmp.txt"));
    assert(IsRegularFileStl("tmp.txt"));

    std::remove("tmp.txt");

    assert(!IsRegularFileBoostFilesystem("tmp.txt"));
    assert(!IsRegularFileQt("tmp.txt"));
    assert(!IsRegularFileStl("tmp.txt"));
  }
  {
    //Create a folder
    std::system("mkdir tmp");
    assert(!IsRegularFileBoostFilesystem("tmp"));
    assert(!IsRegularFileQt("tmp"));
    assert(!IsRegularFileStl("tmp"));
    std::system("rmdir tmp");
  }

  assert(!IsRegularFileBoostFilesystem(":/images/R.png")
    && "Boost cannot detect Qt resources");
  assert( IsRegularFileQt(":/images/R.png")
    && "Qt can detect Qt resources");
  assert(!IsRegularFileStl(":/images/R.png")
    && "The STL cannot detect Qt resources");
}
```
