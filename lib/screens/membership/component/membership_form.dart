import 'package:flutter/material.dart';

import '../../../component/default_button.dart';
import '../../../component/term_condition_text.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class MembershipForm extends StatefulWidget {
  const MembershipForm({super.key});

  @override
  State<MembershipForm> createState() => _MembershipFormState();
}

class _MembershipFormState extends State<MembershipForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // full name
          Text(
            "Full Name",
            style: headingStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          TextFormField(
            decoration: InputDecoration(
              constraints: const BoxConstraints(maxHeight: 50),
              hintText: "John Smith",
              hintStyle: greyStyle,
              border: outlineInputBorder(),
              enabledBorder: outlineInputBorder(),
              focusedBorder: outlineInputBorder(),
            ),
          ),

          // Phone Number
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            "Phone Number",
            style: headingStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: phoneInputDecoration,
          ),

          // email
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            "Email",
            style: headingStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          TextFormField(
            decoration: emailInputDecoration,
          ),

          // password
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            "Password",
            style: headingStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          TextFormField(
            obscureText: true,
            decoration: passwordInputDecoration,
          ),

          // Address
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            "Address",
            style: headingStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          TextFormField(
            decoration: emailInputDecoration,
          ),

          // confirm button
          SizedBox(height: getProportionateScreenWidth(20)),
          DefaultButton(
            text: "Continue",
            bgColor: const Color(0xFF00A1FF),
            press: () {},
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          const TermAndConditions(),
          SizedBox(height: getProportionateScreenWidth(15)),
        ],
      ),
    );
  }
}
