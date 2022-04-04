import 'package:app_thuc_pham/constant.dart';
import 'package:flutter/material.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: backgroundAppBar,
          title: const Text(
            "Cài đặt",
            style: TextStyle(fontSize: 20, color: textColor),
          )),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(right: 200, top: 40, bottom: 40),
          child: Text(
            "Ngôn ngữ :",
            style: TextStyle(fontSize: 25),
          ),
        ),
        ListTile(
          leading: Image.asset("assets/images/icons/vn.png"),
          title: const Text(
            "Việt Nam",
            style: TextStyle(fontSize: 25),
          ),
          trailing: const Icon(Icons.radio_button_off),
        ),
        Padding(
          padding: const EdgeInsets.only(top: padding),
          child: ListTile(
            leading: Image.asset("assets/images/icons/eng.png"),
            title: const Text(
              "English",
              style: TextStyle(fontSize: 25),
            ),
            trailing: InkWell(
                onTap: () {}, child: const Icon(Icons.radio_button_off)),
          ),
        )
      ]),
    );
  }
}
