import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

enum Payment {
  Zalo,
  // ignore: constant_identifier_names
  Default,
}

class PaymentOrder extends StatefulWidget {
  const PaymentOrder({Key key}) : super(key: key);

  @override
  State<PaymentOrder> createState() => _PaymentOrderState();
}

class _PaymentOrderState extends State<PaymentOrder> {
  Payment _payment = Payment.Default;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            "assets/images/icons/payment.png",
            width: 40,
            height: 40,
            fit: BoxFit.fill,
          ),
          title: buildText(
            text: "Thanh toán tiền mặt",
            size: 24.0,
            color: textColor,
          ),
          trailing: Radio<Payment>(
            value: Payment.Default,
            groupValue: _payment,
            onChanged: (value) {
              setState(() {
                _payment = value;
              });
            },
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/icons/payment.png",
            width: 40,
            height: 40,
            fit: BoxFit.fill,
          ),
          title: buildText(
            text: "Thanh toán ZaloPay",
            size: 24.0,
            color: textColor,
          ),
          trailing: Radio<Payment>(
            value: Payment.Zalo,
            groupValue: _payment,
            onChanged: (value) {
              setState(() {
                _payment = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
