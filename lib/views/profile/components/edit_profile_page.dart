import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
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
            horizontal: padding, vertical: padding * 2),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 80,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA2JBX3fU1Am1WMiYokaCNshIYJuB8oeyY5rYAXY5hxUevfz5J94fL20a5aWabegvte68&usqp=CAU'),
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
              input(controller: name, text: "Tên hiển thị"),
              input(controller: email, text: "Thư điện tử"),
              input(controller: phone, text: "Số điện thoại"),
              input(controller: address, text: "Địa chỉ"),
              Padding(
                padding: const EdgeInsets.only(top: padding * 2),
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
