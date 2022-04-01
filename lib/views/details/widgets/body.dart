import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/details/widgets/description.dart';
import 'package:app_thuc_pham/views/details/widgets/name_price_star.dart';
import 'package:app_thuc_pham/views/details/widgets/rating.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class BodyDetails extends StatefulWidget {
  const BodyDetails({Key key}) : super(key: key);

  @override
  State<BodyDetails> createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              'https://product.hstatic.net/200000239961/product/nho-do-my-khong-hat_bef47d44dc6441b9a7840a32354435c8.jpg',
              fit: BoxFit.contain,
              width: double.infinity,
              height: 300,
            ),
          ),
          Container(
            height: 2,
            color: textColor.withOpacity(0.5),
          ),
          const NamePriceAndStar(),
          Container(
            height: 2,
            color: textColor.withOpacity(0.5),
          ),
          const DescriptionDetails(),
          const RatingDetails(),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: padding),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(padding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildText(
                                  text: "Số lượng :",
                                  color: textColor,
                                  size: 24.0,
                                ),
                                counter(value: 1.toString()),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(padding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildText(
                                  text: "Tổng tiền :",
                                  color: textColor,
                                  size: 24.0,
                                ),
                                buildText(
                                  text: "120.000đ",
                                  color: textColor,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              button(
                                  text: "Thanh toán", h: 60, w: 150, radius: 5),
                              button(
                                  text: "Thêm giỏ hàng",
                                  h: 60,
                                  w: 150,
                                  radius: 5)
                            ],
                          )
                        ],
                      ),
                    );
                  });
            },
            child: Center(
              child: Container(
                  margin: const EdgeInsets.all(margin),
                  child: button(
                      text: "Chọn mua", h: 60.0, w: 200.0, radius: 10.0)),
            ),
          )
        ],
      ),
    );
  }
}
