


import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  static const String baseUrl = 'http://www.googleapis.com/books/v1/';

  const ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endPointUrl}) async {
    var response = await _dio.get('$baseUrl$endPointUrl');
    return response.data;
  }
}