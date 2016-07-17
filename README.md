# nigraph

#### Building
1. install igraph per http://igraph.org/c/doc/
1. install node-gyp `npm install -g node-gyp`
1. `npm install`
1. `./build.sh`
1. `./test.sh`
1. and to compile the the igraph smoke

    ```gcc src/test/cpp/igraph_smoke.c -I/usr/local/include/igraph -L/usr/local/lib -ligraph -o igraph_smoke`
... of if those -I -L paths are incorrect, learn wherre they are on your system with `pkg-config --libs --cflags igraph```

#### TODO
* build
    * establish proper `cmake` xplat build with some dependency management
    * establish proper test harnesn based on [google test](https://github.com/google/googletest) or similar
* structure
    * define sibling project for server and client which leverages nigraph
* spikes
    1. display of and shader-based filter pf random `igraph_erdos_renyi_game` graph
        1. server generates erdos_renyi_game
        1. server applies some semi-random attributes to nodes and edges
        1. server generates and applies coord system for 3D spherical layout
        1. client queries for graph and 3D sphere layout
        1. client enumerates some vertex properties and prepares filtering chrome
        1. client generates and loads particle system into gpu (three.js)
        1. shader pipline is used to filter displau based on some kind of criteria
    1. application of basic graph analysis (community discovery)
        1. client allows for selection of nodes/edges and posts query to server for analysis
        1. server accepts query and analyzes graph for
            * connectivity
            * incidents
            * degrees
            * shortest paths
            * ...

#### Resources
* http://igraph.org/c/doc/
* https://v8docs.nodesource.com/
* https://github.com/nodejs/nan
