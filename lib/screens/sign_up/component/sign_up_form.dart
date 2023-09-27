import 'package:flutter/material.dart';
import 'package:kleeners/component/default_button.dart';
import 'package:kleeners/screens/sign_up/component/sign_up_text_fields.dart';
import 'package:kleeners/component/term_condition_text.dart';
import 'package:kleeners/screens/start%20booking/start_booking_screen.dart';

import '../../../size_config.dart';
import 'already_have_account_text.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth!,
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(35),
      ),
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

            // sign up form
            SizedBox(height: SizeConfig.screenHeight! * 0.075),
            SignUpTextField(formKey: _formKey),

            // sign up button
            SizedBox(height: getProportionateScreenWidth(10)),
            DefaultButton(
              text: "Sign up",
              press: () {
                Navigator.pushReplacementNamed(
                    context, StartBookingScreen.routeName);
              },
            ),

            // term & condition
            SizedBox(height: getProportionateScreenWidth(10)),
            const TermAndConditions(),

            // already have an account
            // const Spacer(),
            SizedBox(height: getProportionateScreenWidth(35)),
            const AlreadyHaveAccountText(),

            SizedBox(height: getProportionateScreenWidth(10)),
          ],
        ),
      ),
    );
  }
}
