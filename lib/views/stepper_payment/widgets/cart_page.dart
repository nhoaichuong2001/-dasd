import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/model/product.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildText(
          text: "Danh sách sản phẩm",
          size: 24.0,
          color: textColor,
        ),
        Container(
          padding: const EdgeInsets.all(padding / 2),
          margin: const EdgeInsets.only(top: margin, bottom: margin),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: background,
            border: Border.all(color: textColor),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 0), blurRadius: 1.0, color: textColor),
            ],
          ),
          child: Column(
            children: products
                .map((e) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          e.image,
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: padding),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  buildText(
                                    text: e.name,
                                    size: 24.0,
                                    color: textColor,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: margin / 2),
                                    width: 60,
                                    height: 30,
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
                                first: "24.000đ",
                                second: "/",
                                third: "Kg",
                                strikeThrough: false,
                                size: 20.0,
                                color: textColor,
                              ),
                              sizeBoxHeight,
                              counter(
                                decrement: () {},
                                increment: () {},
                                value: 1.toString(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildText(
              text: "Số lượng sản phẩm : ",
              size: 22.0,
              color: textColor,
            ),
            buildText(
              text: "4",
              size: 22.0,
              color: Colors.red,
            ),
          ],
        ),
        sizeBoxHeight,
        sizeBoxHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildText(
              text: "Tổng đơn hàng : ",
              size: 22.0,
              color: textColor,
            ),
            buildText(
              text: "24.000đ ",
              size: 22.0,
              color: Colors.red,
            ),
          ],
        )
      ],
    );
  }
}
