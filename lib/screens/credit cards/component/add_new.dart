import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class AddNew extends StatelessWidget {
  final String title;
  const AddNew({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: getProportionateScreenWidth(15)),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: const Color(0xFFD2EAFF),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.add, color: kBlueColor),
        ),
        SizedBox(width: getProportionateScreenWidth(15)),
        Text(title, style: greyStyle),
      ],
    );
  }
}
