import 'package:flutter/material.dart';
import 'package:safaricom/home_page/components/app_bar_background.dart';
import 'package:safaricom/home_page/components/app_bar_icons.dart';
import 'package:safaricom/home_page/components/view_balance_button.dart';
import 'package:safaricom/utils/constants.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required this.centerTitle,
    required this.titlePadding,
  }) : super(key: key);

  final bool centerTitle;
  final EdgeInsetsGeometry titlePadding;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      backgroundColor: primaryColor,
      actions: const <Widget>[
        AppBarIcons(),
      ],
      expandedHeight: size.height * .175,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: titlePadding,
        centerTitle: centerTitle,
        title: Text(
          'Dennis',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
        ),
        background: const AppBarBackground(),
      ),
      bottom: centerTitle
          ? const PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: ViewBalancesButton(),
            )
          : null,
    );
  }
}
