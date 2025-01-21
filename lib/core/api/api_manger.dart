import 'package:dio/dio.dart';
import 'package:elevate_task/core/constants.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManger {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(baseUrl: Constants.baseUrl));
  }

  Future<Response> getReguest(
      {required String endpoints,
      Map<String, dynamic>? queryParameters}) async {
    var response = await dio.get(endpoints, queryParameters: queryParameters);
    return response;
  }
}
