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

Example|Status
---|---
[1: example from Boost](https://github.com/richelbilderbeek/boost_units_example_1)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_1.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_1)
[2: calculate the area from two lengths](https://github.com/richelbilderbeek/boost_units_example_2)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_2.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_2)
[3: creating a Length, Width and Area classes](https://github.com/richelbilderbeek/boost_units_example_3)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_3.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_3)
[4: creating a Length, Width and Area classes with some typedefs](https://github.com/richelbilderbeek/boost_units_example_4)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_4.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_4)
[5: averaging multiple lengths](https://github.com/richelbilderbeek/boost_units_example_5)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_5.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_5)
[6: using an angle](https://github.com/richelbilderbeek/boost_units_example_6)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_6.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_6)
[7: calculating a force from a mass and an acceleration](https://github.com/richelbilderbeek/boost_units_example_7)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_7.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_7)
[8: calculating mass from a volume and a mass density](https://github.com/richelbilderbeek/boost_units_example_8)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_8.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_8)
[9: calculating pressure from a force and an area](https://github.com/richelbilderbeek/boost_units_example_9)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_9.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_9)
[10: calculating angular acceleration and torque](https://github.com/richelbilderbeek/boost_units_example_10)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_10.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_10)
[11: creating the quantity volumetric flow](https://github.com/richelbilderbeek/boost_units_example_11)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_11.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_11)
[12: creating the quantity volumetric flow and mass flow](https://github.com/richelbilderbeek/boost_units_example_12)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_12.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_12)
[13: removing the unit, converting back to plain double](https://github.com/richelbilderbeek/boost_units_example_13)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_13.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_13)
[14: creating the quantity species density](https://github.com/richelbilderbeek/boost_units_example_14)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_14.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_14)
[15: creating the quantity number of sulfide molecules (in mole)](https://github.com/richelbilderbeek/boost_units_example_15)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_15.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_15)
[16: creating the quantity number of sulfide molecules (in mole) and hydrogen molecules (in mole) that can be added](https://github.com/richelbilderbeek/boost_units_example_16)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_16.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_16)
[17: creating the quantity number of sulfide molecules (in mole) and hydrogen molecules (in mole) that cannot be added](https://github.com/richelbilderbeek/boost_units_example_17)|[![Build Status](https://travis-ci.org/richelbilderbeek/boost_units_example_17.svg?branch=master)](https://travis-ci.org/richelbilderbeek/boost_units_example_17)

## Misc

 * [Boost.Units bug](CppUnitsBug.md).
