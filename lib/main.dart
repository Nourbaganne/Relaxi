import 'package:flutter/material.dart';
import 'package:relaxy_pfa_project/Screens/Welcome/welcome_screen.dart';
import 'package:relaxy_pfa_project/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      home: const WelcomeScreen(),
    );
  }
}

