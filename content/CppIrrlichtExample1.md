



 

 

 

 

 

([C++](Cpp.md)) [IrrlichtExample1](CppIrrlichtExample1.md)
============================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppIrrlichtExample1/CppIrrlichtExample1.pro
--------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  INCLUDEPATH += ../../Libraries/irrlicht-1.8/include LIBS += -L../../Libraries/irrlicht-1.8/lib/Win32-gcc/ -lirrlicht LIBS += -L../../Libraries/irrlicht-1.8/bin/Win32-gcc`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppIrrlichtExample1/main.cpp
------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include "irrlicht.h"  int main() {   irr::IrrlichtDevice * const device = irr::createDevice(irr::video::EDT_SOFTWARE);    device->setWindowCaption(L"HelloIrrlicht");    irr::video::IVideoDriver * const driver = device->getVideoDriver();   irr::scene::ISceneManager * const scene_manager = device->getSceneManager();   irr::gui::IGUIEnvironment * const gui_environment = device->getGUIEnvironment();   irr::scene::IAnimatedMesh * const mesh = scene_manager->getMesh("../../Libraries/irrlicht-1.8/media/sydney.md2");   assert(mesh);    irr::scene::IAnimatedMeshSceneNode * const node = scene_manager->addAnimatedMeshSceneNode( mesh );   assert(node);   node->setMaterialFlag(irr::video::EMF_LIGHTING, false);   node->setMD2Animation(irr::scene::EMAT_STAND);   node->setMaterialTexture( 0, driver->getTexture("../../Libraries/irrlicht-1.8/media/sydney.bmp") );    scene_manager->addCameraSceneNode(0, irr::core::vector3df(0,30,-40), irr::core::vector3df(0,5,0));    while(device->run())   {     driver->beginScene(       true,       true,       irr::video::SColor(0,195,195,195));     scene_manager->drawAll();     gui_environment->drawAll();     driver->endScene();   }   device->drop(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
