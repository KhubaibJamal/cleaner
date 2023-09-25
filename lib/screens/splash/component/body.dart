import 'package:flutter/material.dart';
import 'package:kleeners/size_config.dart';

import '../../../component/background_image.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const BackgroundImage(),
          Positioned(
            top: SizeConfig.screenHeight! * 0.09,
            child: Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
    );
  }
}
