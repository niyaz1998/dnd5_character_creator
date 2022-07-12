import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

class DescriptionConverter implements JsonConverter<List<String>, Object> {
  const DescriptionConverter();

  @override
  List<String> fromJson(Object json) {
    if (json is String) {
      return [json];
    } else if (json is List) {
      return json.map((e) => e is String ? e : null).whereNotNull().toList();
    }

    throw ArgumentError('not supported desc format by DescriptionConverter');
  }

  @override
  Object toJson(List<String> object) => object;
}
