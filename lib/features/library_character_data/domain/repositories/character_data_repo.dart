import '../../../../app/data/models/base/reference_base_model.dart';
import '../../data/models/ability_score_model.dart';

abstract class CharacterDataRepo {
  Future<List<ReferenceBaseModel>> fetchScoreModels();
  Future<AbilityScoreModel> fetchScoreModel(String name);
}