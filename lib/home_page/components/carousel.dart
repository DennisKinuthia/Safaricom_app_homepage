import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 0, 0, 10.0),
      width: size.width * .42,
      height: size.height * .2,
      child: CarouselSlider(
        items: images
            .map((image) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ))
            .toList(),
        options: CarouselOptions(
          aspectRatio: 9 / 16,
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
    );
  }
}
