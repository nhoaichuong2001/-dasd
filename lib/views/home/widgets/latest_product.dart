import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class LatestProduct extends StatefulWidget {
  const LatestProduct({Key key}) : super(key: key);

  @override
  State<LatestProduct> createState() => _LatestProductState();
}

class _LatestProductState extends State<LatestProduct> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.separated(
        separatorBuilder: (context, index) => sizeBoxWidth,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(padding / 2),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 150,
                      child: Image.network(
                        'https://suckhoedoisong.qltns.mediacdn.vn/Images/haiyen/2018/12/10/tao.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    sizeBoxHeight,
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Táo đỏ',
                          style: TextStyle(
                            fontSize: 22,
                            color: textColor,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: margin / 2),
                          width: 55,
                          height: 40,
                          color: Colors.red,
                          transform: Matrix4.rotationX(0.6),
                          child: const Center(
                            child: Text(
                              '-40%',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: background,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    sizeBoxHeight,
                    richText(
                      first: "65.000đ",
                      second: "/",
                      third: "Kg",
                      strikeThrough: true,
                      color: textColor,
                    ),
                    sizeBoxHeight,
                    richText(
                      first: "24.000đ",
                      second: "/",
                      third: "Kg",
                      strikeThrough: false,
                      color: Colors.red,
                    ),
                    sizeBoxHeight,
                    Row(
                      children: [
                        InkWell(
                          child: button(
                            h: 40.0,
                            w: 130.0,
                            radius: 15.0,
                            icon: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        iconButton(
                          press: () async {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 40,
                    color: Colors.red,
                    transform: Matrix4.rotationX(0.6),
                    child: const Center(
                      child: Text(
                        'New',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: background,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
