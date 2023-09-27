import 'package:flutter/material.dart';
import 'package:kleeners/screens/start%20booking/component/body.dart';

class StartBookingScreen extends StatelessWidget {
  static String routeName = "/start_booking";
  const StartBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
