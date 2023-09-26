import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class KeepMeLogIn extends StatefulWidget {
  const KeepMeLogIn({super.key});

  @override
  State<KeepMeLogIn> createState() => KeepMeLogInState();
}

class KeepMeLogInState extends State<KeepMeLogIn> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: kPurpleColor,
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(
          "Keep me signed in",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ],
    );
  }
}
