import 'package:flutter/material.dart';
import 'package:kleeners/component/background_image.dart';
import 'package:kleeners/const.dart';
import 'package:kleeners/screens/membership/component/membership_form.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          // background image
          const BackgroundImage(),

          // membership form
          Container(
            width: SizeConfig.screenWidth!,
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(35),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenWidth! * 0.1),
                  Center(
                    child: Image.asset(
                      'assets/images/new logo.png',
                      scale: 1.5,
                    ),
                  ),

                  // membership form text
                  SizedBox(height: getProportionateScreenWidth(20)),
                  Text("Membership Form", style: headingStyle),

                  // form
                  SizedBox(height: getProportionateScreenWidth(30)),
                  const MembershipForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
