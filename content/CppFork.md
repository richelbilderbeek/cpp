[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [fork](CppFork.htm)
====================================

 

[fork](CppFork.htm) is a non-[STL](CppStl.htm) C
[function](CppFunction.htm) to fork a process.

 

-   [Download the Qt Creator project 'CppFork' (zip)](CppFork.zip)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <unistd.h>  //fork() example, adapted from dempl_dempl int main() {   std::cout << "Start of fork() example (shared code)\n";    const int pid = fork();    if(pid == 0)   {     std::cout << "pid == 0 code (unique code)\n";   }   else if (pid > 0)   {     std::cout << "pid == " << pid << " (unique code)\n";   }   else if (pid < 0)   {     std::cout << "fork() call failed (unique code)\n";   }   std::cout << "End of fork() example (shared code)\n"; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Start of fork() example (shared code) pid == 5954 (unique code) End of fork() example (shared code) Start of fork() example (shared code) pid == 0 code (unique code) End of fork() example (shared code)`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
