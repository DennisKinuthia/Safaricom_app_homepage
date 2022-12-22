import 'package:flutter/material.dart';
import 'package:safaricom/utils/spacing.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.label,
    required this.imageUrl,
  });

  final String label;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .42,
      height: size.height * .1,
      margin: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            imageUrl,
            fit: BoxFit.contain,
            height: 45.0,
          ),
          addHorizontalSpacing(16.0),
          Flexible(
            child: Text(
              label,
              textAlign: TextAlign.left,
              softWrap: true,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.black87,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
