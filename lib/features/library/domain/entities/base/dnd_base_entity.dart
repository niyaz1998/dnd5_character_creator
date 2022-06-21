import 'package:flutter/foundation.dart';

@immutable
class DndBaseEntity {
  const DndBaseEntity({
    required this.name,
    required this.index,
  });

  final String name;
  final String? index;
}
