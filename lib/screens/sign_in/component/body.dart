import 'package:flutter/material.dart';
import 'package:kleeners/component/background_image.dart';
import 'sign_in_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // background image
          BackgroundImage(),
          SignInForm(),
        ],
      ),
    );
  }
}
