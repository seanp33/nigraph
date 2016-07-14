#include <nan.h>
#include <igraph.h>

using namespace v8;

void igraph_erdos_renyi_game(const Nan::FunctionCallbackInfo<Value>& info){
  //igraph_integer_t diameter;
  igraph_t g;
  //igraph_matrix_t coords;
  Local<Number> vertex_count_in = info[0].As<Number>();
  Local<Function> cb = info[1].As<Function>();

  igraph_erdos_renyi_game(&g, IGRAPH_ERDOS_RENYI_GNP, vertex_count_in->Value(), 5.0/vertex_count_in->Value(), IGRAPH_DIRECTED, IGRAPH_NO_LOOPS);
  //igraph_erdos_renyi_game(&g, IGRAPH_ERDOS_RENYI_GNP, 1000, 5.0/1000, IGRAPH_UNDIRECTED, IGRAPH_NO_LOOPS);
  Local<Value> v_count_out = Nan::New(igraph_vcount(&g));
  Local<Value> e_count_out = Nan::New(igraph_ecount(&g));

  v8::Local<v8::Object> result = Nan::New<v8::Object>();
  result->Set(Nan::New("v_count").ToLocalChecked(), v_count_out);
  result->Set(Nan::New("e_count").ToLocalChecked(), e_count_out);

  const unsigned argc = 1;
  Local<Value> argv[argc] = {result};

  igraph_destroy(&g);

  Nan::MakeCallback(Nan::GetCurrentContext()->Global(), cb, argc, argv);
}

void InitAll(Local<Object> exports) {
  exports->Set(Nan::New("igraph_erdos_renyi_game").ToLocalChecked(),
      Nan::New<FunctionTemplate>(igraph_erdos_renyi_game)->GetFunction());

//  exports->Set(Nan::New("add").ToLocalChecked(),
//      Nan::New<FunctionTemplate>(Add)->GetFunction());
}

NODE_MODULE(nigraph2, InitAll)
