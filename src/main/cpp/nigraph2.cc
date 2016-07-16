#include <nan.h>
#include <igraph.h>

using namespace v8;

void igraph_erdos_renyi_game(const Nan::FunctionCallbackInfo<Value>& info){
  //igraph_integer_t diameter;
  igraph_t g;
  igraph_matrix_t coords;

  v8::Local<v8::Number> vertex_count_in = info[0].As<v8::Number>();
  v8::Local<v8::Function> cb = info[1].As<v8::Function>();

  igraph_erdos_renyi_game(&g, IGRAPH_ERDOS_RENYI_GNP, vertex_count_in->Value(), 5.0/vertex_count_in->Value(), IGRAPH_DIRECTED, IGRAPH_NO_LOOPS);

  // counts
  v8::Local<v8::Number> v_count_out = Nan::New(igraph_vcount(&g));
  v8::Local<v8::Number> e_count_out = Nan::New(igraph_ecount(&g));

  // layout
  igraph_matrix_init(&coords, 0, 0);
  igraph_layout_sphere(&g, &coords);

  // collect coordinates from layout
  v8::Local<v8::Array> points_array = Nan::New<v8::Array>(vertex_count_in->Value());
  long int nr = vertex_count_in->Value();
  long int i;
  for (i=0; i<nr; i++) {
    v8::Local<v8::Array> points = Nan::New<v8::Array>(3);
    points->Set(0, Nan::New(MATRIX(coords, i, 0)));
    points->Set(1, Nan::New(MATRIX(coords, i, 1)));
    points->Set(2, Nan::New(MATRIX(coords, i, 2)));
    points_array->Set(i, points);
  }

  v8::Local<v8::Object> result = Nan::New<v8::Object>();
  result->Set(Nan::New("v_count").ToLocalChecked(), v_count_out);
  result->Set(Nan::New("e_count").ToLocalChecked(), e_count_out);
  result->Set(Nan::New("points").ToLocalChecked(), points_array);

  const unsigned argc = 1;
  v8::Local<v8::Value> argv[argc] = {result};

  igraph_destroy(&g);
  igraph_matrix_destroy(&coords);

  Nan::MakeCallback(Nan::GetCurrentContext()->Global(), cb, argc, argv);
}

void InitAll(v8::Local<v8::Object> exports) {
  exports->Set(Nan::New("igraph_erdos_renyi_game").ToLocalChecked(),
      Nan::New<v8::FunctionTemplate>(igraph_erdos_renyi_game)->GetFunction());

//  exports->Set(Nan::New("add").ToLocalChecked(),
//      Nan::New<FunctionTemplate>(Add)->GetFunction());
}

NODE_MODULE(nigraph2, InitAll)
