import 'reference_base_model.dart';

/// базовая модель dnd5e API
/// представляет собой выбор из каких то сущностей
class ChoiceBaseModel {
  final int choose;
  final String type;
  final List<ReferenceBaseModel> from;

  const ChoiceBaseModel({
    required this.choose,
    required this.type,
    required this.from,
  });
}
