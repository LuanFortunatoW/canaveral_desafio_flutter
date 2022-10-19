import 'package:api_example/shared/api/models/character/character_result_location_response.dart';

class CharacterViewData {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final CharacterResultLocationResponse origin;
  final CharacterResultLocationResponse location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;

  CharacterViewData({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });
}
