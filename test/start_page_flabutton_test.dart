import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StartPage test, flatButton tap', () {
    testWidgets('finds a widget using a Key', (WidgetTester tester) async {
      // await tester.pumpWidget(MyApp());
      // Define the test key.
      final testKey = Key('flat_key');
      // Build a MaterialApp with the testKey.
      await tester.pumpWidget(MaterialApp(key: testKey, home: Container()));
      await tester.tap(find.byKey(testKey));
      // Wait for all the animations to finish
      await tester.pumpAndSettle();
      // Find the MaterialApp widget using the testKey.
      expect(find.byKey(testKey), findsOneWidget);
      expect(find.byKey(testKey), findsOneWidget);
    });
  });
}