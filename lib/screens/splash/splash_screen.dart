import 'package:flutter/material.dart';
import 'package:kleeners/screens/splash/component/body.dart';
import 'package:kleeners/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
