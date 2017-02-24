



 

 

 

 

 

([C++](Cpp.md)) [BoostGraphExample2](CppBoostGraphExample2.md)
================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Graph example 2: four human names and their relationships +
plotting](CppBoostGraphExample2.md) is a
[Boost.Graph](CppBoostGraph.md) [example](CppExample.md). It defines a
graph of person names and their relationships. Then the graph is written
to .dot file and plotted using KGraphViewer.

 

-   [View the graph of this example (png)](CppBoostGraphExample2.png)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppBoostGraphExample2/CppBoostGraphExample2.pro
------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostGraphExample2/main.cpp
--------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/graph/adjacency_list.hpp> #include <boost/graph/graphviz.hpp> #pragma GCC diagnostic pop int main() {   //Define the type of graph:   //boost::adjacency_list is the 'Swiss army knife' graph   typedef boost::adjacency_list   <     //Store all edges as a std::vector     boost::vecS,     //Store all vertices in a std::vector     boost::vecS,     //Relations are both ways (in this example)     //(note: but you can freely change it to boost::directedS)     boost::undirectedS,     //All vertices are person names of type std::string     boost::property<boost::vertex_name_t,std::string>,     //All edges are relation of type std::string     boost::property<boost::edge_name_t,std::string>   > Graph;    Graph  g;    std::vector<std::string> names;   names.push_back("Mr. A");   names.push_back("Mrs. B");   names.push_back("Dr. C");   names.push_back("Prof. D");    const Graph::vertex_descriptor v0 = boost::add_vertex(names[0],g);   const Graph::vertex_descriptor v1 = boost::add_vertex(names[1],g);   const Graph::vertex_descriptor v2 = boost::add_vertex(names[2],g);   const Graph::vertex_descriptor v3 = boost::add_vertex(names[3],g);    std::vector<std::string> relations;   relations.push_back("Married");   relations.push_back("Lovers");   relations.push_back("Collegues");   relations.push_back("Roommates");    boost::add_edge(v0,v1,relations[0],g);   boost::add_edge(v1,v2,relations[1],g);   boost::add_edge(v2,v3,relations[2],g);   boost::add_edge(v0,v3,relations[3],g);    //Writing graph to file   {     std::ofstream f("test.dot");     //Problems:     //- All relationships are omitted     boost::write_graphviz(       f,       g,       boost::make_label_writer(&(names[0])));     f.close();   }    //View the output directly using KGraphViewerer   std::system("kgraphviewer test.dot"); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
