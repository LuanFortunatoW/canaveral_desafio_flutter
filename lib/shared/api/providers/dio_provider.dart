// ignore_for_file: depend_on_referenced_packages

import 'package:api_example/shared/api/providers/base_url_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:dio/dio.dart';

final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: ref.watch(
        baseUrlProvider,
      ),
    ),
  ),
);
