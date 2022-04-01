import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/profile/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    
      debugShowCheckedModeBanner: false,
      title: 'App-Thuc-Pham',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const Profile(),
    );
  }
}
