import 'package:flutter/material.dart';
import 'package:kleeners/screens/sign_up/component/sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset('assets/images/background light.png'),
          ),
          const SignUpForm()
        ],
      ),
    );
  }
}
