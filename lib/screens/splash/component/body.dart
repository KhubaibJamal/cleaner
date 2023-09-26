import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kleeners/screens/sign_in/sign_in_screen.dart';
import 'package:kleeners/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, SignInScreen.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset('assets/images/background.png'),
          ),
          Positioned(
            top: SizeConfig.screenHeight! * 0.09,
            child: Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
    );
  }
}
