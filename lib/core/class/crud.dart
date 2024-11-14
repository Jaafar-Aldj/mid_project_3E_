import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../functions/check_internet.dart';
import 'status_request.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkURL, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkURL), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return right(responseBody);
        } else {
          return left(StatusRequest.serverfailure);
        }
      } else {
        return left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return left(StatusRequest.failure);
    }
  }
}
