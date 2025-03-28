import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/constant/api_endpoints.dart';
import 'package:ecommerce_app/core/utils/enums/status_request.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<Either<StatusRequest, Map>> post(String endpoint, Map body) async {
    var headers = {'Content-Type': 'application/json'};
    var request =
        http.Request('POST', Uri.parse(ApiEndpoints.baseUrl + endpoint));
    request.body = json.encode(body);
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    // print(await response.stream.bytesToString());
    if (response.statusCode == 200 || response.statusCode == 201) {
      return Right(jsonDecode(await response.stream.bytesToString()));
    } else if (response.statusCode == 401 || response.statusCode == 400) {
      return const Left(StatusRequest.failure);
    }
    return const Left(StatusRequest.unknown);
  }

  Future<Either<StatusRequest, dynamic>> getdata(String endpoints) async {
    var headers = {'Content-Type': 'application/json'};

    var request =
        http.Request('GET', Uri.parse(ApiEndpoints.baseUrl + endpoints));
    print(ApiEndpoints.baseUrl + endpoints);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      return Right(json.decode(await response.stream.bytesToString()));
    } else {
      return Left(StatusRequest.failure);
    }
  }
}
