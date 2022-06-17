import 'package:flutter/foundation.dart';

import 'dnd_base_entity.dart';

@immutable
class ReferenceBaseEntity<T extends DndBaseEntity> {
  const ReferenceBaseEntity({
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
