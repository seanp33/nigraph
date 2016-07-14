#define BUILDING_NODE_EXTENSION
#include <node.h>
#include <v8.h>
#include <igraph.h>

using namespace v8;

Handle<Value> run_igraph_erdos_renyi_game(const Arguments& args) {
  HandleScope scope;
  igraph_integer_t diameter;
  igraph_t graph;
  igraph_matrix_t coords;
  igraph_vs_t vtx_selector;
  igraph_vit_t vtx_iter;

  //turn on attribute handling - http://igraph.sourceforge.net/doc/html/ch12s02.html
  //igraph_i_set_attribute_table(&igraph_cattribute_table);

  Local<Number> vertex_count_in = Local<Number>::Cast(args[0]);

  igraph_erdos_renyi_game(&graph, IGRAPH_ERDOS_RENYI_GNP, vertex_count_in->Value(), 5.0/1000,
			  IGRAPH_UNDIRECTED, IGRAPH_NO_LOOPS);

  igraph_diameter(&graph, &diameter, 0, 0, 0, IGRAPH_UNDIRECTED, 1);

  // layout
  igraph_matrix_init(&coords, 0, 0);
  igraph_layout_sphere(&graph, &coords);

  /////////////////////////////////////////////////////////////////////
  // and my attempt at getting coords based off of igraph_matrix_print impl
  Handle<Array> points_array = Array::New(vertex_count_in->Value());
  long int nr = vertex_count_in->Value();
  long int i;
  for (i=0; i<nr; i++) {
    Handle<Array> points = Array::New(3);
    points->Set(0, Number::New(MATRIX(coords, i, 0)));
    points->Set(1, Number::New(MATRIX(coords, i, 1)));
    points->Set(2, Number::New(MATRIX(coords, i, 2)));
    points_array->Set(i, points);
  }
  /////////////////////////////////////////////////////////////////////

  /////////////////////////////////////////////////////////////////////
  // TODO: revisit vertext and edge attributes. we're going to need them soon.
  // @see cattributes.c
  // @see http://igraph.sourceforge.net/doc-0.5/html/ch09s02.html
  //print_attributes(&graph);
  /////////////////////////////////////////////////////////////////////

  // selectors and iterators... which we aren't doing anything with
  igraph_vs_seq(&vtx_selector, 0, (vertex_count_in->Value() -1));
  igraph_vit_create(&graph, vtx_selector, &vtx_iter);


  while (!IGRAPH_VIT_END(vtx_iter)) {
    //printf(" %li", (long int)IGRAPH_VIT_GET(vtx_iter));
    IGRAPH_VIT_NEXT(vtx_iter);
  }

  /////////////////////////////////////////////////////////////////////

  // and perform callback
  Local<Function> cb = Local<Function>::Cast(args[1]);
  const unsigned argc = 1;

  Local<Value> v_count_out = Number::New(igraph_vcount(&graph));
  Local<Value> e_count_out = Number::New(igraph_ecount(&graph));
  Local<Value> diameter_out = Number::New(diameter);
  Local<Object> result = Object::New();

  result->Set(String::NewSymbol("v_count"), v_count_out);
  result->Set(String::NewSymbol("e_count"), e_count_out);
  result->Set(String::NewSymbol("diameter"), diameter_out);
  result->Set(String::NewSymbol("points"), points_array);

  Local<Value> argv[argc] = {result};

  cb->Call(Context::GetCurrent()->Global(), argc, argv);

  igraph_destroy(&graph);
  igraph_matrix_destroy(&coords);
  igraph_vit_destroy(&vtx_iter);
  igraph_vs_destroy(&vtx_selector);

  return scope.Close(Undefined());
}

void Init(Handle<Object> exports, Handle<Object> module) {
   exports->Set(String::NewSymbol("igraph_erdos_renyi_game"),
       FunctionTemplate::New(run_igraph_erdos_renyi_game)->GetFunction());
}

NODE_MODULE(nigraph, Init)
