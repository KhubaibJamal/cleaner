import 'package:flutter/material.dart';
import 'package:kleeners/screens/membership/component/body.dart';

class MembershipScreen extends StatelessWidget {
  static String routeName = "/memberships";
  const MembershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
