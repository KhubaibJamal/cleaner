import 'package:flutter/material.dart';
import 'package:kleeners/component/default_button.dart';
import 'package:kleeners/screens/payment/payment_screen.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class ProceedToPay extends StatelessWidget {
  const ProceedToPay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(18)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kGreyColor),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 16),
            blurRadius: 16,
            color: const Color(0xFFF5F5F5).withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rs. 899", style: headingStyle),
              SizedBox(height: getProportionateScreenWidth(10)),
              Text(
                "View detailed bill",
                style: greyStyle.copyWith(
                  color: const Color(0xFF2095FD),
                  fontSize: getProportionateScreenWidth(15),
                ),
              ),
            ],
          ),
          SizedBox(
            width: SizeConfig.screenWidth! / 3,
            child: DefaultButton(
              text: "Continue",
              press: () {
                Navigator.pushNamed(context, PaymentScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
