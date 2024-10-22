import 'package:dio/dio.dart';
const String BASE_URL = 'https://de1.api.radio-browser.info/';
class DioClient{
  Dio? dio;
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;
  DioClient._internal(){

  }
}