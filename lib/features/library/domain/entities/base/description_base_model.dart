import 'reference_base_model.dart';

class DescribedBaseModel extends ReferenceBaseModel {
  const DescribedBaseModel({
    required this.description,
    required super.index,
    required super.name,
    required super.url,
  });

  final List<String> description;
}
