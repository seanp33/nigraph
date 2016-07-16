cmd_Release/obj.target/nigraph/src/main/cpp/nigraph2.o := c++ '-DNODE_GYP_MODULE_NAME=nigraph' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_DARWIN_USE_64_BIT_INODE=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DBUILDING_NODE_EXTENSION' -I/Users/smonaghan/.node-gyp/4.4.0/include/node -I/Users/smonaghan/.node-gyp/4.4.0/src -I/Users/smonaghan/.node-gyp/4.4.0/deps/uv/include -I/Users/smonaghan/.node-gyp/4.4.0/deps/v8/include -I/usr/local/include/igraph -I../node_modules/nan  -Os -gdwarf-2 -mmacosx-version-min=10.5 -arch x86_64 -Wall -Wendif-labels -W -Wno-unused-parameter -std=gnu++0x -fno-rtti -fno-exceptions -fno-threadsafe-statics -fno-strict-aliasing -MMD -MF ./Release/.deps/Release/obj.target/nigraph/src/main/cpp/nigraph2.o.d.raw   -c -o Release/obj.target/nigraph/src/main/cpp/nigraph2.o ../src/main/cpp/nigraph2.cc
Release/obj.target/nigraph/src/main/cpp/nigraph2.o: \
  ../src/main/cpp/nigraph2.cc ../node_modules/nan/nan.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/uv.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/uv-errno.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/uv-version.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/uv-unix.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/uv-threadpool.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/uv-darwin.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/node.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/v8.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/v8-version.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/v8config.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/node_version.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/node_buffer.h \
  /Users/smonaghan/.node-gyp/4.4.0/include/node/node_object_wrap.h \
  ../node_modules/nan/nan_callbacks.h \
  ../node_modules/nan/nan_callbacks_12_inl.h \
  ../node_modules/nan/nan_maybe_43_inl.h \
  ../node_modules/nan/nan_converters.h \
  ../node_modules/nan/nan_converters_43_inl.h \
  ../node_modules/nan/nan_new.h \
  ../node_modules/nan/nan_implementation_12_inl.h \
  ../node_modules/nan/nan_persistent_12_inl.h \
  ../node_modules/nan/nan_weak.h /usr/local/include/igraph/igraph.h \
  /usr/local/include/igraph/igraph_version.h \
  /usr/local/include/igraph/igraph_memory.h \
  /usr/local/include/igraph/igraph_error.h \
  /usr/local/include/igraph/igraph_random.h \
  /usr/local/include/igraph/igraph_types.h \
  /usr/local/include/igraph/igraph_vector.h \
  /usr/local/include/igraph/igraph_complex.h \
  /usr/local/include/igraph/igraph_pmt.h \
  /usr/local/include/igraph/igraph_vector_type.h \
  /usr/local/include/igraph/igraph_pmt_off.h \
  /usr/local/include/igraph/igraph_vector_pmt.h \
  /usr/local/include/igraph/igraph_progress.h \
  /usr/local/include/igraph/igraph_statusbar.h \
  /usr/local/include/igraph/igraph_matrix.h \
  /usr/local/include/igraph/igraph_matrix_pmt.h \
  /usr/local/include/igraph/igraph_array.h \
  /usr/local/include/igraph/igraph_array_pmt.h \
  /usr/local/include/igraph/igraph_dqueue.h \
  /usr/local/include/igraph/igraph_dqueue_pmt.h \
  /usr/local/include/igraph/igraph_stack.h \
  /usr/local/include/igraph/igraph_stack_pmt.h \
  /usr/local/include/igraph/igraph_heap.h \
  /usr/local/include/igraph/igraph_heap_pmt.h \
  /usr/local/include/igraph/igraph_psumtree.h \
  /usr/local/include/igraph/igraph_strvector.h \
  /usr/local/include/igraph/igraph_vector_ptr.h \
  /usr/local/include/igraph/igraph_spmatrix.h \
  /usr/local/include/igraph/igraph_sparsemat.h \
  /usr/local/include/igraph/igraph_datatype.h \
  /usr/local/include/igraph/igraph_arpack.h \
  /usr/local/include/igraph/igraph_qsort.h \
  /usr/local/include/igraph/igraph_constants.h \
  /usr/local/include/igraph/igraph_iterators.h \
  /usr/local/include/igraph/igraph_interface.h \
  /usr/local/include/igraph/igraph_constructors.h \
  /usr/local/include/igraph/igraph_games.h \
  /usr/local/include/igraph/igraph_microscopic_update.h \
  /usr/local/include/igraph/igraph_centrality.h \
  /usr/local/include/igraph/igraph_paths.h \
  /usr/local/include/igraph/igraph_components.h \
  /usr/local/include/igraph/igraph_structural.h \
  /usr/local/include/igraph/igraph_attributes.h \
  /usr/local/include/igraph/igraph_transitivity.h \
  /usr/local/include/igraph/igraph_neighborhood.h \
  /usr/local/include/igraph/igraph_topology.h \
  /usr/local/include/igraph/igraph_bipartite.h \
  /usr/local/include/igraph/igraph_cliques.h \
  /usr/local/include/igraph/igraph_layout.h \
  /usr/local/include/igraph/igraph_visitor.h \
  /usr/local/include/igraph/igraph_community.h \
  /usr/local/include/igraph/igraph_conversion.h \
  /usr/local/include/igraph/igraph_foreign.h \
  /usr/local/include/igraph/igraph_motifs.h \
  /usr/local/include/igraph/igraph_operators.h \
  /usr/local/include/igraph/igraph_flow.h \
  /usr/local/include/igraph/igraph_nongraph.h \
  /usr/local/include/igraph/igraph_cocitation.h \
  /usr/local/include/igraph/igraph_adjlist.h \
  /usr/local/include/igraph/igraph_blas.h \
  /usr/local/include/igraph/igraph_lapack.h \
  /usr/local/include/igraph/igraph_mixing.h \
  /usr/local/include/igraph/igraph_separators.h \
  /usr/local/include/igraph/igraph_cohesive_blocks.h \
  /usr/local/include/igraph/igraph_eigen.h \
  /usr/local/include/igraph/igraph_hrg.h \
  /usr/local/include/igraph/igraph_threading.h \
  /usr/local/include/igraph/igraph_interrupt.h \
  /usr/local/include/igraph/igraph_scg.h \
  /usr/local/include/igraph/igraph_matching.h \
  /usr/local/include/igraph/igraph_embedding.h \
  /usr/local/include/igraph/igraph_scan.h \
  /usr/local/include/igraph/igraph_graphlets.h \
  /usr/local/include/igraph/igraph_epidemics.h \
  /usr/local/include/igraph/igraph_lsap.h
