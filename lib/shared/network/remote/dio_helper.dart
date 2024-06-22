import 'package:dio/dio.dart';



class DioHelper {
  static late Dio dio ;

  static inti()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'AppStrings.baseUrl',
        receiveDataWhenStatusError: true,
      ),
    );
  }



  static Future<Response> getDate({
  required String url,
   Map<String,dynamic>? query ,
    dynamic data,
    String tokenVerify = ''
  }) async
  {
/*    token = CacheHelper.getData(key: 'TokenId');
    dio.options.headers = {
      'Authorization':'Bearer ${tokenVerify.isEmpty ? token : tokenVerify}',
    };*/
    return await dio.get(
      url ,
      data: data,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String,dynamic>? query ,
    required dynamic data ,
    String tokenVerify = ''
  }) async
  {
/*    token = CacheHelper.getData(key: 'TokenId');
    dio.options.headers = {
      'Authorization':'Bearer ${tokenVerify.isEmpty ? token : tokenVerify}',
    };*/
     return dio.post(
       url ,
       queryParameters: query,
       data: data,
     );
  }

  static Future<Response> putData({
    required String url,
    Map<String,dynamic>? query ,
    required dynamic data ,
  }) async
  {
/*    token = CacheHelper.getData(key: 'TokenId');
    dio.options.headers = {
      'Authorization':'Bearer $token',
    };*/
    return dio.put(
      url ,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> deleteData({
    required String url,
    dynamic data,
  }) async
  {
/*    token = CacheHelper.getData(key: 'TokenId');
    dio.options.headers = {
      'Authorization':'Bearer $token',
    };*/
    return dio.delete(
      url ,
      data: data,
    );
  }


  static Future<dynamic> getPlace({
    required String url,
  }) async
  {
    return Dio(
      BaseOptions(
        baseUrl: 'https://geocode.maps.co/reverse?'
      )
    ).get(url);
  }


}