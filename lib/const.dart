import 'package:flutter/material.dart';
import 'package:kleeners/size_config.dart';

const kBlueColor = Color(0xFF005FF6);
const kLightBlueColor = Color(0xFF6BA2FA);
const kDarkGreyColor = Color(0xFF49424D);
const kLightGreyColor = Color(0xFF555555);
const kBlackColor = Color(0xFF191D23);
const kGreyColor = Color(0xFFD0D5DD);
const kPurpleColor = Color(0xFFAA70F3);

// heading style
final headingStyle = TextStyle(
  color: kBlackColor,
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.bold,
);

// grey style
final greyStyle = TextStyle(
  color: const Color(0xFF928FA6),
  fontSize: getProportionateScreenWidth(20),
);

final emailInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: "hello@example.com",
  hintStyle: greyStyle,
  border: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: Color(0xFFD0D5DD),
      width: 2.5,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}

final passwordInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  suffixIcon: const Icon(
    Icons.visibility_off,
    color: kDarkGreyColor,
  ),
  hintText: "*******",
  hintStyle: greyStyle,
  border: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
);
