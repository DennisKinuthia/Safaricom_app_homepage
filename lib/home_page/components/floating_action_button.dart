import 'package:flutter/material.dart';
import 'package:safaricom/utils/constants.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            elevation: 5.0,
            onPressed: () {},
            backgroundColor: primaryColor,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
