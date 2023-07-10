// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:countrylist/Features/CountryList/Presentation/Bloc/countries_bloc.dart';
import 'package:countrylist/Features/HomeScreen/Presentation/Bloc/homepage_controller_cubit.dart';
import 'package:countrylist/Features/HomeScreen/Presentation/UI/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Edit country name test', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget( HomeScreen(),
    );

    // await tester.tap(find.text('Afghanistan'));
    // await tester.pumpAndSettle();
    // await tester.enterText(find.byType(TextField), 'New Country Name');
    // await tester.pump();
    // await tester.pumpAndSettle();
  });
}
