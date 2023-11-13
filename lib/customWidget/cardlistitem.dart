
import 'package:flutter/material.dart';
import 'package:untitled/style.dart';

class CardLIstItem extends StatelessWidget {
  const CardLIstItem({
    super.key,
    required this.iconData,
    required this.title,
    required this.child,
  });

  final IconData iconData;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shadowColor: Colors.grey.shade500,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.grey.shade500,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(iconData),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      title,
                      style: headTextStyle(),
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                child
              ],
            ),
          ),
        ),
      ),
    );
  }
}