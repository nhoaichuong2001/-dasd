import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/stepper_payment/widgets/cart_page.dart';
import 'package:app_thuc_pham/views/stepper_payment/widgets/checkOrder_address.dart';
import 'package:app_thuc_pham/views/stepper_payment/widgets/payment.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class StepperPayment extends StatefulWidget {
  const StepperPayment({Key key}) : super(key: key);

  @override
  State<StepperPayment> createState() => _StepperPaymentState();
}

class _StepperPaymentState extends State<StepperPayment> {
  int currentStep = 0;
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: backgroundAppBar,
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 30.0,
          color: textColor,
        ),
        title: buildText(
            text: "Các bước thanh toán", size: 25.0, color: textColor),
      ),
      body: Stepper(
        elevation: 0,
        type: StepperType.vertical,
        currentStep: currentStep,
        onStepContinue: () {
          final isLastStep = currentStep == getSteps().length - 1;
          if (isLastStep) {
          } else {
            setState(() {
              currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (currentStep > 0) {
            setState(() {
              currentStep -= 1;
            });
          }
        },
        steps: getSteps(),
        controlsBuilder: (context, details, {onStepContinue, onStepCancel}) =>
            SizedBox(
          height: 100,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: details.onStepContinue,
                      child:
                          button(text: "Kế tiếp", h: 60, w: 140, radius: 5))),
              (currentStep != 0) ? sizeBoxWidth : Container(),
              (currentStep != 0) ? sizeBoxWidth : Container(),
              (currentStep != 0)
                  ? Expanded(
                      child: InkWell(
                          onTap: details.onStepCancel,
                          child:
                              button(text: "Trở về", h: 60, w: 140, radius: 5)),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          title: buildText(
              text: "Giỏ hàng",
              size: 22.0,
              color: (currentStep >= 0) ? Colors.blue : textColor),
          content: const CartPage(),
          isActive: (currentStep >= 0),
          state: (currentStep > 0) ? StepState.complete : StepState.indexed,
        ),
        Step(
          title: buildText(
              text: "Xác nhận đơn và địa chỉ",
              size: 22.0,
              color: (currentStep >= 1) ? Colors.blue : textColor),
          content: const CheckOrderAddress(),
          isActive: currentStep >= 1,
          state: (currentStep > 1) ? StepState.complete : StepState.indexed,
        ),
        Step(
          title: buildText(
              text: "Thanh toán",
              size: 22.0,
              color: (currentStep == 2) ? Colors.blue : textColor),
          content: const PaymentOrder(),
          isActive: currentStep >= 2,
          state: (currentStep > 2) ? StepState.complete : StepState.indexed,
        )
      ];
}