../src/main/cpp/nigraph2.cc:
../node_modules/nan/nan.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/uv.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/uv-errno.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/uv-version.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/uv-unix.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/uv-threadpool.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/uv-darwin.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/node.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/v8.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/v8-version.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/v8config.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/node_version.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/node_buffer.h:
/Users/smonaghan/.node-gyp/4.4.0/include/node/node_object_wrap.h:
../node_modules/nan/nan_callbacks.h:
../node_modules/nan/nan_callbacks_12_inl.h:
../node_modules/nan/nan_maybe_43_inl.h:
../node_modules/nan/nan_converters.h:
../node_modules/nan/nan_converters_43_inl.h:
../node_modules/nan/nan_new.h:
../node_modules/nan/nan_implementation_12_inl.h:
../node_modules/nan/nan_persistent_12_inl.h:
../node_modules/nan/nan_weak.h:
/usr/local/include/igraph/igraph.h:
/usr/local/include/igraph/igraph_version.h:
/usr/local/include/igraph/igraph_memory.h:
/usr/local/include/igraph/igraph_error.h:
/usr/local/include/igraph/igraph_random.h:
/usr/local/include/igraph/igraph_types.h:
/usr/local/include/igraph/igraph_vector.h:
/usr/local/include/igraph/igraph_complex.h:
/usr/local/include/igraph/igraph_pmt.h:
/usr/local/include/igraph/igraph_vector_type.h:
/usr/local/include/igraph/igraph_pmt_off.h:
/usr/local/include/igraph/igraph_vector_pmt.h:
/usr/local/include/igraph/igraph_progress.h:
/usr/local/include/igraph/igraph_statusbar.h:
/usr/local/include/igraph/igraph_matrix.h:
/usr/local/include/igraph/igraph_matrix_pmt.h:
/usr/local/include/igraph/igraph_array.h:
/usr/local/include/igraph/igraph_array_pmt.h:
/usr/local/include/igraph/igraph_dqueue.h:
/usr/local/include/igraph/igraph_dqueue_pmt.h:
/usr/local/include/igraph/igraph_stack.h:
/usr/local/include/igraph/igraph_stack_pmt.h:
/usr/local/include/igraph/igraph_heap.h:
/usr/local/include/igraph/igraph_heap_pmt.h:
/usr/local/include/igraph/igraph_psumtree.h:
/usr/local/include/igraph/igraph_strvector.h:
/usr/local/include/igraph/igraph_vector_ptr.h:
/usr/local/include/igraph/igraph_spmatrix.h:
/usr/local/include/igraph/igraph_sparsemat.h:
/usr/local/include/igraph/igraph_datatype.h:
/usr/local/include/igraph/igraph_arpack.h:
/usr/local/include/igraph/igraph_qsort.h:
/usr/local/include/igraph/igraph_constants.h:
/usr/local/include/igraph/igraph_iterators.h:
/usr/local/include/igraph/igraph_interface.h:
/usr/local/include/igraph/igraph_constructors.h:
/usr/local/include/igraph/igraph_games.h:
/usr/local/include/igraph/igraph_microscopic_update.h:
/usr/local/include/igraph/igraph_centrality.h:
/usr/local/include/igraph/igraph_paths.h:
/usr/local/include/igraph/igraph_components.h:
/usr/local/include/igraph/igraph_structural.h:
/usr/local/include/igraph/igraph_attributes.h:
/usr/local/include/igraph/igraph_transitivity.h:
/usr/local/include/igraph/igraph_neighborhood.h:
/usr/local/include/igraph/igraph_topology.h:
/usr/local/include/igraph/igraph_bipartite.h:
/usr/local/include/igraph/igraph_cliques.h:
/usr/local/include/igraph/igraph_layout.h:
/usr/local/include/igraph/igraph_visitor.h:
/usr/local/include/igraph/igraph_community.h:
/usr/local/include/igraph/igraph_conversion.h:
/usr/local/include/igraph/igraph_foreign.h:
/usr/local/include/igraph/igraph_motifs.h:
/usr/local/include/igraph/igraph_operators.h:
/usr/local/include/igraph/igraph_flow.h:
/usr/local/include/igraph/igraph_nongraph.h:
/usr/local/include/igraph/igraph_cocitation.h:
/usr/local/include/igraph/igraph_adjlist.h:
/usr/local/include/igraph/igraph_blas.h:
/usr/local/include/igraph/igraph_lapack.h:
/usr/local/include/igraph/igraph_mixing.h:
/usr/local/include/igraph/igraph_separators.h:
/usr/local/include/igraph/igraph_cohesive_blocks.h:
/usr/local/include/igraph/igraph_eigen.h:
/usr/local/include/igraph/igraph_hrg.h:
/usr/local/include/igraph/igraph_threading.h:
/usr/local/include/igraph/igraph_interrupt.h:
/usr/local/include/igraph/igraph_scg.h:
/usr/local/include/igraph/igraph_matching.h:
/usr/local/include/igraph/igraph_embedding.h:
/usr/local/include/igraph/igraph_scan.h:
/usr/local/include/igraph/igraph_graphlets.h:
/usr/local/include/igraph/igraph_epidemics.h:
/usr/local/include/igraph/igraph_lsap.h:
