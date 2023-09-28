import 'package:flutter/material.dart';
import 'package:kleeners/screens/payment/component/body.dart';

class PaymentScreen extends StatelessWidget {
  static String routeName = "/payment";
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
