import 'package:flutter_test/flutter_test.dart';
import 'package:villishop_customer/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:villishop_customer/core/services/shared_pref_service.dart';

void main() {
  testWidgets('Splash screen smoke test', (WidgetTester tester) async {
    // Mock SharedPreferences
    SharedPreferences.setMockInitialValues({});
    final sharedPrefs = await SharedPreferences.getInstance();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sharedPreferencesServiceProvider.overrideWithValue(SharedPreferenceService(sharedPrefs)),
        ],
        child: const VilliShopApp(),
      ),
    );

    // Verify that Splash screen is shown (contains VilliShop text)
    expect(find.text('VilliShop'), findsOneWidget);
  });
}
