# ([C++](Cpp.md)) [std::complex](CppStdComplex.md)

[std::complex](CppStdComplex.md) is an [STL](CppStl.md) [template class](CppTemplateClass.md) for a complex number.

```c++
#include <complex>
#include <iostream>

int main()
{
  const double real_part_1 = 3.0;
  const double imaginary_part_1 = 3.0;
  const std::complex<double> c(real_part_1,imaginary_part_1);

  const double real_part_2 = 4.0;
  const double imaginary_part_2 = 4.0;
  const std::complex<double> d(real_part_2,imaginary_part_2);

  const std::complex<double> sum(c + d);
  const std::complex<double> mult(c * d);
  std::cout << c << '\n';
  std::cout << d << '\n';
  std::cout << sum << '\n';
  std::cout << mult << '\n';
}
```

Screen output:

```
(3,3)
(4,4)
(7,7)
(0,24)
```
