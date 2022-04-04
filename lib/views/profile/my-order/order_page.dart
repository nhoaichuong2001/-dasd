import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/profile/my-order/widgets/new_order_page.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
              bottom: buildTabBar(),
              elevation: 3,
              backgroundColor: backgroundAppBar,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back,
                  color: textColor,
                ),
              ),
              title: buildText(
                text: "Đơn hàng",
                size: 24.0,
                color: textColor,
                weight: FontWeight.bold,
              )),
          body: body(),
          // body: Body(),
        ),
      ),
    );
  }

  Widget body() => const TabBarView(
        children: [
          NewOrderPage(),
          NewOrderPage(),
          NewOrderPage(),
          NewOrderPage(),
          NewOrderPage(),
          NewOrderPage(),
        ],
      );
  Widget buildTabBar() => TabBar(
        indicatorColor: Colors.white,
        indicatorWeight: 3,
        isScrollable: true,
        tabs: [
          buildText(
            text: "Đơn mới",
            size: 22.0,
            color: textColor,
            weight: FontWeight.bold,
          ),
          buildText(
            text: "Đã xác nhận",
            size: 22.0,
            color: textColor,
            weight: FontWeight.bold,
          ),
          buildText(
            text: "Đang giao",
            size: 22.0,
            color: textColor,
            weight: FontWeight.bold,
          ),
          buildText(
            text: "Đã giao",
            size: 22.0,
            color: textColor,
            weight: FontWeight.bold,
          ),
          buildText(
            text: "Đã hủy",
            size: 22.0,
            color: textColor,
            weight: FontWeight.bold,
          ),
          buildText(
            text: "Lịch sử đơn hàng",
            size: 22.0,
            color: textColor,
            weight: FontWeight.bold,
          )
        ],
      );
}
