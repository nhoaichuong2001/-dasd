import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/home/widgets/blogs.dart';
import 'package:app_thuc_pham/views/home/widgets/latest_product.dart';
import 'package:app_thuc_pham/views/home/widgets/my-product.dart';
import 'package:app_thuc_pham/views/home/widgets/slider.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: padding, bottom: padding * 2),
            child: CarouselDemo(),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: padding * 2, left: padding - 10),
            child: _title(text: "Mới nhất"),
          ),
          const LatestProduct(),
          Padding(
            padding: const EdgeInsets.only(
                bottom: padding * 2, left: padding - 10, top: padding * 2),
            child: _title(text: "Sản phẩm"),
          ),
          const MyProduct(),
          Padding(
            padding: const EdgeInsets.only(
                bottom: padding * 2, left: padding - 10, top: padding * 2),
            child: _title(text: "Tin tức"),
          ),
          const Blogs(),
          sizeBoxHeight,
          sizeBoxHeight,
          sizeBoxHeight,
          sizeBoxHeight,
        ],
      ),
    );
  }

  Widget _title({text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 30.0,
            color: textColor,
          ),
        ),
        sizeBoxHeight,
        Container(
          color: textColor.withOpacity(0.4),
          width: 100,
          height: 3,
        ),
      ],
    );
  }
}
