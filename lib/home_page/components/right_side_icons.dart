import 'package:flutter/material.dart';

class RightSideIcons extends StatelessWidget {
  const RightSideIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 35.0,
        ),
        Column(
          children: <Widget>[
            Image.asset(
              'assets/icons/open-box.png',
              fit: BoxFit.contain,
              height: 28.0,
              color: Colors.grey[500],
            ),
            const SizedBox(
              height: 3.0,
            ),
            Text(
              'Discover',
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: Colors.grey[800],
                    fontSize: 12.0,
                  ),
            ),
          ],
        ),
        const SizedBox(
          width: 20.0,
        ),
        Column(
          children: <Widget>[
            Image.asset(
              'assets/icons/user.png',
              fit: BoxFit.contain,
              height: 28.0,
              color: Colors.grey[500],
            ),
            const SizedBox(
              height: 3.0,
            ),
            Text(
              'Account',
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
