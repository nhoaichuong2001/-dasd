import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class CheckOrderAddress extends StatefulWidget {
  const CheckOrderAddress({Key key}) : super(key: key);

  @override
  State<CheckOrderAddress> createState() => _CheckOrderAddressState();
}

class _CheckOrderAddressState extends State<CheckOrderAddress> {
  final codeController = TextEditingController();
  bool checkVoucher = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Image.asset(
            "assets/images/icons/Location.png",
            fit: BoxFit.fill,
            width: 30,
            height: 30,
          ),
          title:
              buildText(text: "Giao hàng đến", size: 27.0, color: Colors.black),
          subtitle: SizedBox(
            height: 70,
            child: _buildText(
                text: "-46 Phạm Thị Ngư, TP.Phan Thiết",
                color: textColor,
                size: 20.0,
                maxLine: 2),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: Image.asset(
              "assets/images/icons/add.png",
              fit: BoxFit.fill,
              width: 30,
              height: 30,
            ),
            title: buildText(
              text: "Thêm địa chỉ khác...",
              size: 22.0,
              color: textColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: padding / 2, top: padding, bottom: padding),
          child: buildText(
              text: "Đơn hàng của bạn", color: Colors.black, size: 24.0),
        ),
        Card(
          elevation: 5.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _itemOrder(
                  quantity: "x2",
                  name: "Dâu tây",
                  price: "23.000đ",
                  colorLeading: textColor,
                  colorTitle: textColor,
                  colorTrailing: textColor),
              _itemOrder(
                  quantity: "x1",
                  name: "Thịt cừu",
                  price: "223.000đ",
                  colorLeading: textColor,
                  colorTitle: textColor,
                  colorTrailing: textColor),
              _itemOrder(
                  quantity: "x1",
                  name: "Nước numberOne",
                  price: "10.000đ",
                  colorLeading: textColor,
                  colorTitle: textColor,
                  colorTrailing: textColor),
            ],
          ),
        ),
        _itemOrder(
            quantity: "Tạm tính:",
            name: "(3)",
            price: "256.000đ",
            colorLeading: textColor,
            colorTitle: Colors.red,
            colorTrailing: Colors.red),
        (checkVoucher)
            ? _itemOrder(
                quantity: "Giảm giá:",
                name: "",
                price: "40%",
                colorLeading: textColor,
                colorTitle: Colors.white,
                colorTrailing: Colors.red)
            : Container(),
        ListTile(
            leading: Container(
              width: 170,
              child: input(text: "Mã giảm", controller: codeController),
            ),
            trailing: textButton(
              text: "Áp dụng",
              press: () {
                setState(() {
                  checkVoucher = true;
                });
              },
            )),
        _itemOrder(
            quantity: "Tổng đơn (đã giảm):",
            name: "",
            price: "132.000đ",
            colorLeading: textColor,
            colorTitle: Colors.white,
            colorTrailing: Colors.red),
      ],
    );
  }

  Widget _itemOrder(
          {String quantity,
          String name,
          String price,
          colorLeading,
          colorTitle,
          colorTrailing}) =>
      ListTile(
        leading: buildText(
          text: quantity,
          color: colorLeading,
          size: 22.0,
        ),
        title: buildText(
          text: name,
          color: colorTitle,
          size: 22.0,
        ),
        trailing: buildText(
          text: price,
          color: colorTrailing,
          size: 22.0,
        ),
      );
  Widget _buildText({text, size, color, weight, maxLine}) => Text(
        text,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: weight,
          overflow: TextOverflow.ellipsis,
        ),
        maxLines: maxLine,
      );
}
