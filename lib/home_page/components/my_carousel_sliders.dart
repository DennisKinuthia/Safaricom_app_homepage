import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:safaricom/utils/carousel_images.dart';

class MyCarouselSliders extends StatefulWidget {
  const MyCarouselSliders({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCarouselSliders> createState() => _MyCarouselSlidersState();
}

class _MyCarouselSlidersState extends State<MyCarouselSliders> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          items: carouselImages
              .map(
                (image) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            enlargeFactor: .5,
            autoPlay: true,
            scrollDirection: Axis.horizontal,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
        ),
      ],
    );
  }
}
