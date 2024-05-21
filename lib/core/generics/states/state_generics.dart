class StateGenerics<S, F> {
  S? data;
  F? error;
  Status status;

  bool get hasError => error != null;

  StateGenerics.loading({this.data, this.error, this.status = Status.loading});
  StateGenerics.success({this.data, this.error, this.status = Status.success});
  StateGenerics.failed({this.data, this.error, this.status = Status.failed});
}

enum Status { loading, failed, success }