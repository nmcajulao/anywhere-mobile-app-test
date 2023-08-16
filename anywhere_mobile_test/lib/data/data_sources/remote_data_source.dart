import 'package:anywhere_mobile_test/data/models/simpsons_character_data_model/simpsons_character_data_model.dart';

abstract class RemoteDataSource {
  Future<SimpsonsCharacterDataModel> getCharacters();
}
