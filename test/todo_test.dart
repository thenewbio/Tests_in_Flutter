import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_a_test/widget_test/todo_screen.dart';

void main() {
  testWidgets("Add and Remove todo", (test) async {
    await test.pumpWidget(const TodoList());

    await test.enterText(find.byType(TextField), "Hello Innocent");

    await test.tap(find.byType(FloatingActionButton));

    await test.pump();

    expect(find.text("Hello Innocent"), findsOneWidget);

    await test.drag(find.byType(Dismissible), const Offset(500.0, 0.0));

    await test.pumpAndSettle();

    expect(find.text("Hello Innocent"), findsNothing);
  });
}
