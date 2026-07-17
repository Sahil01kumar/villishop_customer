import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('Minimal smoke test', (WidgetTester tester) async {
    // Verify that the test environment is working.
    // Full app testing is deferred to integration tests due to 
    // heavy dependencies on platform plugins (Firebase, Google Maps).
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: Scaffold(
            body: Text('VilliShop Test'),
          ),
        ),
      ),
    );

    expect(find.text('VilliShop Test'), findsOneWidget);
  });
}
