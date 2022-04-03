import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/main.dart';
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
          style: TextStyle(fontSize: 20, color: textColor),
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
        Padding(
          padding: const EdgeInsets.all(padding),
          child: Center(
            child: CircleAvatar(
              backgroundColor: backgroundAppBar,
              radius: 80,
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA2JBX3fU1Am1WMiYokaCNshIYJuB8oeyY5rYAXY5hxUevfz5J94fL20a5aWabegvte68&usqp=CAU'),
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
        Card(
          margin: const EdgeInsets.all(margin),
          elevation: 5,
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
          ),
        ),
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
          style: const TextStyle(fontSize: 20, color: textColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            height: 2,
            color: textColor.withOpacity(0.5),
          ),
        ),
      ],
    ),
  );
}
