import 'reference_base_entity.dart';

class DescribedBaseEntity extends ReferenceBaseEntity {
  const DescribedBaseEntity({
    required this.description,
    required super.index,
    required super.name,
    required super.url,
  });

  final List<String> description;
}
