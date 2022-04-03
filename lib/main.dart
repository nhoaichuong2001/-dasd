
import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/stepper_payment/stepper_payment.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App-Thuc-Pham',
      theme: ThemeData(
        primaryColor: textColor,
      ),
      home: const StepperPayment(),
    );
  }
}
