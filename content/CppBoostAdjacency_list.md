[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::adjacency\_list](CppAdjacency_list.htm)
================================================================

 

[boost::adjacency\_list](CppAdjacency_list.htm) is the 'Swiss army
knife' graph [class](CppClass.htm) of the [Boost.Graph](CppGraph.htm)
[library](CppLibrary.htm).

 

[boost::adjacency\_list](CppAdjacency_list.htm) is
[defined](CppDefinition.htm) in the [header file](CppHeaderFile.htm)
'boost/graph/adjacency\_list.hpp'.

 

 

 

 

 

[boost::adjacency\_list](CppAdjacency_list.htm) template parameters
-------------------------------------------------------------------

 

1.  EdgeList
    -   Purpose: slect the type of container used to store the edges
    -   Possible values:
        -   boost::hash\_setS: select std::hash\_set
        -   boost::listS: select [std::list](CppList.htm)
        -   boost::setS: select [std::set](CppSet.htm)
        -   boost::slistS: select [std::slist](CppSlist.htm)
        -   boost::vecS: select [std::vector](CppVector.htm)
    -   Default value: boost::vecS

2.  VertexList
    -   Purpose: slect the type of container used to store the vertices
    -   Possible values:
        -   boost::hash\_setS: select std::hash\_set
        -   boost::listS: select [std::list](CppList.htm)
        -   boost::setS: select [std::set](CppSet.htm)
        -   boost::slistS: select [std::slist](CppSlist.htm)
        -   boost::vecS: select [std::vector](CppVector.htm)
    -   Default value: boost::vecS

3.  Directed
    -   Purpose: directedness of graph
    -   Possible values:
        -   boost::directedS: select a directed graph
        -   boost::undirectedS: select an undirected graph
        -   boost::bidirectionalS: select a bidirectional graph
    -   Default value: boost::directedS

4.  VertexProperties
    -   Purpose: specify internal vertex property storage
    -   Possible values:
        -   boost::no\_property: no properties
        -   boost::property&lt;boost::vertex\_name\_t,std::string&gt;:
            vertices contain a [std::string](CppString.htm)
    -   Default value: boost::no\_property

5.  EdgeProperties
    -   Purpose: specify internal edge property storage
    -   Possible values:
        -   boost::no\_property: no properties
        -   boost::property&lt;boost::edge\_name\_t,std::string&gt;:
            edges contain a [std::string](CppString.htm)
    -   Default value: boost::no\_property

6.  GraphProperties
    -   Purpose: specify internal graph property storage
    -   Possible values:
        -   boost::no\_property: no properties
        -   boost::property&lt;boost::graph\_name\_t,std::string&gt;:
            graph has a [std::string](CppString.htm) name
    -   Default value: boost::no\_property

 

 

 

 

 

Example
-------

 

 

 

 

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/graph/adjacency_list.hpp>  int main() {   typedef boost::adjacency_list   <     //Store all out edges as a std::vector     boost::vecS,     //Store all vertices in a std::vector     boost::vecS,     //Relations are directed     boost::directedS,     //All vertices are person names of type std::string     boost::property<boost::vertex_name_t,std::string>,     //All edges are relation of type std::string     boost::property<boost::edge_name_t,std::string>   > Graph;      Graph g; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Jeremy G. Siek, Lie-Quan Lee, Andrew Lumsdaine. The Boost
    Graph Library. 2002. ISBN: 0-201-72914-8.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
