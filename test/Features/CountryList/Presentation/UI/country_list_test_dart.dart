import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void testList() {
  testWidgets('ListView.builder bottomsheet test', (WidgetTester tester) async {
    // Create a listview.builder.
    expect(find.byType(ListView.builder as Type), findsOneWidget);

    // Tap on the listview.

    // Expect the bottomsheet to be opened.
    expect(find.byType(BottomSheet), findsOneWidget);
  });
}
