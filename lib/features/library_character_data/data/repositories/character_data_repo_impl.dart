import 'package:injectable/injectable.dart';

import '../../../../app/data/models/base/reference_base_model.dart';
import '../../../../app/network/dnd5e_api.dart';
import '../../domain/repositories/character_data_repo.dart';
import '../models/ability_score_model.dart';

@LazySingleton(as: CharacterDataRepo)
class CharacterDataRepoImpl extends CharacterDataRepo {
  final Dnd5eApi api;

  CharacterDataRepoImpl(this.api);

  @override
  Future<List<ReferenceBaseModel>> fetchScoreModels() =>
      api.dndRequestList('/api/ability-scores');

  @override
  Future<AbilityScoreModel> fetchScoreModel(String name) {
    // TODO: implement fetchScoreModel
    throw UnimplementedError();
  }
}
