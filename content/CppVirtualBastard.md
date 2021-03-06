
 

 

 

 

 

([C++](Cpp.md)) [VirtualBastard](CppVirtualBastard.md)
========================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[VirtualBastard](CppVirtualBastard.md) is a class to do GUI testing.

Technical facts
---------------

 

 

 

 

 

 

./CppVirtualBastard/CppVirtualBastard.pri
-----------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` INCLUDEPATH += \     ../../Classes/CppDial  SOURCES += \     ../../Classes/CppDial/dial.cpp  HEADERS  += \     ../../Classes/CppDial/dial.h  OTHER_FILES += \     ../../Classes/CppDial/Licence.txt`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppVirtualBastard/virtualbastard.h
------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef VIRTUALBASTARD_H #define VIRTUALBASTARD_H  #include <string>  ///The VirtualBastard class struct VirtualBastard {   VirtualBastard();     ///Make the mouse cursor perform a click   static void Click();    ///Set the mouse cursor its current position   static const std::pair<int,int> GetMousePos();    ///Set the mouse cursor to a certain position   static void SetMousePos(const int x, const int y);    ///Press a key   static void PressKey(const char key);    ///Sleep for some time (in msecs)   static void Sleep(const int m_secs);    private:   static void Execute(const std::string& cmd); };  #endif // VIRTUALBASTARD_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppVirtualBastard/virtualbastard.cpp
--------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "virtualbastard.h"  #include <chrono> #include <limits> //#include <sstream> #include <thread>  #include <boost/lexical_cast.hpp>  extern "C" {   #include "libcvautomation/libcvautomation.h" }  VirtualBastard::VirtualBastard() {   XInitThreads(); }  void VirtualBastard::Click() {   const std::string cmd = "mouseclick";   Execute(cmd); }   void VirtualBastard::Execute(const std::string& cmd) {   //Open a display (whatever that may be)   const std::string display_name = "";   Display * const display = XOpenDisplay( display_name.c_str() );   assert(display);    //Convert the line (with the command) to a C style string   char * const command = new char[ cmd.size() + 1 ];   strcpy(command,&cmd[0]);    //Run the command   /*const cvaPoint p =*/ xte_commandString(display,command,1,0,std::numeric_limits<int>().max(),1);    //Close the display (whatever that may be)   XCloseDisplay( display );    //Don't forget to delete a C-style string :-(   delete[] command;    //Give some feedback   /*   std::stringstream s;   s << "Execute command: '" << cmd << "': ";   if (p.x == -2 && p.y == -2)   {     s << "OK";   }   else   {     s << "(" << p.x << "," << p.y << ")";   }   */ }  const std::pair<int,int> VirtualBastard::GetMousePos() {   //Open a display (whatever that may be)   const std::string display_name = "";   Display * const display = XOpenDisplay( display_name.c_str() );   assert(display);   const cvaPoint p = xte_mouseLocation(display);   return std::make_pair(p.x,p.y); }  void VirtualBastard::PressKey(const char /* key */) {  }  void VirtualBastard::SetMousePos(const int x, const int y) {   const std::string cmd     = "mousexy "     + boost::lexical_cast<std::string>(x)     + " "     + boost::lexical_cast<std::string>(y);   Execute(cmd); }  void VirtualBastard::Sleep(const int m_secs) {   std::this_thread::sleep_for(std::chrono::milliseconds(m_secs)); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppVirtualBastard/virtualbastardcommand.h
-------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef VIRTUALBASTARDCOMMAND_H #define VIRTUALBASTARDCOMMAND_H  class VirtualBastardCommand { public:   VirtualBastardCommand(); };  #endif // VIRTUALBASTARDCOMMAND_H`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppVirtualBastard/virtualbastardcommand.cpp
---------------------------------------------

 

  -------------------------------------------------------------------------------------------
  ` #include "virtualbastardcommand.h"  VirtualBastardCommand::VirtualBastardCommand() { }`
  -------------------------------------------------------------------------------------------

 

 

 

 

 

./CppVirtualBastard/virtualbastardcommandfactory.h
--------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef VIRTUALBASTARDCOMMANDFACTORY_H #define VIRTUALBASTARDCOMMANDFACTORY_H  class VirtualBastardCommandFactory { public:   VirtualBastardCommandFactory(); };  #endif // VIRTUALBASTARDCOMMANDFACTORY_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppVirtualBastard/virtualbastardcommandfactory.cpp
----------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------
  ` #include "virtualbastardcommandfactory.h"  VirtualBastardCommandFactory::VirtualBastardCommandFactory() { }`
  ----------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

