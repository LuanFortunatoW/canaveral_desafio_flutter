// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_characters_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCharactersResponse _$GetCharactersResponseFromJson(
        Map<String, dynamic> json) =>
    GetCharactersResponse(
      CharacterInfoResponse.fromJson(json['info'] as Map<String, dynamic>),
      (json['results'] as List<dynamic>)
          .map((e) =>
              CharacterResultResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCharactersResponseToJson(
        GetCharactersResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
