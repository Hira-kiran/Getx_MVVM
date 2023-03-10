// in this file, we handle exceptions

// ignore_for_file: prefer_typing_uninitialized_variables

class AppException implements Exception {
  final message;
  final prefix;

  AppException([this.message, this.prefix]);

  @override
  String toString() {
    return "$message";
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, "No internet");
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, "");
}

class RequestTimeOut extends AppException {
  RequestTimeOut([String? message])
      : super(message, "Request Timeout, Try Again!");
}

class InvalidUrl extends AppException {
  InvalidUrl([String? message])
      : super(message, "Response Not Found, Try Again!");
}
class FatchDataException extends AppException {
 FatchDataException([String? message])
      : super(message, "Error while communication, Try Again!");
}
