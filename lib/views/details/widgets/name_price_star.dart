import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class NamePriceAndStar extends StatelessWidget {
  const NamePriceAndStar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  buildText(text: "Nho", size: 25.0, color: textColor),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: margin / 2),
                    width: 60,
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
              SizedBox(
                width: 130,
                height: 20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const Icon(Icons.star, color: Colors.yellow, size: 25.0),
                  itemCount: 5,
                ),
              )
            ],
          ),
          Row(
            children: [
              richText(
                first: "78.000d",
                second: "/",
                third: "Kg",
                size: 22.0,
                color: textColor,
                strikeThrough: true,
              ),
              sizeBoxWidth,
              richText(
                first: "32.000d",
                second: "/",
                third: "Kg",
                size: 22.0,
                color: Colors.red,
                strikeThrough: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
