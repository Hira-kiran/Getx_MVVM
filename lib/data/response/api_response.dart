import 'package:getxmvvm/data/response/status.dart';

//T is the generic data
// in this we pass generic data to class
class ApiResponse<T> {
  Status? status;

  String? message;
  T? data;

  ApiResponse(this.data, this.message, this.status);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed() : status = Status.COMPLETED;
  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    return "$message \n $data \n $status";
  }
}
