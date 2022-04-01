import 'package:app_thuc_pham/views/home/home_page.dart';
import 'package:app_thuc_pham/views/profile/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App-Thuc-Pham',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Profile(),
    );
  }
}