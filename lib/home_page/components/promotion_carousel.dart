import 'package:flutter/material.dart';
import 'package:safaricom/home_page/components/my_carousel_sliders.dart';
import 'package:safaricom/utils/spacing.dart';

class PromotionCarousel extends StatelessWidget {
  const PromotionCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'For You',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.black87,
                    fontSize: 18.0,
                  ),
            ),
            addVerticalSpacing(16.0),
            const MyCarouselSliders(),
          ],
        ),
      ),
    );
  }
}
