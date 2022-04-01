import 'package:app_thuc_pham/constant.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    name.text = "Hoài Chương";
    email.text = "Hoaichuongvt@gmail.com";
    phone.text = "0348340873";
    address.text = "Bà rịa vũng tàu";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.black,
          backgroundColor: backgroundAppBar,
          title: const Text(
            "Chỉnh sửa thông tin",
            style: TextStyle(fontSize: 25, color: textColor),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: padding / 2, vertical: padding * 2),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage:
                        AssetImage("assets/images/avatar/avata.png"),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 0,
                    child: InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/icons/camera.png"),
                      ),
                    ),
                  )
                ],
              ),
              buildTextField(title: "Tên hiển thị :", controller: name),
              buildTextField(title: "Email :", controller: email),
              buildTextField(title: "Số điện thoại :", controller: phone),
              buildTextField(title: "Địa chỉ :", controller: address),
              Padding(
                padding: const EdgeInsets.only(top: padding / 2),
                child: SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFDBDB),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Lưu thông tin",
                        style: TextStyle(fontSize: 25, color: textColor),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField({String title, controller}) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 3),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: title,
            labelStyle: const TextStyle(fontSize: 25),
          )),
    );
  }
}
