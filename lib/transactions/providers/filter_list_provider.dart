// ignore_for_file: depend_on_referenced_packages

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final filterListProvider =
    StateNotifierProvider<FilterListNotifier, Set<String>>(
  (ref) => FilterListNotifier(),
);

class FilterListNotifier extends StateNotifier<Set<String>> {
  FilterListNotifier() : super({});

  bool checked = false;

  setValues(bottomSheeetCallback) {
    if (bottomSheeetCallback != null && bottomSheeetCallback.isEmpty) {
      state.clear();
      checked = false;
      bottomSheeetCallback = null;
    }
    if (bottomSheeetCallback != null) {
      checked = true;
      state = bottomSheeetCallback.toSet();
    } else if (state.isEmpty) {
      checked = false;
    }
  }

  bool verifyContainsStatus(status) {
    return state.contains(status);
  }
}
