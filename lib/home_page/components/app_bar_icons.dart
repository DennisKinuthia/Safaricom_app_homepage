import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 25.0,
          ),
          splashRadius: 25.0,
        ),
        Stack(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 25.0,
              ),
              splashRadius: 25.0,
            ),
            Positioned(
              top: 3.0,
              right: 3.0,
              child: Container(
                width: 25.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFa9001c),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Text(
                    '14',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            )
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            size: 25.0,
          ),
          splashRadius: 25.0,
        ),
      ],
    );
  }
}
