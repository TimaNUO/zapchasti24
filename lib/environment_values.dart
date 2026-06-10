import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Test';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _SupabaseUrl = data['SupabaseUrl'];
      _SupabaseAnonKey = data['SupabaseAnonKey'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _SupabaseUrl = '';
  String get SupabaseUrl => _SupabaseUrl;

  String _SupabaseAnonKey = '';
  String get SupabaseAnonKey => _SupabaseAnonKey;
}
