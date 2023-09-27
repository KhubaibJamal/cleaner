import 'package:flutter/material.dart';
import 'package:kleeners/component/default_button.dart';
import 'package:kleeners/const.dart';
import 'package:kleeners/screens/sign_in/component/signin_with_text.dart';
import 'package:kleeners/screens/sign_in/component/text_fields.dart';
import 'package:kleeners/screens/sign_up/sign_up_screen.dart';
import 'package:kleeners/screens/start%20booking/start_booking_screen.dart';

import '../../../size_config.dart';
import 'forgot_text.dart';
import 'google_button.dart';
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app logo
            SizedBox(height: SizeConfig.screenWidth! * 0.1),
            Center(
              child: Image.asset(
                'assets/images/new logo.png',
                scale: 1.5,
              ),
            ),

            // email and phone number
            SizedBox(height: getProportionateScreenWidth(20)),
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
            SizedBox(height: getProportionateScreenWidth(15)),
            Text("Email Address", style: headingStyle),

            // text field
            SizedBox(height: getProportionateScreenWidth(8)),
            const TextFields(),

            // password and forget password
            SizedBox(height: getProportionateScreenWidth(10)),
            const ForgotPassword(),

            // check box
            const KeepMeLogIn(),

            // login button
            SizedBox(height: getProportionateScreenWidth(10)),
            DefaultButton(
              text: "Login",
              press: () {
                Navigator.pushReplacementNamed(
                    context, StartBookingScreen.routeName);
              },
            ),

            // sign in with
            SizedBox(height: getProportionateScreenWidth(10)),
            const SignInWithText(),

            // Continue with google
            SizedBox(height: getProportionateScreenWidth(10)),
            const GoogleButton(),

            // create an account
            SizedBox(height: getProportionateScreenWidth(35)),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
                child: Text(
                  "Create an Account",
                  style: TextStyle(
                    color: const Color(0xFF093F43),
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
          ],
        ),
      ),
    );
  }
}
