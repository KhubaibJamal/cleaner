import 'package:flutter/material.dart';
import 'package:kleeners/route.dart';
import 'package:kleeners/screens/splash/splash_screen.dart';
import 'package:kleeners/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kleen & Kleeners',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}
