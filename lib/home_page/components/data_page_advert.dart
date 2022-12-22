import 'package:flutter/material.dart';
import 'package:safaricom/home_page/components/new_badge.dart';
import 'package:safaricom/home_page/components/new_data_details.dart';
import 'package:safaricom/utils/constants.dart';

class NewDataPageAdvertBox extends StatefulWidget {
  const NewDataPageAdvertBox({super.key});

  @override
  State<NewDataPageAdvertBox> createState() => _NewDataPageAdvertBox();
}

class _NewDataPageAdvertBox extends State<NewDataPageAdvertBox> {
  bool _offstage = false;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Offstage(
          offstage: _offstage,
          child: Container(
            width: double.infinity,
            height: 110.0,
            margin: const EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: primaryColor,
                width: 1.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                const NewBadge(),
                const NewDataDetails(),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _offstage = true;
                      });
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
