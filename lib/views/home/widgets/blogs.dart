import 'package:app_thuc_pham/constant.dart';
import 'package:flutter/material.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  final List _tabIcon = ['Tất cả', 'Mới nhất'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _tabBlog(),
        Container(
          margin: const EdgeInsets.symmetric(vertical: margin * 2),
          height: 300,
          child: ListView.separated(
            separatorBuilder: (context, index) => sizeBoxWidth,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: margin / 2),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(
                width: 2.0,
                color: textColor.withOpacity(0.3),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://i.rada.vn/data/image/2022/02/23/Modern-Food-Presentation-700.jpg',
                    fit: BoxFit.cover,
                    width: 200,
                    height: 170,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: margin / 2),
                    width: 200,
                    height: 50,
                    child: const Text(
                      'Công thức rau trộn ngon cho người bắt đầu',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: textColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                    ),
                  ),
                  const Text(
                    'Date: 22-03-2022',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: textColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _tabBlog() {
    return Container(
      padding: const EdgeInsets.only(left: padding / 2),
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 30,
              width: 160,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.black,
                      blurRadius: 5.0),
                ],
              ),
              child: Center(
                child: Text(
                  _tabIcon[index],
                  style: const TextStyle(
                    fontSize: 22.0,
                    color: textColor,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 50),
          itemCount: _tabIcon.length),
    );
  }
}
