import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/profile/components/personal_Information_page.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                  profilemenu(
                    text: "Thông tin cá nhân",
                    icon: "assets/images/icons/user.png",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PersonalInformationPage()));
                    },
                  ),
                  profilemenu(
                    text: "Đơn hàng",
                    icon: "assets/images/icons/myorder.png",
                    press: () {},
                  ),
                  profilemenu(
                    text: "Cài đặt",
                    icon: "assets/images/icons/setting.png",
                    press: () {},
                  ),
                  profilemenu(
                    text: "Đăng xuất",
                    icon: "assets/images/icons/logout.png",
                    press: () {},
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget profilemenu({String text, String icon, Function press}) => TextButton(
      onPressed: press,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(
              icon,
              width: padding * 3,
              height: padding * 2,
            ),
            title: Text(
              text,
              style: const TextStyle(fontSize: 20,color: textColor),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding * 1.2),
            child: Container(
              height: 2,
              color: textColor.withOpacity(0.5),
            ),
          )
        ],
      ));
}
