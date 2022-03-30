import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundAppBar,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 500,
                  height: 450,
                  margin: const EdgeInsets.all(padding),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(padding),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(padding),
                        child: Text(
                          "Quên mật khẩu",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Vui lòng nhập thư điện tử mà bạn đăng ký",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding / 2),
                        child: email(emailController),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding),
                        child: InkWell(
                          onTap: () {},
                          child: Center(child: button(text: "Gửi Email",h: 50.0,w: 250.0,radius: padding)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding / 2),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Center(child: button(text: "Quay lại",h: 50.0,w: 250.0,radius: padding)),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
