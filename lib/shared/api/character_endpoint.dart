import 'package:dio/dio.dart';

class CharacterEndpoint {
  final Dio _dio;

  CharacterEndpoint(this._dio);

  Future<Response> getAllCharacters() {
    return _dio.get("/character");
  }
}
