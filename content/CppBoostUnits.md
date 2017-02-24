



 

 

 

 

 

([C++](Cpp.md)) [Boost.Units](CppUnits.md)
============================================

 

[Boost.Units](CppUnits.md) is the [Boost](CppBoost.md)
[library](CppLibrary.md) to specify SI units (meter, kilogram, second,
ampere, kelvin, candela, mole) for values. This allows the
[compiler](CppCompiler.md) to check your calculations at compile-time.

 

 

 

 

 

Example
-------

 

In the example below, two lengths are added with success. Also the
[compiler](CppCompiler.md) prevented the adding of a force and a
length.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/units/systems/si.hpp> #include <boost/units/systems/si/prefixes.hpp> #include <boost/units/io.hpp>  int main() {   //Create a length   boost::units::quantity<boost::units::si::length> m(1.0 * boost::units::si::meter);    //Create another length   boost::units::quantity<boost::units::si::length> n(1.0 * boost::units::si::milli * boost::units::si::meter);    //Create a force   boost::units::quantity<boost::units::si::force> f(1.0 * boost::units::si::newton);    //Add the two lengths   std::cout << (m + n); //OKAY: can add meters to meters    //Try to add force to a length   //std::cout << (m + f); //FAILS: cannot add newtons to meters }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project 'CppUnits' (zip)](CppUnits.md)

 

 

 

 

 

Other examples
--------------

 

-   [Units example 1: example from Boost](CppBoostUnitsExample1.md)
-   [Units example 2: calculate the area from two
    lengths](CppBoostUnitsExample2.md)
-   [Units example 3: creating a Length, Width and Area
    classes](CppBoostUnitsExample3.md)
-   [Units example 4: creating a Length, Width and Area classes with
    some typedefs](CppBoostUnitsExample4.md)
-   [Units example 5: averaging multiple
    lengths](CppBoostUnitsExample5.md)
-   [Units example 6: using an angle](CppBoostUnitsExample6.md)
-   [Units example 7: calculating a force from a mass and an
    acceleration](CppBoostUnitsExample7.md)
-   [Units example 8: calculating mass from a volume and a mass
    density](CppBoostUnitsExample8.md)
-   [Units example 9: calculating pressure from a force and an
    area](CppBoostUnitsExample9.md)
-   [Units example 10: calculating angular acceleration and
    torque](CppBoostUnitsExample10.md)
-   [Units example 11: creating the quantity volumetric
    flow](CppBoostUnitsExample11.md)
-   [Units example 12: creating the quantity volumetric flow and mass
    flow](CppBoostUnitsExample12.md)
-   [Units example 13: removing the unit, converting back to plain
    double](CppBoostUnitsExample13.md)
-   [Units example 14: creating the quantity species
    density](CppBoostUnitsExample14.md)
-   [Units example 15: creating the quantity number of sulfide molecules
    (in mole)](CppBoostUnitsExample15.md)
-   [Units example 16: creating the quantity number of sulfide molecules
    (in mole) and hydrogen molecules (in mole) that can be
    added](CppBoostUnitsExample16.md)
-   TODO [Units example 17: creating the quantity number of sulfide
    molecules (in mole) and hydrogen molecules (in mole) that cannot be
    added](CppBoostUnitsExample17.md)

 

 

 

 

 

[Boost.Units](CppUnits.md) [bug](CppBug.md)
---------------------------------------------

 

See [Boost.Units bug](CppUnitsBug.md).

 

 

 

 

 





 



