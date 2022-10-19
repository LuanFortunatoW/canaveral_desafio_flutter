import 'package:api_example/shared/api/models/character/get_all_characters_response.dart';
import '../api/character_endpoint.dart';

class CharacterRepository {
  final CharacterEndpoint characterEndpoint;

  CharacterRepository({required this.characterEndpoint});

  Future<GetCharactersResponse> getAllCharacters() async {
    final result = await characterEndpoint.getAllCharacters();
    return GetCharactersResponse.fromJson(result.data);
  }
}
