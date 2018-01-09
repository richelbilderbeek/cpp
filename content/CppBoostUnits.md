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

 * [Units example 1: example from Boost](https://github.com/richelbilderbeek/boost_units_example_1)
 * [Units example 2: calculate the area from two lengths](https://github.com/richelbilderbeek/boost_units_example_2)
 * [Units example 3: creating a Length, Width and Area classes](https://github.com/richelbilderbeek/boost_units_example_3)
 * [Units example 4: creating a Length, Width and Area classes with some typedefs](https://github.com/richelbilderbeek/boost_units_example_4)
 * [Units example 5: averaging multiple lengths](https://github.com/richelbilderbeek/boost_units_example_5)
 * [Units example 6: using an angle](https://github.com/richelbilderbeek/boost_units_example_6)
 * [Units example 7: calculating a force from a mass and an acceleration](https://github.com/richelbilderbeek/boost_units_example_7)
 * [Units example 8: calculating mass from a volume and a mass density](https://github.com/richelbilderbeek/boost_units_example_8)
 * [Units example 9: calculating pressure from a force and an area](https://github.com/richelbilderbeek/boost_units_example_9)
 * [Units example 10: calculating angular acceleration and torque](https://github.com/richelbilderbeek/boost_units_example_10)
 * [Units example 11: creating the quantity volumetric flow](https://github.com/richelbilderbeek/boost_units_example_11)
 * [Units example 12: creating the quantity volumetric flow and mass flow](https://github.com/richelbilderbeek/boost_units_example_12)
 * [Units example 13: removing the unit, converting back to plain double](https://github.com/richelbilderbeek/boost_units_example_13)
 * [Units example 14: creating the quantity species density](https://github.com/richelbilderbeek/boost_units_example_14)
 * [Units example 15: creating the quantity number of sulfide molecules (in mole)](https://github.com/richelbilderbeek/boost_units_example_15)
 * [Units example 16: creating the quantity number of sulfide molecules (in mole) and hydrogen molecules (in mole) that can be added](https://github.com/richelbilderbeek/boost_units_example_16)
 * [Units example 17: creating the quantity number of sulfide molecules (in mole) and hydrogen molecules (in mole) that cannot be added](https://github.com/richelbilderbeek/boost_units_example_17)
 * [Boost.Units bug](CppUnitsBug.md).
