import 'package:api_example/shared/api/models/character/character_result_location_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_result_response.g.dart';

@JsonSerializable()
class CharacterResultResponse {
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

  CharacterResultResponse(
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  );

  factory CharacterResultResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterResultResponseToJson(this);
}
