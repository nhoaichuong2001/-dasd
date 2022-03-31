import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';

import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final List type = ['Tất cả', 'Trái cây', 'Rau củ', 'Thức uống', 'Thịt'];
  final min = TextEditingController(text: '0');
  final max = TextEditingController(text: '100');
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            ),
            const Padding(
              padding: EdgeInsets.all(padding),
              child: Center(
                child: Text(
                  'Chọn loại sản phẩm',
                  style: TextStyle(fontSize: 25.0, color: textColor),
                ),
              ),
            ),
            Wrap(
              children: type.map((e) => _buildList(text: e)).toList(),
            ),
            const Padding(
              padding: EdgeInsets.all(padding),
              child: Center(
                child: Text(
                  'Nhập giá',
                  style: TextStyle(fontSize: 25.0, color: textColor),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding * 3),
              child: inputCoin(controller: min, text: "Từ"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: padding * 3, vertical: padding),
              child: inputCoin(controller: max, text: "Đến"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding * 1),
              child: button(text: "Áp dụng", h: 50.0, w: 10.0, radius: 10.0),
            )
            // SliderTheme(
            //   data: SliderThemeData(
            //     trackHeight: 30.0,
            //     activeTickMarkColor: Colors.transparent,
            //     inactiveTickMarkColor: Colors.transparent,
            //     thumbShape: SliderComponentShape.noOverlay,
            //     valueIndicatorShape: SliderComponentShape.noOverlay,
            //     trackShape: const RectangularSliderTrackShape(),
            //   ),
            //   child: SizedBox(
            //     height: 20,
            //     child: Expanded(
            //       child: RotatedBox(
            //         quarterTurns: 10,
            //         child: Slider(
            //           thumbColor: Colors.blue,
            //           min: min.toDouble(),
            //           max: max.toDouble(),
            //           value: value.round().toDouble(),
            //           onChanged: (range) {
            //             setState(() {
            //               value = range;
            //             });
            //           },
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget _buildList({text}) => Container(
        margin: const EdgeInsets.all(margin / 2),
        padding: const EdgeInsets.all(5.0),
        height: 60,
        width: 120,
        decoration: BoxDecoration(
          color: text == type ? Colors.teal : Colors.white,
          border: Border.all(width: 2.0, color: Colors.grey.shade400),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 19,
              color: text == type ? Colors.white : Colors.grey.shade600,
            ),
          ),
        ),
      );

  Widget inputCoin({controller, text}) => TextFormField(
        cursorWidth: 1,
        style: const TextStyle(
          fontSize: 20,
          color: textColor,
        ),
        controller: controller,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          fillColor: background,
          hintText: text,
          hintStyle: const TextStyle(
            fontSize: 20,
            color: textColor,
          ),
          border: const OutlineInputBorder(),
          errorStyle: const TextStyle(fontSize: 16),
        ),
        validator: (value) {
          if (value == null) {
            return 'Không được hợp lệs';
          }
          return null;
        },
      );
}
