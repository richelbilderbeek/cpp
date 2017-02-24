[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [DoPerfectElasticCollision](CppDoPerfectElasticCollision.htm)
==============================================================================

 

[DoPerfectElasticCollision](CppDoPerfectElasticCollision.htm) is a
[math](CppMath.htm) [code snippet](CppCodeSnippets.htm) to determine the
velocities and angles of two 2D round objects after a perfect elastic
collision.

 

When two perfect globes (or disks) collide and bounce perfectly
elastically, all impulse is maintained and transferred maximally.
Near-perfect elastic collisions can be observed when playing snooker or
air-hockey. It is a relatively mathematical complex function and [the
image showing all angles and vectors
(png)](CppDoPerfectElasticCollision.PNG) should clear up on the
function's working. The function assumes equals mass of both players.

 

I (re)developed
[DoPerfectElasticCollision](CppDoPerfectElasticCollision.htm) for the
[game](Games.htm) [Boenken](GameBoenken.htm).

 

-   [View an image showing all angles and
    vectors (png)](CppDoPerfectElasticCollision.PNG)

 

To use [DoPerfectElasticCollision](CppDoPerfectElasticCollision.htm),
you must already have [defined](CppDefinition.htm) the
[GetAngle](CppGetAngle.htm) [function](CppFunction.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath>  //From http://www.richelbilderbeek.nl/CppDoPerfectElasticCollision.htm void DoPerfectElasticCollision(   const double angleCollision,   double& angle1,   double& speed1,   double& angle2,   double& speed2) {   //The length of the impulse of player 1 (assumes both players have equal mass!)   const double A = speed1;   //The length of the impulse of player 2 (assumes both players have equal mass!)   const double E = speed2;   //The angles between the two globes   const double c = angleCollision;   //The angle between c and the impulse direction of player 1   const double a = c - angle1;   //The angle between c and the impulse direction of player 2   const double b = c + M_PI - angle2;    //Seperate the impulses to their impulses paralel and othoganal the angle of collision   //The length of the impulse of player 1 parallel to the collision   const double B = A * std::cos(a);   //The length of the impulse of player 1 orthogonal to the collision   const double C = A * std::sin(a);   //The length of the impulse of player 2 parallel to the collision   const double F = E * std::cos(b);   //The length of the impulse of player 2 orthogonal to the collision   const double G = E * std::sin(b);    //Seperate the impulses in X and Y directions   const double BdX = B *  std::sin(c + (0.0 * M_PI));   const double BdY = B * -std::cos(c + (0.0 * M_PI));   const double CdX = C *  std::sin(c + (1.5 * M_PI));   const double CdY = C * -std::cos(c + (1.5 * M_PI));   const double FdX = F *  std::sin(c + (1.0 * M_PI));   const double FdY = F * -std::cos(c + (1.0 * M_PI));   const double GdX = G *  std::sin(c + (0.5 * M_PI));   const double GdY = G * -std::cos(c + (0.5 * M_PI));    //The resulting impulses   //The resulting impulse of player 1 in the X direction   const double DdX = CdX + FdX;   //The resulting impulse of player 1 in the Y direction   const double DdY = CdY + FdY;   //The resulting impulse of player 2 in the X direction   const double HdX = BdX + GdX;   //The resulting impulse of player 2 in the Y direction   const double HdY = BdY + GdY;    //Write the final results   angle1 = GetAngle(DdX, DdY);   angle2 = GetAngle(HdX, HdY);   speed1 = std::sqrt( (DdX * DdX) + (DdY * DdY) ); //Pythagoras   speed2 = std::sqrt( (HdX * HdX) + (HdY * HdY) ); //Pythagoras } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
