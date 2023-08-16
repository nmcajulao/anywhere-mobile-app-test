import 'package:anywhere_mobile_test/core/resources/data_state.dart';
import 'package:anywhere_mobile_test/domain/entities/character_entity.dart';

abstract class CharacterRepository {
  Future<DataState<List<CharacterEntity>>> getCharacters();
}
