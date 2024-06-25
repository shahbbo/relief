import 'package:dio/dio.dart';
import 'package:relief/shared/components/constants.dart';

import '../../resources/string_manager.dart';
import '../local/cache_helper.dart';

class DioHelper {
  static late Dio dio;

  static inti() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppStrings.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getDate(
      {required String url,
      Map<String, dynamic>? query,
      dynamic data,
      String tokenVerify = ''}) async {
    tokenPatient = CacheHelper.getData(key: 'tokenPatient');
    tokenCaregiver = CacheHelper.getData(key: 'tokenCaregiver');
    dio.options.headers = {
      'Authorization':
          '${tokenPatient == null ? tokenCaregiver : tokenPatient}',
    };
    return await dio.get(
      url,
      data: data,
      queryParameters: query,
    );
  }

  static Future<Response> postData(
      {required String url,
      Map<String, dynamic>? query,
      required dynamic data,
      String tokenVerify = ''}) async {
    tokenPatient = CacheHelper.getData(key: 'tokenPatient');
    tokenCaregiver = CacheHelper.getData(key: 'tokenCaregiver');
    dio.options.headers = {
      'Authorization': '${tokenPatient == null ? tokenCaregiver : tokenPatient}',
    };
    return dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required dynamic data,
  }) async {
    tokenPatient = CacheHelper.getData(key: 'tokenPatient');
    tokenCaregiver = CacheHelper.getData(key: 'tokenCaregiver');
    dio.options.headers = {
      'Authorization':
          '${tokenPatient == null ? tokenCaregiver : tokenPatient}',
    };
    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> deleteData({
    required String url,
    dynamic data,
  }) async {
    tokenPatient = CacheHelper.getData(key: 'tokenPatient');
    tokenCaregiver = CacheHelper.getData(key: 'tokenCaregiver');
    dio.options.headers = {
      'Authorization':
          '${tokenPatient == null ? tokenCaregiver : tokenPatient}',
    };
    return dio.delete(
      url,
      data: data,
    );
  }

  static Future<dynamic> getPlace({
    required String url,
  }) async {
    return Dio(BaseOptions(baseUrl: 'https://geocode.maps.co/reverse?'))
        .get(url);
  }
}
