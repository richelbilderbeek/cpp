[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [BoostGraphExample5](CppBoostGraphExample5.htm)
================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Graph example 5](CppBoostGraphExample5.htm) is a
[Boost.Graph](CppBoostGraph.htm) [example](CppExample.htm).

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostGraphExample5/CppBoostGraphExample5.pro
------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostGraphExample5/main.cpp
--------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <iostream> #include <boost/graph/adjacency_list.hpp> #include <boost/graph/breadth_first_search.hpp> #include <boost/graph/visitors.hpp> #pragma GCC diagnostic pop  //Define the type of graph: //boost::adjacency_list is the 'Swiss army knife' graph typedef boost::adjacency_list <   //Store all edges as a std::vector   boost::vecS,   //Store all vertices in a std::vector   boost::vecS,   //Relations are both ways (in this example)   //(note: but you can freely change it to boost::directedS)   boost::undirectedS,   //All vertices are person names of type std::string   boost::property<boost::vertex_name_t,std::string>,   //All edges are weights equal to the encounter frequencies   boost::property<boost::edge_weight_t,double>,   //Graph itself has a std::string name   boost::property<boost::graph_name_t,std::string> > Graph;   Graph Create() {    Graph g;    //All vertex names   //Note: cannot use spaces   std::vector<std::string> names;   names.push_back("Mr_A");   names.push_back("Mrs_B");   names.push_back("Dr_C");   names.push_back("Prof_D");    const Graph::vertex_descriptor v0 = boost::add_vertex(names[0],g);   const Graph::vertex_descriptor v1 = boost::add_vertex(names[1],g);   const Graph::vertex_descriptor v2 = boost::add_vertex(names[2],g);   const Graph::vertex_descriptor v3 = boost::add_vertex(names[3],g);    std::vector<double> frequencies;   frequencies.push_back(0.9);   frequencies.push_back(0.5);   frequencies.push_back(0.6);   frequencies.push_back(0.1);    boost::add_edge(v0,v1,frequencies[0],g);   boost::add_edge(v1,v2,frequencies[1],g);   boost::add_edge(v2,v3,frequencies[2],g);   boost::add_edge(v0,v3,frequencies[3],g);    return g; }   class custom_bfs_visitor : public boost::default_bfs_visitor { public:    template < typename Vertex, typename Graph >   void discover_vertex(Vertex u, const Graph & g) const   {     std::cout << u << std::endl;   } };  int main() {   const auto g(Create());   Create().named_vertices()   TODO: Iterate over nodes }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
