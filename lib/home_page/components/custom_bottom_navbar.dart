import 'package:flutter/material.dart';
import 'package:safaricom/home_page/components/left_side_icons.dart';
import 'package:safaricom/home_page/components/right_side_icons.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: size.height * .1,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            //left-side icons
            LeftSideIcons(),
            //right-side icons
            RightSideIcons(),
          ],
        ),
      ),
    );
  }
}
