import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DioContainer {
  late Dio dio;

  @factoryMethod
  DioContainer() {
    final options = BaseOptions(
      baseUrl: 'https://www.dnd5eapi.co',
      connectTimeout: 15000,
      receiveTimeout: 15000,
    );
    dio = Dio(options);
  }

  void setInterceptor(Interceptor interceptor) {
    deleteInterceptor(interceptor.runtimeType);
    dio.interceptors.add(interceptor);
  }

  void deleteInterceptor(Type interceptorType) {
    dio.interceptors
        .removeWhere((element) => element.runtimeType == interceptorType);
  }
}
