import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/profile/components/edit_profile_page.dart';
import 'package:flutter/material.dart';

class PersonalInformationPage extends StatelessWidget {
  const PersonalInformationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: backgroundAppBar,
        title: const Text(
          "Thông tin cá nhân",
          style: TextStyle(fontSize: 20,color: textColor),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: padding),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()));
                  },
                  child: const Icon(Icons.edit))),
        ],
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.all(padding),
          child: Center(
            child: SizedBox(
              height: 115,
              width: 115,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar/avata.png"),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: padding / 2),
          child: Text(
            "Hoài Chương",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
            width: 500,
            height: 350,
            margin: const EdgeInsets.all(margin),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(padding),
              ),
            ),
            child: Column(
              children: [
                textInf(
                  title: "Tên hiển thị",
                  text: "Hoài Chương",
                ),
                textInf(
                  title: "Email :",
                  text: "Hoaichuongvt@gmail.com",
                ),
                textInf(
                  title: "Số điện thoại :",
                  text: "0348340873",
                ),
                textInf(
                  title: "Địa chỉ :",
                  text: "Bà rịa vũng tàu",
                ),
              ],
            )),
      ]),
    );
  }
}

Widget textInf({String title, String text}) {
  return Padding(
    padding: const EdgeInsets.all(padding / 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            
          ),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20,color: textColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top:5),
          child: Container(
            height: 2,
            color: textColor.withOpacity(0.5),
          ),
        ),
      ],
    ),
  );
}
