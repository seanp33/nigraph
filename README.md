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
* establish proper `cmake` xplat build with some dependency management
* define sibling project for server and client which leverages nigraph
* establish proper test harnes based on [google test](https://github.com/google/googletest) or similar

#### Resources
* http://igraph.org/c/doc/
* https://v8docs.nodesource.com/
* https://github.com/nodejs/nan
