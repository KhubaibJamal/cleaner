import 'package:flutter/material.dart';
import 'sign_in_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          bottom: 0,
          child: Image.asset('assets/images/background light.png'),
        ),
        const SignInForm(),
      ],
    );
  }
}
