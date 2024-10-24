import 'package:flutter_test/flutter_test.dart';

import 'package:typversium/typversium_app.dart';

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const TypversiumApp());
  });
}
