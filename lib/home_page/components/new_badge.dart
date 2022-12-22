import 'package:flutter/material.dart';
import 'package:safaricom/utils/constants.dart';

class NewBadge extends StatelessWidget {
  const NewBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 35.0,
        height: 25.0,
        color: primaryColor,
        child: Center(
          child: Text(
            'NEW',
            style: Theme.of(context).textTheme.caption!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0,
                ),
          ),
        ),
      ),
    );
  }
}
