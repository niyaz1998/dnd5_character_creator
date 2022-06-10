import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../features/library/data/models/dnd_resource_descriptor.dart';
import '../data/models/base/reference_base_model.dart';
import '../data/models/resource_list_model.dart';
import 'dio_container.dart';

@Injectable()
class Dnd5eApi {
  final DioContainer dioContainer;

  Dnd5eApi(this.dioContainer);

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
    var response = await dioContainer.dio.request(
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
