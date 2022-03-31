import 'package:app_thuc_pham/constant.dart';
import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage(
      {Key key, this.title, this.subtitle, this.image, this.customClipPath})
      : super(key: key);
  final String title, subtitle, image;
  final CustomClipper<Path> customClipPath;
  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          ClipPath(
            clipper: widget.customClipPath,
            child: Container(
              width: double.infinity,
              height: 450,
              color: backgroundAppBar,
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 35.0,
                      color: textColor,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(padding),
                    height: 70,
                    child: Text(
                      widget.subtitle,
                      style: const TextStyle(
                        fontSize: 25.0,
                        color: textColor,
                        overflow: TextOverflow.visible,
                      ),
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
