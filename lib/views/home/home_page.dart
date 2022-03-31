import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/views/filter/filter_page.dart';
import 'package:app_thuc_pham/views/home/widgets/body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _iconTab = List.unmodifiable([
    {'icon': "assets/images/icons/home.png", 'text': "Trang chủ"},
    {'icon': "assets/images/icons/order.png", 'text': "Đặt hàng"},
    {'icon': "assets/images/icons/notification.png", 'text': "Thông báo"},
    {'icon': "assets/images/icons/user.png", 'text': "Cá nhân"},
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      endDrawer: const FilterPage(),
      appBar: AppBar(
        backgroundColor: backgroundAppBar,
        title: Container(
          padding: const EdgeInsets.all(padding / 2),
          color: background,
          height: 70,
          width: 250,
          child: Row(
            children: [
              Image.asset(
                "assets/images/icons/search.png",
                width: 30,
                height: 30,
              ),
              const Text(
                'Tìm kiếm',
                style: TextStyle(
                  color: textColor,
                  fontSize: 22.0,
                ),
              ),
            ],
          ),
        ),
        actions: [
          sizeBoxWidth,
          Builder(builder: (context) {
            return InkWell(
              onTap: () => Scaffold.of(context).openEndDrawer(),
              child: CircleAvatar(
                backgroundColor: background,
                radius: 30.0,
                child: Image.asset(
                  "assets/images/icons/filter.png",
                  width: 35.0,
                  height: 35.0,
                ),
              ),
            );
          }),
          sizeBoxWidth,
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: background,
                radius: 30.0,
                child: Image.asset(
                  "assets/images/icons/cart.png",
                  width: 40.0,
                  height: 40.0,
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
          sizeBoxWidth,
        ],
      ),
      body: const BodyHome(),
      bottomNavigationBar: _bottomNav(),
    );
  }

  Widget _bottomNav() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      height: 80,
      decoration: const BoxDecoration(
        color: background,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 0),
            color: textColor,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          _iconTab.length,
          (index) {
            return InkWell(
              onTap: () {},
              child: _itemBottomNav(
                  text: _iconTab[index]['text'],
                  image: _iconTab[index]['icon']),
            );
          },
        ),
      ),
    );
  }

  Widget _itemBottomNav({text, image}) => Column(
        children: [
          Image.asset(
            image,
            width: 40.0,
            height: 40.0,
          ),
          Text(
            text,
            style: const TextStyle(color: textColor, fontSize: 20.0),
          ),
        ],
      );
}
