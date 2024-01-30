import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String baseURl = "https://www.googleapis.com/books/v1/";

  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var respons = await dio.get("$baseURl$endPoint");
    return respons.data;
  }
}
