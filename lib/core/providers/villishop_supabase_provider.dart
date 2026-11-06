import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../config/supabase_app_config.dart';

/// Returns the initialized Supabase client, or null until the app is built
/// with the dedicated VilliShop project's public URL and publishable key.
final villishopSupabaseClientProvider = Provider<SupabaseClient?>((ref) {
  if (!SupabaseAppConfig.isConfigured) return null;
  try {
    return Supabase.instance.client;
  } on StateError {
    return null;
  }
});

final villishopSupabaseConfiguredProvider = Provider<bool>((ref) {
  return SupabaseAppConfig.isConfigured;
});
