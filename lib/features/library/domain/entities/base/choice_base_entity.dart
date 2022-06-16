import 'package:flutter/foundation.dart';

import 'reference_base_entity.dart';

@immutable
class ChoiceBaseEntity {
  const ChoiceBaseEntity({
    required this.choose,
    required this.type,
    required this.from,
  });

  final int choose;
  final String type;
  final List<ReferenceBaseEntity> from;
}
