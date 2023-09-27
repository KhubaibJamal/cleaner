import 'package:flutter/material.dart';
import 'package:kleeners/screens/credit%20cards/component/body.dart';

class CreditCardScreen extends StatelessWidget {
  static String routeName = "/credit_card";
  const CreditCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
