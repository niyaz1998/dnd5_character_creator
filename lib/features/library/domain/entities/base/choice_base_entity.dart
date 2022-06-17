import 'package:flutter/foundation.dart';

import 'dnd_base_entity.dart';
import 'reference_base_entity.dart';

abstract class ChoiceBaseInterface {
  int get choose;

  String get type;

  List<Object> get from;
}

class ChoiceBaseEntityString implements ChoiceBaseInterface {
  const ChoiceBaseEntityString({
    required this.choose,
    required this.type,
    required this.from,
  });

  @override
  final int choose;
  @override
  final String type;
  @override
  final List<String> from;
}

@immutable
class ChoiceBaseEntity<T extends DndBaseEntity> implements ChoiceBaseInterface {
  const ChoiceBaseEntity({
    required this.choose,
    required this.type,
    required this.from,
  });

  @override
  final int choose;
  @override
  final String type;
  @override
  final List<ReferenceBaseEntity<T>> from;
}
