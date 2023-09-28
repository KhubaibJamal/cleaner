import 'package:flutter/material.dart';
import 'package:kleeners/component/background_image.dart';

import 'package:kleeners/const.dart';
import 'package:kleeners/screens/payment/component/payment_detail.dart';
import 'package:kleeners/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          // background image
          const BackgroundImage(),

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // logo
                  SizedBox(height: SizeConfig.screenWidth! * 0.1),
                  Center(
                    child: Image.asset(
                      'assets/images/new logo.png',
                      scale: 1.5,
                    ),
                  ),

                  // payment success
                  SizedBox(height: SizeConfig.screenWidth! * 0.1),
                  Text(
                    "Payment Success!",
                    style: headingStyle.copyWith(
                        fontSize: getProportionateScreenWidth(30),
                        color: const Color(0xFF7CB342)),
                  ),

                  // member now text
                  SizedBox(height: getProportionateScreenWidth(20)),
                  Text(
                    "You are a member Now",
                    style: greyStyle.copyWith(
                      fontSize: getProportionateScreenWidth(25),
                    ),
                  ),

                  // payment detail
                  SizedBox(height: SizeConfig.screenWidth! * 0.1),
                  const PaymentDetail(),

                  SizedBox(height: getProportionateScreenWidth(20)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
