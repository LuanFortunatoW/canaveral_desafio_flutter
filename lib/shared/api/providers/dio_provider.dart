// ignore_for_file: depend_on_referenced_packages

import 'package:riverpod/riverpod.dart';
import 'package:dio/dio.dart';

final dioProvider = Provider((ref) => Dio());
