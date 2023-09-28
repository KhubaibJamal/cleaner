import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class RecipientsDetail extends StatelessWidget {
  const RecipientsDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight! * 0.2,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RecipientText(title: "Recipient", subTitle: "ARIEF WAHDAN ALFHAT"),
          RecipientText(title: "Bank Destination", subTitle: "BCA"),
          RecipientText(title: "Account Number", subTitle: "8930462013"),
          RecipientText(title: "Transaction ID", subTitle: "2435GASFD7523"),
          RecipientText(title: "Note", subTitle: ""),
        ],
      ),
    );
  }
}

class RecipientText extends StatelessWidget {
  final String title, subTitle;
  const RecipientText({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: headingStyle.copyWith(
              color: const Color(0xFF2F2F2F),
              fontSize: getProportionateScreenWidth(15)),
        ),
        Text(
          subTitle,
          style: headingStyle.copyWith(
              color: const Color(0xFF2F2F2F),
              fontSize: getProportionateScreenWidth(15)),
        ),
      ],
    );
  }
}
