import 'package:exchange/models/crypto_model/status.dart';

class ResponseModel<T> {
  Status? status;
  T? data;
  String? message;

  ResponseModel.loading(this.message) : status = Status.LOADING;
  ResponseModel.completed(this.data) : status = Status.COMPLETED;
  ResponseModel.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    // TODO: implement toString
    return "Status  : $status \n Message : $message \n Data : $data";
  }
}

enum Status { LOADING, COMPLETED, ERROR }
