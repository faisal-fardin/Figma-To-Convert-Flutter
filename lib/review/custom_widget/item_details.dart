import 'package:flutter/material.dart';

import '../../style.dart';

class CustomDetails extends StatelessWidget {
  const CustomDetails({
    super.key,
    required this.title,
    required this.trailing,
  });

  final String title;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              title,
              style: subTitle(),
            ),
            trailing: Text(
              trailing,
              style: subTitle2(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}