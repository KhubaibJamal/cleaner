import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class TextFields extends StatefulWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! * 0.8,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenWidth(18)),
            buildPasswordFormField(),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.visibility_off,
          color: kGreyColor,
        ),
        hintText: "*******",
        hintStyle: TextStyle(
          color: const Color(0xFF928FA6),
          fontSize: getProportionateScreenWidth(20),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFD0D5DD),
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFD0D5DD),
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFD0D5DD),
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "hello@example.com",
        hintStyle: TextStyle(
          color: const Color(0xFF928FA6),
          fontSize: getProportionateScreenWidth(20),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFD0D5DD),
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFD0D5DD),
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFD0D5DD),
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
