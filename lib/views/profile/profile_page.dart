import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/profile/components/body.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: backgroundAppBar,
        title: const Center(
          child: Text(
            "Cá nhân",
            style: TextStyle(color: textColor, fontSize: 25),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
