import 'dart:async';

import 'package:dio/dio.dart';

class APIManager {
  final String baseURL = "https://api.unsplash.com/";
  late Response response;
  Dio dio = Dio();
  final headerOptions = Options(
    headers: {'Authorization': 'Client-ID <your-api-key>'},
  );

  /// Get Collections
  Future<dynamic> getCollections({int? page = 1}) async {
    response = await dio.get(
      "${baseURL}collections",
      options: headerOptions,
      queryParameters: {
        "page": page,
      },
    );
    return response.data;
  }
}

String handleError(error) {
  if (error is DioError) {
    if (error.type == DioErrorType.connectTimeout) {
      return "Connection TimeOut: URL is opened timeout.";
    } else if (error.type == DioErrorType.receiveTimeout) {
      return "Receive TimeOut: Receiving timeout.";
    } else if (error.type == DioErrorType.other) {
      return "Internet Issue: Failed to host lookup, please check your internet connection.";
    }
  } else {
    return "Internet Error: Something went wrong.";
  }
  return "Something went wrong.";
}
