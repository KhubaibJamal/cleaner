import 'package:flutter/material.dart';
import 'package:kleeners/screens/sign_in/sign_in_screen.dart';
import 'package:kleeners/screens/sign_up/sign_up_screen.dart';
import 'package:kleeners/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};
