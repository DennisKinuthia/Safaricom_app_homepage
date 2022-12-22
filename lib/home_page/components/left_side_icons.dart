import 'package:flutter/material.dart';
import 'package:safaricom/utils/constants.dart';

class LeftSideIcons extends StatelessWidget {
  const LeftSideIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: <Widget>[
            Image.asset(
              'assets/icons/home.png',
              fit: BoxFit.contain,
              height: 28.0,
            ),
            const SizedBox(
              height: 3.0,
            ),
            Text(
              'Home',
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: primaryColor,
                    fontSize: 12.0,
                  ),
            ),
          ],
        ),
        const SizedBox(
          width: 35.0,
        ),
        Column(
          children: <Widget>[
            Image.asset(
              'assets/icons/mpesa-icon.png',
              color: Colors.grey[500],
              fit: BoxFit.contain,
              height: 28.0,
            ),
            const SizedBox(
              height: 3.0,
            ),
            Text(
              'M-PESA',
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: Colors.grey[800],
                    fontSize: 12.0,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
