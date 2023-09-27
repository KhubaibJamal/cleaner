import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';
import 'add_new.dart';
import 'bank_box.dart';

class CreditCardBox extends StatelessWidget {
  const CreditCardBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(18)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kGreyColor),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 16),
            blurRadius: 16,
            color: const Color(0xFFF5F5F5).withOpacity(0.1),
          ),
        ],
      ),
      child: Column(
        children: [
          const BankBox(
            title: 'Axis Bank  *** *** 8395',
            icon: 'assets/icons/master cart bank.svg',
          ),
          SizedBox(height: getProportionateScreenWidth(15)),
          const BankBox(
            title: 'HDFC Bank  *** *** 6246',
            icon: 'assets/icons/visa logo.svg',
          ),
          SizedBox(height: getProportionateScreenWidth(15)),
          const AddNew(
            title: "Add New Card",
          )
        ],
      ),
    );
  }
}
