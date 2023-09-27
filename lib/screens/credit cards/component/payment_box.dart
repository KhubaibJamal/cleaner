import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'add_new.dart';
import 'bank_box.dart';

class PaymentBox extends StatelessWidget {
  const PaymentBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(18)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
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
            title: 'Google Pay',
            icon: 'assets/icons/google pay.svg',
          ),
          SizedBox(height: getProportionateScreenWidth(15)),
          const BankBox(
            title: 'Phone Pe',
            icon: 'assets/icons/phone pe.svg',
          ),
          SizedBox(height: getProportionateScreenWidth(15)),
          const AddNew(
            title: "Add New UPI ID",
          )
        ],
      ),
    );
  }
}
