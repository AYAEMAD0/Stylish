import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:stylish/api/api_end_points.dart';
import 'package:stylish/api/api_services.dart';
import 'package:stylish/api/dio/dio_interceptor.dart';

@module
abstract class DioModule {
  @singleton
  @injectable
  BaseOptions provideBaseOption() {
    return BaseOptions(
      baseUrl: ApiEndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );
  }

  @singleton
  @injectable
  PrettyDioLogger providePrettyLogger() {
    return PrettyDioLogger(
      error: true,
      request: true,
      responseBody: true,
      requestBody: true,
      responseHeader: true,
      requestHeader: true,
    );
  }

  @singleton
  @injectable
  Dio provideDio(BaseOptions baseOptions, PrettyDioLogger prettyLogger) {
    Dio dio = Dio(baseOptions);
    //todo dio inter
    dio.interceptors.add(DioInterceptor());
    dio.interceptors.add(prettyLogger);
    return dio;
  }

  @singleton
  @injectable
  ApiServices provideApiServices(Dio dio) {
    return ApiServices(dio);
  }

}
