import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../data/models/base/reference_base_model.dart';
import '../data/models/json_parsers/reference_model_converter.dart';
import '../data/models/resource_list_model.dart';
import 'dio_container.dart';

@Injectable()
class Dnd5eApi {
  final DioContainer dioContainer;

  Dnd5eApi(this.dioContainer);

  Future<T> dndRequest<T extends ReferenceBaseModel>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    var response = await dioContainer.dio.request(
      path,
      data: data,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      options: options,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return ResourceListModelConverter<T>().fromJson(response.data);
  }

  Future<List<T>> dndRequestList<T extends ReferenceBaseModel>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    var response = await dioContainer.dio.request(
      path,
      data: data,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      options: options,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    ResourceListModel<T> result = ResourceListModel.fromJson(response.data);
    return result.results;
  }
}
