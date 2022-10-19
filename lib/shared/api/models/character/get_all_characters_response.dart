import 'package:api_example/shared/api/models/character/character_info_response.dart';
import 'package:api_example/shared/api/models/character/character_result_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_characters_response.g.dart';

@JsonSerializable()
class GetCharactersResponse {
  final CharacterInfoResponse info;
  final List<CharacterResultResponse> results;

  GetCharactersResponse(this.info, this.results);

  factory GetCharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCharactersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCharactersResponseToJson(this);
}
