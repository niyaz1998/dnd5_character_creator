import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../features/library/data/models/dnd_resource_descriptor.dart';
import '../data/models/base/reference_base_model.dart';
import '../data/models/resource_list_model.dart';

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

extension DnD5eAPI on Dio {
  Future<ResourceListModel<T>> dndRequestList<T extends ReferenceBaseModel>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    DndResourceDescriptor<T> descriptor = DndResourceDescriptor
        .resourceDescriptors[T]! as DndResourceDescriptor<T>;
    var response = await request(
      path,
      data: data,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      options: options,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    Map<String, dynamic> json = jsonDecode(response.data as String);
    ResourceListModel<T> result = ResourceListModel.fromJson(
      json,
      descriptor.fromJsonT,
    );
    return result;
  }
}
