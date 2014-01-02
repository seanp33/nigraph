#define BUILDING_NODE_EXTENSION
#include <node.h>
#include <v8.h>
#include <igraph.h>

using namespace v8;

Handle<Value> RunCallback(const Arguments& args) {
  HandleScope scope;

  Local<Function> cb = Local<Function>::Cast(args[0]);
  const unsigned argc = 1;
  Local<Value> argv[argc] = { Local<Value>::New(String::New("hello world")) };
  cb->Call(Context::GetCurrent()->Global(), argc, argv);

  return scope.Close(Undefined());
}

Handle<Value> RunIGraphCallback(const Arguments& args) {
  igraph_integer_t diameter;
  igraph_t graph;
  igraph_erdos_renyi_game(&graph, IGRAPH_ERDOS_RENYI_GNP, 1000, 5.0/1000,
			  IGRAPH_UNDIRECTED, IGRAPH_NO_LOOPS);
  igraph_diameter(&graph, &diameter, 0, 0, 0, IGRAPH_UNDIRECTED, 1);  

  HandleScope scope;
  Local<Function> cb = Local<Function>::Cast(args[0]);
  const unsigned argc = 1;

  Local<Value> v_count = Number::New(igraph_vcount(&graph));
  Local<Value> diam  = Number::New(diameter);
  Local<Value> diam_str = String::Cast(* diam);
  // Local<Value> argv[argc] = { Local<Value>::New(diam_str) };
   Local<Value> argv[argc] = { v_count};
  cb->Call(Context::GetCurrent()->Global(), argc, argv);

  igraph_destroy(&graph);
  return scope.Close(Undefined());
}

void Init(Handle<Object> exports, Handle<Object> module) {
  module->Set(String::NewSymbol("exports"),
      FunctionTemplate::New(RunIGraphCallback)->GetFunction());
}

NODE_MODULE(addon, Init)
