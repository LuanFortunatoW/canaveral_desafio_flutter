import 'package:json_annotation/json_annotation.dart';

part 'character_result_location_response.g.dart';

@JsonSerializable()
class CharacterResultLocationResponse {
  CharacterResultLocationResponse({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory CharacterResultLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResultLocationResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CharacterResultLocationResponseToJson(this);
}
