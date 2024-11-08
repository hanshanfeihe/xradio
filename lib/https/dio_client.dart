import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
const String baseUrl = 'https://de1.api.radio-browser.info/';
const int connectTimeout = 5000;
const int receiveTimeout = 5000;

class DioClient{
  late Dio dio;
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;
  DioClient._internal(){
    dio=Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(milliseconds: connectTimeout),
          receiveTimeout: const Duration(milliseconds: receiveTimeout),
          responseType: ResponseType.json
        )
      );
    dio.interceptors.add(PrettyDioLogger(enabled: kDebugMode));
  }
  ///请求方法
  Future<Response<T>> request<T>({required String path,Map<String,dynamic>? params,bool? isGet = true}) async{
    Response<T> response;
    if(isGet==true){
      response = await dio.get<T>(path,queryParameters: params);
    }else{
      response = await dio.post<T>(path,queryParameters: params);
    }
    return response;
  }
}
// 异常类
class ErrorModel implements Exception {
  int code;
  String? message;

  ErrorModel({required this.code, this.message});

  @override
  String toString() {
    if (message == null) return "未知异常！！";
    return "Exception: code $code, errorMessage:$message";
  }
}
ErrorModel getErrorModelByType(DioException exception){
  ErrorModel errorModel = ErrorModel(code: -1,message: '未知错误！！');
  switch(exception.type){
    case DioExceptionType.connectionTimeout:
      // TODO: Handle this case.
    case DioExceptionType.sendTimeout:
      // TODO: Handle this case.
    case DioExceptionType.receiveTimeout:
      // TODO: Handle this case.
    case DioExceptionType.badCertificate:
      // TODO: Handle this case.
    case DioExceptionType.badResponse:
      // TODO: Handle this case.
    case DioExceptionType.cancel:
      // TODO: Handle this case.
    case DioExceptionType.connectionError:
      // TODO: Handle this case.
    case DioExceptionType.unknown:
      // TODO: Handle this case.
  }
  return errorModel;
}
class ErrorInterceptor extends Interceptor{

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('ERROR STATE CODE:[${err.response?.statusCode}]');
  }
}