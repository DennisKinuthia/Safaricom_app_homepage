import 'package:flutter/material.dart';

class AppBarBackground extends StatelessWidget {
  const AppBarBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.asset(
              'assets/images/balls.jpeg',
              height: 75.0,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Image.asset(
              'assets/images/bush.png',
              height: 110.0,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              'Happy Holidays',
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        Positioned(
          top: 40.0,
          left: 35.0,
          child: Image.asset(
            'assets/images/snoflake.png',
            height: 45.0,
          ),
        ),
        Positioned(
          top: 90.0,
          left: 80.0,
          child: Image.asset(
            'assets/images/snoflake.png',
            height: 30.0,
            color: Colors.white.withOpacity(.5),
          ),
        ),
        Positioned(
          top: 120.0,
          right: 80.0,
          child: Image.asset(
            'assets/images/snoflake.png',
            height: 30.0,
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
