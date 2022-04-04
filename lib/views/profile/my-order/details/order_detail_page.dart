import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: backgroundAppBar,
          title: const Text(
            "Thông tin đơn hàng",
            style: TextStyle(fontSize: 20),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.5))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: padding),
                      child: Text(
                        "Đơn hàng đã hoàn thành",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            letterSpacing: 1),
                      ),
                    ),
                    Image.asset("assets/images/icons/invoice.png"),
                  ]),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.radio_button_checked_sharp,
              color: Colors.green,
            ),
            title: Text(
              "Giao hàng thành công",
              style: TextStyle(
                  fontSize: 20, color: Colors.green, letterSpacing: 1),
            ),
            subtitle: Text("3/4/2022 10:01"),
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on,
              color: Colors.black,
            ),
            title: const Padding(
              padding: EdgeInsets.only(top: padding / 2),
              child: Text(
                "Địa chỉ giao hàng",
                style: TextStyle(fontSize: 20, letterSpacing: 1),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildText(text: "Nguyễn Hoài Chương", color: textColor),
                  buildText(text: "0348340873", color: textColor),
                  buildText(
                      text: "12 Hồ Thanh Biên,Phường 4, Quận 8,TP.Hồ Chí Minh",
                      color: textColor)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: padding, vertical: padding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildText(text: "Sản phẩm", size: 20.0),
                    ListTile(
                      leading: Image.asset("assets/images/icons/product01.png"),
                      title: buildText(text: "Bí ngô"),
                      subtitle: buildText(text: "13.000đ", color: Colors.red),
                      trailing: buildText(text: "x1"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: padding, vertical: padding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildText(
                    text: "Thành tiền :", color: Colors.black, size: padding),
                buildText(text: "33.000đ", color: Colors.red, size: padding)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              children: const [
                Text.rich(
                  TextSpan(text: "Vui lòng thanh toán ", children: [
                    TextSpan(
                        text: "33.000đ ", style: TextStyle(color: Colors.red)),
                    TextSpan(text: "khi nhận hàng")
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: padding, top: padding),
            child: buildText(
                text: "Phương thức thanh toán :",
                color: Colors.black,
                size: 20.0),
          ),
          ListTile(
            leading: Image.asset("assets/images/icons/pttt.png"),
            title: const Text("Thanh toán khi nhận hàng"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding*2,vertical: 10.0),
            child: SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFFDBDB),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Đánh giá",
                    style: TextStyle(fontSize: 25, color: textColor),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
