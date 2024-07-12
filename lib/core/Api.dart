
import 'package:dio/dio.dart';
class Apiservice {
  final Dio dio;

  Apiservice(this.dio);

  Future<Map<String, dynamic>> postdiofromdata(
      {required String url,
      Map<String, dynamic>? queryParameters,
      required dynamic data}) async {
    var resposne =
        await dio.post(url, queryParameters: queryParameters, data: data);
    return resposne.data;
  }
}
