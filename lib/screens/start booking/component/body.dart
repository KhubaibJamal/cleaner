import 'package:flutter/material.dart';
import 'package:kleeners/component/default_button.dart';
import 'package:kleeners/const.dart';
import 'package:kleeners/screens/start%20booking/component/start_booking.dart';

import '../../../size_config.dart';
import '../../../component/background_image.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // background image
          const BackgroundImage(),

          //
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(35)),
            width: SizeConfig.screenWidth!,
            child: Column(
              children: [
                // app logo
                SizedBox(height: SizeConfig.screenWidth! * 0.2),
                Image.asset('assets/images/new logo.png', scale: 1.5),

                // start booking
                SizedBox(height: SizeConfig.screenHeight! * 0.1),
                Text(
                  "START BOOKING",
                  style: headingStyle.copyWith(
                    color: const Color(0xFF59979B),
                  ),
                ),

                // via call button
                SizedBox(height: SizeConfig.screenHeight! * 0.1),

                DefaultButton(
                  text: "Via Call",
                  bgColor: kLightBlueColor,
                  press: () {},
                ),
                SizedBox(height: getProportionateScreenWidth(15)),
                DefaultButton(
                  text: "Via Application",
                  bgColor: kLightBlueColor,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StartBooking(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
