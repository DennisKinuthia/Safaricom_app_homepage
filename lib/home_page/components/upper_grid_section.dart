import 'package:flutter/material.dart';
import 'package:safaricom/home_page/components/carousel.dart';
import 'package:safaricom/home_page/components/option_card.dart';
import 'package:safaricom/utils/spacing.dart';

class UpperGridSection extends StatelessWidget {
  const UpperGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: <Widget>[
          const MyCarousel(
            images: ['assets/images/white.jpeg', 'assets/images/green.jpeg'],
          ),
          addHorizontalSpacing(20.0),
          Column(
            children: const <Widget>[
              OptionCard(
                label: 'Ask Zuri Get Help',
                imageUrl: 'assets/images/girl.png',
              ),
              OptionCard(
                label: 'Send Money',
                imageUrl: 'assets/icons/mobile-transfer.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
