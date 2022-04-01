import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class MyProduct extends StatelessWidget {
  const MyProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 630,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 150,
                          child: Image.network(
                            'https://suckhoedoisong.qltns.mediacdn.vn/Images/haiyen/2018/12/10/tao.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'Táo đỏ',
                        style: TextStyle(
                          fontSize: 22,
                          color: textColor,
                        ),
                      ),
                      richText(
                          first: "10.000đ",
                          second: "/",
                          third: "Kg",
                          strikeThrough: false,
                          color: textColor),
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
                ),
              ),
            );
          }),
    );
  }
}
