import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ftl_issue_demo/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('demo integration tests', () {
    testWidgets('this test will fail', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // This will fail as there are no ElevatedButtons in the app
      expect(find.byType(ElevatedButton), findsOneWidget);
    });
  });
}