import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:getxmvvm/data/response/api/base_api_services.dart';
import 'package:http/http.dart' as http;
import '../../exceptions.dart';

class NetworkApiServices extends BaseApiServices {
// ****************For Get Api********************
  @override
  Future<dynamic> getApi(String url) async {
    dynamic data;
    try {
      var response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      data = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOut();
    }
    return data;
  }

//***************For status Code***************
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic data = jsonDecode(response.body.toString());
        return data;
      case 400:
        throw InvalidUrl();
      default:
        throw FatchDataException();
    }
  }

  //******************* For PostApi************** */

  // if data is in raw form then we pass it in dataEncode otherwise if the developer provide data in form-data then we simple pass our data
  @override
  Future postApi(String url, dynamic data) async {
    try {
      var response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      data = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOut();
    }
  }
}
