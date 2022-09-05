import 'package:flutter/material.dart';
import 'package:plantapp/pages/home_page.dart';
import 'package:plantapp/pages/landing_page.dart';
import 'package:plantapp/pages/main_page.dart';
import 'package:plantapp/pages/species_page.dart';
import 'package:plantapp/sign/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/main': (context) => MainPage(),
        '/home': (context) => HomePage(),
        '/species': (context) => SpeciesPage(),
      },
    );
  }
}
