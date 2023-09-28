import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';

class ViewPayment extends StatelessWidget {
  const ViewPayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ViewPaymentOption(title: "Download", icon: "assets/icons/download.svg"),
        ViewPaymentOption(title: "Share", icon: "assets/icons/share.svg"),
      ],
    );
  }
}

class ViewPaymentOption extends StatelessWidget {
  final String title, icon;
  const ViewPaymentOption({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(width: 5),
        Text(
          title,
          style: greyStyle.copyWith(color: const Color(0xFF2176AE)),
        )
      ],
    );
  }
}
