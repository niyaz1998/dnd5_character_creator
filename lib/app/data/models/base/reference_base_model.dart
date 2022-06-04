/// базовая сущность всего dnd 5e API
class ReferenceBaseModel {
  /// идентификатор в dnd5eAPI
  final String index;
  /// название, для пользователя
  final String name;
  /// адрес куда можно обратиться за детальной информацией
  final String url;

  ReferenceBaseModel({
    required this.index,
    required this.name,
    required this.url,
  });
}
