import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/details/widgets/body.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: backgroundAppBar,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.favorite_outline,
              size: 30.0,
            ),
          )
        ],
      ),
      body: const BodyDetails(),
    );
  }
}
