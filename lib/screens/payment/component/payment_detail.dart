import 'package:flutter/material.dart';
import 'package:kleeners/screens/home/home_screen.dart';
import 'package:kleeners/screens/payment/component/recipient_detail.dart';
import 'package:kleeners/screens/payment/component/view_payment.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class PaymentDetail extends StatelessWidget {
  const PaymentDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.9,
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: kGreyColor, width: 2),
        // boxShadow: const [
        //   BoxShadow(
        //     offset: Offset.zero,
        //     spreadRadius: 1.0,
        //     blurRadius: 5,
        //   )
        // ],
      ),
      child: Column(
        children: [
          // date time
          Text(
            "12 August 2023 21:58 GMT+7",
            style:
                greyStyle.copyWith(fontSize: getProportionateScreenWidth(15)),
          ),

          // price
          SizedBox(height: getProportionateScreenWidth(15)),
          Text(
            "Rs. 899.00",
            style: headingStyle.copyWith(
              fontSize: getProportionateScreenWidth(25),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          const Divider(color: kGreyColor, thickness: 2.0),

          // recipients detail
          SizedBox(height: getProportionateScreenWidth(15)),
          const RecipientsDetail(),

          SizedBox(height: getProportionateScreenWidth(15)),
          const Divider(color: kGreyColor, thickness: 2.0),

          // download and share
          SizedBox(height: getProportionateScreenWidth(20)),
          const ViewPayment(),

          // booking button
          SizedBox(height: getProportionateScreenWidth(20)),
          SizedBox(
            width: double.infinity,
            child: DefaultButton(
              text: "Start Booking",
              bgColor: const Color(0xFF00A1FF),
              press: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
