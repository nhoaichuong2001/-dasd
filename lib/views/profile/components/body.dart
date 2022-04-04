import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/profile/components/personal_Information_page.dart';
import 'package:app_thuc_pham/views/profile/my-order/order_page.dart';
import 'package:app_thuc_pham/views/profile/setting/setting_page.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(padding),
            child: Center(
              child: CircleAvatar(
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
            elevation: 5.0,
            child: Column(
              children: [
                profileMenu(
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
                profileMenu(
                  text: "Đơn hàng",
                  icon: "assets/images/icons/myorder.png",
                  press: () {},
                ),
                profileMenu(
                  text: "Cài đặt",
                  icon: "assets/images/icons/setting.png",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingPage()));
                  },
                ),
                profileMenu(
                  text: "Đăng xuất",
                  icon: "assets/images/icons/logout.png",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget profileMenu({String text, String icon, Function press}) => TextButton(
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
              style: const TextStyle(fontSize: 20, color: textColor),
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
