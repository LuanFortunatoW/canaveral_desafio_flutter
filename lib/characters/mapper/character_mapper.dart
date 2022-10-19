import 'package:api_example/characters/model/character_view_data.dart';
import 'package:api_example/shared/api/models/character/get_all_characters_response.dart';

extension CharacterMapper on GetCharactersResponse {
  List<CharacterViewData> toViewData() {
    return results
        .map((result) => CharacterViewData(
            id: result.id,
            name: result.name,
            status: result.status,
            species: result.species,
            type: result.type,
            gender: result.gender,
            origin: result.origin,
            location: result.location,
            image: result.image,
            episode: result.episode,
            url: result.url,
            created: result.created))
        .toList();
  }
}
