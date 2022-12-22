import 'package:flutter/material.dart';
import 'package:safaricom/home_page/components/option_card.dart';
import 'package:safaricom/utils/option_data.dart';

class OptionCardGrid extends StatelessWidget {
  const OptionCardGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: OptionCard(
              label: data[index].title,
              imageUrl: data[index].image,
            ),
          );
        },
        childCount: data.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 16 / 8,
      ),
    );
  }
}
