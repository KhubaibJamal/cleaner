import 'package:flutter/material.dart';
import 'package:kleeners/screens/credit%20cards/credit_card_screen.dart';
import 'package:kleeners/screens/home/home_screen.dart';
import 'package:kleeners/screens/membership/membership_screen.dart';
import 'package:kleeners/screens/payment/payment_screen.dart';
import 'package:kleeners/screens/sign_in/sign_in_screen.dart';
import 'package:kleeners/screens/sign_up/sign_up_screen.dart';
import 'package:kleeners/screens/splash/splash_screen.dart';
import 'package:kleeners/screens/start%20booking/start_booking_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  StartBookingScreen.routeName: (context) => const StartBookingScreen(),
  MembershipScreen.routeName: (context) => const MembershipScreen(),
  CreditCardScreen.routeName: (context) => const CreditCardScreen(),
  PaymentScreen.routeName: (context) => const PaymentScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
