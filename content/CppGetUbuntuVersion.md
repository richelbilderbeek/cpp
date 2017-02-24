[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetUbuntuVersion](CppGetUbuntuVersion.htm)
============================================================

 

[GetUbuntuVersion](CppGetUbuntuVersion.htm) is a
[version](CppVersion.htm) [code snippets](CppCodeSnippets.htm) to obtain
the [version](CppVersion.htm) of the current [Ubuntu](CppUbuntu.htm)
distibution.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <fstream> #include <string> #include <vector> #include <boost/foreach.hpp>  ///GetUbuntuVersion returns the version number of the Ubuntu distribution currently installed. ///From http://www.richelbilderbeek.nl/CppGetUbuntuVersion.htm const std::string GetUbuntuVersion() {   //Save info to tmp.txt   {     std::system("cat /etc/*-release > tmp.txt");   }   //Read info to std::vector   std::vector<std::string> v;   {     std::ifstream f("tmp.txt");     std::string s;     for (int i=0; !f.eof(); ++i)     {       std::getline(f,s);       v.push_back(s);     }   }   //Analyze std::vector   BOOST_FOREACH(const std::string& s,v)   {     if (s.size() > 15       && s.substr(0,15)=="DISTRIB_RELEASE")     {       const int i = s.find_last_of("=");       return s.substr(i+1,s.size()-(i+1));     }   }   return ""; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
