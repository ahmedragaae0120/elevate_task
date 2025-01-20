import 'package:dio/dio.dart';
import 'package:elevate_task/core/constants.dart';

class ApiManger {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(baseUrl: Constants.baseUrl));
  }

  Future<Response> getReguest(
      {required String baseUrl, Map<String, dynamic>? queryParameters}) async {
    var response = await dio.get(baseUrl, queryParameters: queryParameters);
    return response;
  }
}
