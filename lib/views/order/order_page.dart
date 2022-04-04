import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/home/widgets/my-product.dart';
import 'package:app_thuc_pham/views/order/widgets/all_products.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class OrderHomePage extends StatelessWidget {
  const OrderHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: backgroundAppBar,
            title: buildText(text: "Đặt hàng", size: 22.0, color: Colors.black),
            actions: [
                CircleAvatar(
                    backgroundColor: background,
                    radius: 30.0,
                    child: Image.asset(
                      "assets/images/icons/search.png",
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
              SizedBox(width: padding/2,),
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: background,
                    radius: 30.0,
                    child: Image.asset(
                      "assets/images/icons/cart.png",
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 15.0,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: background,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          body: DefaultTabController(
            length: 5,
            child: Column(children: [
              buildTab(),
              Expanded(
                  child: TabBarView(
                children: [
                  AllProduct(),
                  AllProduct(),
                  AllProduct(),
                  AllProduct(),
                  AllProduct(),
                ],
              ))
            ]),
          ),
        ));
  }

  Widget buildTab() => TabBar(
        indicatorColor: backgroundAppBar,
        indicatorWeight: 3,
        isScrollable: true,
        tabs: [
          Tab(
              child: buildText(
                  text: "Tất cả",
                  color: Colors.black,
                  size: 18.0,
                  weight: FontWeight.normal)),
          Tab(
              child: buildText(
                  text: "Trái cây",
                  color: Colors.black,
                  size: 18.0,
                  weight: FontWeight.normal)),
          Tab(
              child: buildText(
                  text: "Thịt",
                  color: Colors.black,
                  size: 18.0,
                  weight: FontWeight.normal)),
          Tab(
              child: buildText(
                  text: "Thức uống",
                  color: Colors.black,
                  size: 18.0,
                  weight: FontWeight.normal)),
          Tab(
              child: buildText(
                  text: "Rau củ",
                  color: Colors.black,
                  size: 18.0,
                  weight: FontWeight.normal)),
        ],
      );
}
