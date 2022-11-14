// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator_app/Screens/CalculatorScreen.dart';
import 'package:bmi_calculator_app/auth/LoginScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'auth/authentication.dart';
import 'package:flutter/services.dart';

final auth = Authentication();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bmi calculator',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: LoginScreen(),
    );
  }
}
