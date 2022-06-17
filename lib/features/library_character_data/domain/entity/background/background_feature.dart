import '../../../../library/domain/entities/base/description_base_entity.dart';

class BackgroundFeature extends DescribedBaseEntity {
  const BackgroundFeature({
    required super.description,
    required this.name,
  });

  final String name;
}
