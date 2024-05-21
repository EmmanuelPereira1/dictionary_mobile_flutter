class ResponseGenerics<G, E>{
  G? data;
  E? error;
  int statusCode;

  ResponseGenerics({this.data,this.error, required this.statusCode});

}