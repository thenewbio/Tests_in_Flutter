import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_a_test/widget_test/widget_testing.dart';

void main() {
  testWidgets('WidgetTesting has only title and message', (test) async {
    await test.pumpWidget(
      const WidgetTesting(
          title: "Innocent",
          message: "Was a lover of dart and flutter framework"),
    );

    final titleFind = find.text("Innocent");
    final messageFind = find.text("Was a lover of dart and flutter framework");

    expect(titleFind, findsOneWidget);
    expect(messageFind, findsOneWidget);
  });
}
