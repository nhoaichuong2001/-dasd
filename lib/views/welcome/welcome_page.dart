import 'package:app_thuc_pham/constant.dart';
import 'package:app_thuc_pham/widgets.dart';
import 'package:app_thuc_pham/widgets/introduction_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final controller = PageController(initialPage: 0);
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: background,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(0, 0),
              color: Colors.grey,
            )
          ],
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            textButton(
                text: "Bỏ qua",
                press: () {
                  controller.jumpToPage(2);
                }),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                spacing: 16.0,
                dotColor: textColor,
                activeDotColor: Colors.green,
              ),
              onDotClicked: (index) => controller.animateToPage(index,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut),
            ),
            textButton(
                text: "Tiếp tục",
                press: () {
                  controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                }),
          ],
        ),
      ),
      backgroundColor: background,
      body: PageView(
        controller: controller,
        children: [
          IntroductionPage(
            customClipPath: CustomClipPath(),
            title: 'Xin chào',
            subtitle:
                'Cảm ơn bạn đã lựa chọn ứng dụng, chúng tôi sẽ cung cấp sản phẩm cho bạn.',
            image: "assets/images/welcome/welcome1.png",
          ),
          IntroductionPage(
            customClipPath: CustomClipPath(),
            title: 'Chất lượng',
            subtitle: 'Sản phẩm  của chúng tôi đạt chất cao.',
            image: "assets/images/welcome/welcome2.png",
          ),
          IntroductionPage(
            customClipPath: CustomClipPath(),
            title: 'Đăng nhập',
            subtitle: 'Hãy nhanh tay mua sắm nào, bạn còn chờ gì nữa .',
            image: "assets/images/welcome/welcome3.png",
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    //0.0 point 1
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h - 70, w, h);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
