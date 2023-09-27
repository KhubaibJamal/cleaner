import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class SignUpTextField extends StatelessWidget {
  const SignUpTextField({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // email address
          Text(
            "Email Address",
            style: headingStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 5),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: emailInputDecoration,
          ),

          // phone number
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            "Phone Number",
            style: headingStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 5),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: phoneInputDecoration,
          ),

          // password
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            "Password",
            style: headingStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 5),
          TextFormField(
            obscureText: true,
            decoration: passwordInputDecoration,
          ),

          // confirm password
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            "Confirm Password",
            style: headingStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 5),
          TextFormField(
            obscureText: true,
            decoration: passwordInputDecoration,
          ),
        ],
      ),
    );
  }
}
