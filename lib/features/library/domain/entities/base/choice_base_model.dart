import 'package:flutter/foundation.dart';

import 'reference_base_model.dart';

@immutable
class ChoiceBaseModel {
  const ChoiceBaseModel({
    required this.choose,
    required this.type,
    required this.from,
  });

  final int choose;
  final String type;
  final List<ReferenceBaseModel> from;
}
