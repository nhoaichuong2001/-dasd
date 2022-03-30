import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  final List slider = [
    'https://lambanner.com/wp-content/uploads/2021/06/19-MAU-POWERPOINT-THUC-PHAM-NHA-HANG.png',
    'https://gitiho.com/images/article/files/137862/template-do-an.jpg',
  ];
  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          items: slider
              .map((e) => Builder(
                    builder: (BuildContext context) {
                      return Image.network(e);
                    },
                  ))
              .toList(),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
            aspectRatio: 1.5,
            initialPage: 0,
          ),
        ),
      ]);
}
