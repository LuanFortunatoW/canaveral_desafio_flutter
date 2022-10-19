import 'package:api_example/characters/model/character_view_data.dart';
import 'package:api_example/characters/usecase/character_use_case.dart';
import 'package:api_example/shared/repository/character_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getCharactersUseCase = Provider((ref) {
  return GetCharactersUseCase(
      repository: ref.read(characterRepositoryProvider));
});

final charactersProvider = FutureProvider<List<CharacterViewData>>((ref) async {
  return ref.read(getCharactersUseCase).execute();
});
