import 'dart:ui';

import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/ForgotPassword/ForgotPassword_page.dart';
import 'package:app_thuc_pham/views/register/signup_page.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void dispore() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundAppBar,
      body: Form(
        key: _formKey,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 500,
                height:470 ,
                margin: const EdgeInsets.all(margin),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(padding),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(padding),
                          child: Text(
                            "Đăng nhập",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: textColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding / 2),
                          child: email(emailController),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding / 2),
                          child: password(
                              controller: passController,
                              text: "Nhập mật khẩu"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: padding / 2),
                          child: InkWell(
                              onTap: () {submit(context, emailController,passController);},
                              child: Center(
                                  child: button(
                                      text: "Đăng nhập",
                                      h: 50.0,
                                      w: 250.0,
                                      radius: padding))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding / 2),
                          child: Center(
                            child: Wrap(
                              children: [
                                textButton(
                                    text: "Quên mật khẩu?",
                                    press: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ForgotPasswordPage()));
                                    }),
                                textButton(
                                    text: "Đăng Ký",
                                    press: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpPage(),
                                          ));
                                    })
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xffc4c4c4),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding / 2),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/icons/icon_google.png",
                                width: 70,
                                height: 40,
                              ),
                              textButton(text: "Đăng nhập với google"),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  submit(BuildContext context, TextEditingController email,TextEditingController password) async {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState.save();
  }
}
