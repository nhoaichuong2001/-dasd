import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:flutter/material.dart';

class RatingDetails extends StatelessWidget {
  const RatingDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 2,
          color: textColor.withOpacity(0.5),
        ),
        ListTile(
          leading: buildText(text: "Đánh giá", size: 25.0, color: textColor),
          title: buildText(text: "(20)", size: 25.0, color: textColor),
          trailing:
              buildText(text: "Xem tất cả", size: 25.0, color: Colors.blue),
        ),
        Container(
          height: 2,
          color: textColor.withOpacity(0.5),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: padding / 2),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Image.network(
                'https://pdp.edu.vn/wp-content/uploads/2021/02/anh-icon-facebook-cute-dep.jpg',
                fit: BoxFit.fill,
              ),
            ),
            title: buildText(
              text: "Nguyễn Hoài Chương",
              size: 22.0,
              color: textColor,
            ),
            subtitle: SizedBox(
              width: 130,
              height: 20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    const Icon(Icons.star, color: Colors.yellow, size: 25.0),
                itemCount: 5,
              ),
            ),
            trailing:
                buildText(text: "30 phút trước", size: 20.0, color: textColor),
          ),
        ),
        ListTile(
          title: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(padding),
              child: _buildText(
                  text:
                      "Hàng chất lượng cao tôi rất hài lòng về sản phẩm của mình. Chúc các bạn thành công hơn. Happy new year Admin Hàng chất lượng cao tôi rất hài lòng về sản phẩm của mình. Chúc các bạn thành công hơn. Happy new year Admin",
                  color: textColor,
                  size: 22.0,
                  maxLine: 6),
            ),
          ),
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
