import 'package:api_example/shared/repository/character_repository.dart';
import 'package:riverpod/riverpod.dart';
import '../api/character_enpoint_provider.dart';

final characterRepositoryProvider = Provider((ref) {
  return CharacterRepository(
      characterEndpoint: ref.read(characterEndpointProvider));
});
