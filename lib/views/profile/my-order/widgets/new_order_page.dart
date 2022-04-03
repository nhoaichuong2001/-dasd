import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class NewOrderPage extends StatelessWidget {
  NewOrderPage({Key key}) : super(key: key);
  final List reason = [
    'Thay đổi địa chỉ giao hàng',
    'Không đủ kinh phí',
    'Chọn sản phẩm khác',
    'Khác'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.symmetric(vertical: margin),
          elevation: 0,
          child: Column(
            children: [
              ListTile(
                title:
                    buildText(text: "BeHealthy", color: textColor, size: 22.0),
                trailing: buildText(
                    text: "Chờ xác nhận", color: Colors.redAccent, size: 22.0),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: textColor.withOpacity(0.3),
              ),
              ListTile(
                title:
                    buildText(text: "2 sản phẩm", color: textColor, size: 22.0),
                trailing: buildText(
                    text: "Thành tiền: 185.000đ", color: textColor, size: 22.0),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: textColor.withOpacity(0.3),
              ),
              ListTile(
                leading: const Icon(
                  Icons.delivery_dining,
                  color: Colors.teal,
                  size: 30.0,
                ),
                title: buildText(
                    text: "Chờ xác nhận", color: Colors.teal, size: 22.0),
                trailing: const Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: textColor.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: padding / 2),
                child: ListTile(
                  leading: buildText(
                    text: "Đánh giá trước 26-04-2022",
                    color: textColor,
                    size: 20.0,
                  ),
                  trailing: InkWell(
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
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(padding),
                                    child: buildText(
                                        text: "Chọn lí do hủy",
                                        size: 25.0,
                                        color: Colors.teal,
                                        weight: FontWeight.bold),
                                  ),
                                  Column(
                                    children: reason
                                        .map(
                                          (e) => ListTile(
                                            leading: const Icon(
                                              Icons.ac_unit_outlined,
                                              color: Colors.teal,
                                              size: 30.0,
                                            ),
                                            title: buildText(
                                                text: e,
                                                size: 22.0,
                                                color: textColor),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                  button(
                                      text: "Hủy đơn",
                                      h: 70,
                                      w: 200,
                                      radius: 5),
                                ],
                              );
                            });
                      },
                      child: button(text: "Hủy đơn", h: 80, w: 150, radius: 5)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
