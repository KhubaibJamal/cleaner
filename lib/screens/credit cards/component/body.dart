import 'package:flutter/material.dart';
import 'package:kleeners/component/background_image.dart';
import 'package:kleeners/const.dart';
import 'package:kleeners/screens/credit%20cards/component/payment_box.dart';
import 'package:kleeners/screens/credit%20cards/component/proceed_to_pay.dart';
import 'package:kleeners/size_config.dart';

import 'credit_card_box.dart';

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

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // logo
                  SizedBox(height: SizeConfig.screenWidth! * 0.1),
                  Center(
                    child: Image.asset(
                      'assets/images/new logo.png',
                      scale: 1.5,
                    ),
                  ),

                  // text
                  SizedBox(height: SizeConfig.screenWidth! * 0.1),
                  Text("Credit & Debit Cards", style: headingStyle),

                  // credit card box
                  SizedBox(height: getProportionateScreenWidth(20)),
                  const CreditCardBox(),

                  // payment box
                  SizedBox(height: SizeConfig.screenWidth! * 0.1),
                  const PaymentBox(),

                  // proceed to pay
                  SizedBox(height: SizeConfig.screenWidth! * 0.2),
                  const ProceedToPay(),

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
