import 'package:api_example/shared/api/character_endpoint.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final characterEndpointProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://rickandmortyapi.com/api',
  ));
  return CharacterEndpoint(dio);
});
