import 'package:flutter/material.dart';
import 'package:safaricom/utils/constants.dart';

class ViewBalancesButton extends StatelessWidget {
  const ViewBalancesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: const Offset(0, 18.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        width: size.width * .425,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 5.0,
              blurStyle: BlurStyle.outer,
              color: Colors.grey,
            ),
          ],
        ),
        child: Center(
          child: Text(
            'View My Balances',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: primaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
