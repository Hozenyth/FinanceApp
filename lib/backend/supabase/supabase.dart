import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://lgejxhztgyvtqadgdikc.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxnZWp4aHp0Z3l2dHFhZGdkaWtjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjM2NTQzMTIsImV4cCI6MjAzOTIzMDMxMn0.4P6102KqxR-Zy-aBI6lO1nikAHjgex0T-jpLPT2FG6Y';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
