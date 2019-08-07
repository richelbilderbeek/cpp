# ([C++](Cpp.md)) [Boost.Units](CppUnits.md)

[Boost.Units](CppUnits.md) is the [Boost](CppBoost.md)
[library](CppLibrary.md) to specify SI units (meter, kilogram, second,
ampere, kelvin, candela, mole) for values. This allows the
[compiler](CppCompiler.md) to check your calculations at compile-time.

## Example

In the example below, two lengths are added with success. Also the
[compiler](CppCompiler.md) prevented the adding of a force and a
length.

```c++
#include <iostream>
#include <boost/units/systems/si.hpp>
#include <boost/units/systems/si/prefixes.hpp>
#include <boost/units/io.hpp>

int main()
{
  //Create a length
  boost::units::quantity<boost::units::si::length> m(1.0 * boost::units::si::meter);

  //Create another length
  boost::units::quantity<boost::units::si::length> n(1.0 * boost::units::si::milli * boost::units::si::meter);

  //Create a force
  boost::units::quantity<boost::units::si::force> f(1.0 * boost::units::si::newton);

  //Add the two lengths
  std::cout << (m + n); //OKAY: can add meters to meters

  //Try to add force to a length
  //std::cout << (m + f); //FAILS: cannot add newtons to meters
}
```

## Other examples

 * See [https://github.com/richelbilderbeek/boost_units_examples](https://github.com/richelbilderbeek/boost_units_examples)

## Misc

 * [Boost.Units bug](CppUnitsBug.md).
