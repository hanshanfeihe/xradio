import 'package:dio/dio.dart';
const String baseUrl = 'https://de1.api.radio-browser.info/';
const int connectTimeout = 5000;
const int receiveTimeout = 5000;

class DioClient{
  Dio? dio;
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;
  DioClient._internal(){
    dio ??= Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(milliseconds: connectTimeout),
          receiveTimeout: const Duration(milliseconds: receiveTimeout)
        )
      );
  }
  // static Future<void> requestData() async{
  //
  // }
}