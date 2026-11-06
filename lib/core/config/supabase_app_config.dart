/// Public client configuration for the dedicated VilliShop Supabase project.
///
/// Supply values at build time:
/// --dart-define=SUPABASE_URL=https://<project-ref>.supabase.co
/// --dart-define=SUPABASE_PUBLISHABLE_KEY=sb_publishable_...
///
/// These are public client values. Never put a Supabase secret/service-role key here.
class SupabaseAppConfig {
  SupabaseAppConfig._();

  static const String url = String.fromEnvironment('SUPABASE_URL');
  static const String publishableKey =
      String.fromEnvironment('SUPABASE_PUBLISHABLE_KEY');

  static bool get isConfigured =>
      url.startsWith('https://') && publishableKey.startsWith('sb_publishable_');
}
