import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class DescriptionDetails extends StatelessWidget {
  const DescriptionDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(padding),
          child: buildText(
            text: "Mô tả sản phẩm",
            size: 25.0,
            color: textColor,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          height: 250,
          width: double.infinity,
          child: _buildText(
              text:
                  "Trong quả nho có chứa nguồn vitamin K dồi dào, đây là một loại vitamin tan trong chất béo quan trọng cho quá trình đông máu và giúp xương khỏe mạnh.Nho cũng là nguồn vitamin C, chất dinh dưỡng thiết yếu và chất chống oxy hóa mạnh mẽ cần thiết cho sức khỏe mô liên kết. Ngoài ra, một chén nho còn chứa các chất dinh dưỡng",
              maxLine: 8,
              size: 22.0,
              color: textColor),
        )
      ],
    );
  }

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
