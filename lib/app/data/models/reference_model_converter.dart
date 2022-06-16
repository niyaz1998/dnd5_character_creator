import 'package:json_annotation/json_annotation.dart';

import '../../../features/library_character_data/data/models/ability_score_model.dart';
import '../../../features/library_character_data/data/models/alignment_model.dart';
import '../../../features/library_character_data/data/models/background_model.dart';
import '../../../features/library_character_data/data/models/language_model.dart';
import '../../../features/library_character_data/data/models/proficiency_model.dart';
import '../../../features/library_character_data/data/models/skill_model.dart';
import 'base/description_base_model.dart';
import 'base/reference_base_model.dart';

class ResourceListModelConverter<T extends ReferenceBaseModel>
    implements JsonConverter<T, Map<String, dynamic>> {
  const ResourceListModelConverter();

  @override
  T fromJson(Map<String, dynamic> json) {
    switch (T) {
      case AbilityScoreModel:
        return AbilityScoreModel.fromJson(json) as T;
      case AlignmentModel:
        return AlignmentModel.fromJson(json) as T;
      case BackgroundModel:
        return BackgroundModel.fromJson(json) as T;
      case LanguageModel:
        return LanguageModel.fromJson(json) as T;
      case ProficiencyModel:
        return ProficiencyModel.fromJson(json) as T;
      case SkillModel:
        return SkillModel.fromJson(json) as T;
      case DescribedBaseModel:
        return DescribedBaseModel.fromJson(json) as T;
      case ReferenceBaseModel:
        return ReferenceBaseModel.fromJson(json) as T;
    }

    throw ArgumentError('not supported ReferenceBaseModel by JsonConverter');
  }

  @override
  Map<String, dynamic> toJson(T object) => object.toJson();
}
