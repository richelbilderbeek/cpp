
 

 

 

 

 

([C++](Cpp.md)) [boost::adjacency\_list](CppAdjacency_list.md)
================================================================

 

[boost::adjacency\_list](CppAdjacency_list.md) is the 'Swiss army
knife' graph [class](CppClass.md) of the [Boost.Graph](CppGraph.md)
[library](CppLibrary.md).

 

[boost::adjacency\_list](CppAdjacency_list.md) is
[defined](CppDefinition.md) in the [header file](CppHeaderFile.md)
'boost/graph/adjacency\_list.hpp'.

 

 

 

 

 

[boost::adjacency\_list](CppAdjacency_list.md) template parameters
-------------------------------------------------------------------

 

1.  EdgeList
    -   Purpose: slect the type of container used to store the edges
    -   Possible values:
        -   boost::hash\_setS: select std::hash\_set
        -   boost::listS: select [std::list](CppList.md)
        -   boost::setS: select [std::set](CppStdSet.md)
        -   boost::slistS: select [std::slist](CppSlist.md)
        -   boost::vecS: select [std::vector](CppStdVector.md)
    -   Default value: boost::vecS

2.  VertexList
    -   Purpose: slect the type of container used to store the vertices
    -   Possible values:
        -   boost::hash\_setS: select std::hash\_set
        -   boost::listS: select [std::list](CppList.md)
        -   boost::setS: select [std::set](CppStdSet.md)
        -   boost::slistS: select [std::slist](CppSlist.md)
        -   boost::vecS: select [std::vector](CppStdVector.md)
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
            vertices contain a [std::string](CppStdString.md)
    -   Default value: boost::no\_property

5.  EdgeProperties
    -   Purpose: specify internal edge property storage
    -   Possible values:
        -   boost::no\_property: no properties
        -   boost::property&lt;boost::edge\_name\_t,std::string&gt;:
            edges contain a [std::string](CppStdString.md)
    -   Default value: boost::no\_property

6.  GraphProperties
    -   Purpose: specify internal graph property storage
    -   Possible values:
        -   boost::no\_property: no properties
        -   boost::property&lt;boost::graph\_name\_t,std::string&gt;:
            graph has a [std::string](CppStdString.md) name
    -   Default value: boost::no\_property

 

 

 

 

 

Example
-------

 

 

 

 

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/graph/adjacency_list.hpp>  int main() {   typedef boost::adjacency_list   <     //Store all out edges as a std::vector     boost::vecS,     //Store all vertices in a std::vector     boost::vecS,     //Relations are directed     boost::directedS,     //All vertices are person names of type std::string     boost::property<boost::vertex_name_t,std::string>,     //All edges are relation of type std::string     boost::property<boost::edge_name_t,std::string>   > Graph;      Graph g; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Jeremy G. Siek, Lie-Quan Lee, Andrew Lumsdaine. The Boost
    Graph Library. 2002. ISBN: 0-201-72914-8.

 

 

 

 

 

 

