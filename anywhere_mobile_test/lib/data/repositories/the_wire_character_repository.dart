import 'package:anywhere_mobile_test/data/models/the_wire_character_data_model/the_wire_character_data_model.dart';

abstract class TheWireCharactersRepository {
  Future<TheWireCharacterDataModel> getSimpsonsCharacter();
}
