import 'package:flutter/material.dart';
import 'package:kleeners/component/default_button.dart';
import 'package:kleeners/const.dart';
import 'package:kleeners/screens/sign_in/component/text_fields.dart';

import '../../../size_config.dart';
import 'forgot_text.dart';
import 'kaap_me_signin_text.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(35),
      ),
      width: SizeConfig.screenWidth!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // app logo
          Image.asset(
            'assets/images/logo.png',
            height: getProportionateScreenHeight(300),
            width: getProportionateScreenWidth(300),
          ),

          // email and phone number
          Row(
            children: [
              Text(
                "Email",
                style: TextStyle(
                  color: kDarkGreyColor,
                  fontWeight: FontWeight.w500,
                  fontSize: getProportionateScreenWidth(20),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
              Text(
                "Phone Number",
                style: TextStyle(
                  color: kLightGreyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: getProportionateScreenWidth(18),
                ),
              ),
            ],
          ),

          // email address text
          SizedBox(height: getProportionateScreenWidth(18)),
          Text("Email Address", style: headingStyle),

          // text field
          SizedBox(height: getProportionateScreenWidth(18)),
          const TextFields(),

          // password and forget password
          SizedBox(height: getProportionateScreenWidth(10)),
          const ForgotPassword(),

          // check box
          const KeepMeLogIn(),

          // login button
          SizedBox(height: getProportionateScreenWidth(10)),
          DefaultButton(text: "Login", press: () {}),
        ],
      ),
    );
  }
}
