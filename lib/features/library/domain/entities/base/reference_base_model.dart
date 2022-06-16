import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

@immutable
class ReferenceBaseModel {
  const ReferenceBaseModel({
    required this.index,
    required this.name,
    required this.url,
  });

  /// идентификатор в dnd5eAPI
  final String index;

  /// название, для пользователя
  final String name;

  /// адрес куда можно обратиться за детальной информацией
  final String url;
}
