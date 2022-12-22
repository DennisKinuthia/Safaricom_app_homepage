import 'package:flutter/material.dart';
import 'package:safaricom/utils/spacing.dart';

class NewDataDetails extends StatelessWidget {
  const NewDataDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 16.0, 20.0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/rocket.jpeg',
              height: 50.0,
            ),
            addHorizontalSpacing(20.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Experience the new data page.',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.black87,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpacing(5.0),
                  Text(
                    'It\'s new and refreshing. Click to experience the new look and get more exclusive offers today.',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
